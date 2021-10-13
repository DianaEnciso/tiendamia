package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import modelo.ClientesDAO;
import modelo.ClientesDTO;
import modelo.DetVentaDAO;
import modelo.DetVentaDTO;
import modelo.ProductosDAO;
import modelo.ProductosDTO;
import modelo.VentasDAO;
import modelo.VentasDTO;

/**
 * Servlet implementation class VentaController
 */
@WebServlet("/VentaController")
public class VentaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	double pv1, pv2, pv3, pc1, pc2, pc3, sbt1, sbt2, sbt3, sbt1_sin, sbt2_sin, sbt3_sin, iva1, iva2, iva3;  
	String nom_u, nom_c, cant1="", cant2="", cant3="", nom_p1, nom_p2, nom_p3;
	double tiva1, tiva2, tiva3;
	double tiva=0, stt=0, pagar=0;
	int ced_u,ced_c, codvent, codvent1, cod1, cod2, cod3;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VentaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		//CONSULTA DE CLIENTE
		if(request.getParameter("consultar")!=null) {
			
			String nom="", dir="", cor="", tel="";
			ced_c = Integer.parseInt(request.getParameter("cedula"));
			
			ced_u = Integer.parseInt(request.getParameter("ced_u"));
			nom_u = request.getParameter("nom_u");
			
			ClientesDTO cliente;
			ClientesDAO clidao = new ClientesDAO();
			ClientesDTO clidto = new ClientesDTO(ced_c);
			cliente = clidao.consultarunCliente(clidto);
			
			if(cliente != null) {
				sesion.setAttribute("cliente", cliente);
				request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
				nom_c = cliente.getNombre_clien();
			} else {
				JOptionPane.showMessageDialog(null, "Cliente no esta registrado\n             Regístrelo");
				response.sendRedirect("Menu_Cliente.jsp?ced="+ced_c+"&&dire="+dir+"&&ema="+cor+"&&nam="+nom+"&&tel="+tel);
				
			}			
		}
		
		//CONSULTA DE PRODUCTOS
		ProductosDTO prod1=null, prod2=null, prod3=null;
		
		if(request.getParameter("consp1")!=null) {
		ProductosDAO prodao;
		ProductosDTO prodto;
		
		cod1 = Integer.parseInt(request.getParameter("cod1"));
		prodao = new ProductosDAO();
		prodto = new ProductosDTO(cod1);
		prod1 = prodao.ConsultarProducto(prodto);
		
		//CONSULTAR PRODUCTO 1
		if (prod1!=null) {
			sesion.setAttribute("producto1", prod1);
			request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
		}
		else {
			JOptionPane.showMessageDialog(null, "No se encontró el producto");
			request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
		}
		
		
		nom_p1 = prod1.getNom_prod();
		iva1=prod1.getIva_com();
		pc1=prod1.getPre_com();
		pv1=prod1.getPre_ven();
		}
		
		//PROCESAR PRODUCTO 1
		if(request.getParameter("conf1")!=null) {
			cant1=request.getParameter("cant1");
			sesion.setAttribute("cant1", cant1);
			sbt1=Integer.parseInt(cant1)*pv1;
			sbt1_sin=Integer.parseInt(cant1)*pc1;
			sesion.setAttribute("sbt1", sbt1);
			request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
		}
		
		//CONSULTAR PRODUCTO 2
		if(request.getParameter("consp2")!=null) {
			ProductosDAO prodao;
			ProductosDTO prodto;
			
			cod2 = Integer.parseInt(request.getParameter("cod2"));
			prodao = new ProductosDAO();
			prodto = new ProductosDTO(cod2);
			prod2 = prodao.ConsultarProducto(prodto);
			
			
			if (prod2!=null) {
				sesion.setAttribute("producto2", prod2);
				request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
			}
			else {
				JOptionPane.showMessageDialog(null, "No se encontró el producto");
				request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
			}
			
			
			nom_p2 = prod2.getNom_prod();
			iva2=prod2.getIva_com();
			pc2=prod2.getPre_com();
			pv2=prod2.getPre_ven();
			}
			
		//PROCESAR PRODUCTO 2
			if(request.getParameter("conf2")!=null) {
				cant2=request.getParameter("cant2");
				sesion.setAttribute("cant2", cant2);
				sbt2=Integer.parseInt(cant2)*pv2;
				sbt2_sin=Integer.parseInt(cant2)*pc2;
				sesion.setAttribute("sbt2", sbt2);
				request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
			}
	
		
		//CONSULTAR PRODUCTO 3
			if(request.getParameter("consp3")!=null) {
				ProductosDAO prodao;
				ProductosDTO prodto;
				
				cod3 = Integer.parseInt(request.getParameter("cod3"));
				prodao = new ProductosDAO();
				prodto = new ProductosDTO(cod3);
				prod3 = prodao.ConsultarProducto(prodto);
				
				
				if (prod3!=null) {
					sesion.setAttribute("producto3", prod3);
					request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
				}
				else {
					JOptionPane.showMessageDialog(null, "No se encontró el producto");
					request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
				}
				
				
				nom_p3 = prod3.getNom_prod();
				iva3=prod3.getIva_com();
				pc3=prod3.getPre_com();
				pv3=prod3.getPre_ven();
				}
				
			//PROCESAR PRODUCTO 3
				if(request.getParameter("conf3")!=null) {
					cant3=request.getParameter("cant3");
					sesion.setAttribute("cant3", cant3);
					sbt3=Integer.parseInt(cant3)*pv3;
					sbt3_sin=Integer.parseInt(cant3)*pc3;
					sesion.setAttribute("sbt3", sbt3);
					request.getRequestDispatcher("Menu_Ventas.jsp").forward(request, response);
				}
				
				if(request.getParameter("procesar")!=null) {
				tiva1=sbt1_sin*iva1/100;
				tiva2=sbt2_sin*iva2/100;
				tiva3=sbt3_sin*iva3/100;
				
				stt=sbt1_sin+sbt2_sin+sbt3_sin;
				sesion.setAttribute("stt", stt);
				tiva=tiva1+tiva2+tiva3;
				sesion.setAttribute("tiva", tiva);
				pagar=stt+tiva;
				sesion.setAttribute("pagar", pagar);
				
				response.sendRedirect("Menu_Ventas.jsp");
				}
		
				
				if(request.getParameter("enviar")!=null) {
					
					VentasDAO vendao;
					VentasDTO vendto;
					vendao = new VentasDAO();
					vendto = new VentasDTO(ced_c, ced_u, tiva, stt, pagar);
					boolean reg,x;
					
					reg=vendao.RegistrarVenta(vendto);
					
					if(reg=true) {
						JOptionPane.showMessageDialog(null, "Venta registrada");
						
						int dcant1, dcant2, dcant3;
						DetVentaDTO detdto;
						DetVentaDAO detdao;
						VentasDAO consvent1;
						consvent1= new VentasDAO();
						codvent1=consvent1.ConsultarCodVta();
						
						//registro detalle producto 1
						dcant1=Integer.parseInt(cant1);
						if(dcant1>0) {
							detdto = new DetVentaDTO(dcant1, cod1, codvent1, sbt1_sin, sbt1,tiva1);
							detdao = new DetVentaDAO();
							
							x=detdao.RegistrarDetalleVenta(detdto);
							
								if(x) {
									//JOptionPane.showMessageDialog(null, "Detalle producto 1 registrado");
									}
								else {
									JOptionPane.showMessageDialog(null, "Detalle producto 1 no registrado");
								}
						}
								
						//registro detalle producto 2
						dcant2=Integer.parseInt(cant2);
						if(dcant2>0) {
							detdto = new DetVentaDTO(dcant2, cod2, codvent1, sbt2_sin, sbt2,tiva2);
							detdao = new DetVentaDAO();
							
							x=detdao.RegistrarDetalleVenta(detdto);
							
								if(x) {
									//JOptionPane.showMessageDialog(null, "Detalle producto 2 registrado");
									}
								else {
									JOptionPane.showMessageDialog(null, "Detalle producto 2 no registrado");
								}
						}
								
						
						//registro detalle producto 3
						dcant3=Integer.parseInt(cant3);
						if(dcant2>0) {
							detdto = new DetVentaDTO(dcant3, cod3, codvent1, sbt3_sin, sbt3,tiva3);
							detdao = new DetVentaDAO();
							
							x=detdao.RegistrarDetalleVenta(detdto);
							
								if(x) {
									//JOptionPane.showMessageDialog(null, "Detalle producto 3 registrado");
									}
								else {
									JOptionPane.showMessageDialog(null, "Detalle producto 3 no registrado");
								}
					}
						int c1, c2, c3;
						c1=Integer.parseInt(cant1);
						c2=Integer.parseInt(cant2);
						c3=Integer.parseInt(cant3);
						
						JOptionPane.showMessageDialog(null, "                         FACRTURA No " + codvent1 + "\n"
																+ "Vendedor:  "+nom_u+ "\n"
																+ "Cédula del cliente: " + ced_c + "           Nombre del cliente: " + nom_c + "\n"
																+ "\n"+"Detalle de la compra\n"
																+ "\n"+ "1: " + nom_p1 + "  Precio unitario: "+pv1+"  Cantidad: " +c1+ "  Total: "+sbt1
																+ "\n"+ "2: " + nom_p2 + "  Precio unitario: "+pv2+"  Cantidad: " +c2+ "  Total: "+sbt2
																+ "\n"+ "3: " + nom_p3 + "  Precio unitario: "+pv3+"  Cantidad: " +c3+ "  Total: "+sbt3
																+ "\n"
																+ "\n"+ "Total sin IVA: "+stt
																+ "\n"+ "Total IVA: "+tiva
																+ "\n"+ "Total a pagar: "+ pagar);
						
						response.sendRedirect("Menu_Ventas.jsp");
					
					
				}
					
		
	}
				if(request.getParameter("reset")!=null) {
					sesion.invalidate();
					response.sendRedirect("index.jsp");
				}
				
				
				
	}
}
