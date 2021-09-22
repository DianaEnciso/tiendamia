package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import modelo.ProveedoresDAO;
import modelo.ProveedoresDTO;

/**
 * Servlet implementation class ProveeController
 */
@WebServlet("/ProveeController")
public class ProveeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProveeController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int nit;
		String name, city, address, tele;
		
		boolean respu;
		
		ProveedoresDAO prodao;
		ProveedoresDTO prodto;
		
		
		if(request.getParameter("btning")!=null)
		{
			nit=Integer.parseInt(request.getParameter("nit"));
			name=request.getParameter("nombre");
			city=request.getParameter("ciudad");
			address=request.getParameter("direccion");
			tele=request.getParameter("telefono");
			
			prodto= new ProveedoresDTO(nit, name, city, address, tele);
			prodao= new ProveedoresDAO();
			
			respu=prodao.insertarproovedor(prodto);
			
			if(respu==true)
			{
				JOptionPane.showMessageDialog(null, "Proveedor registrado");
				response.sendRedirect("Menu_Proveedores.jsp");
			}
			else
			{
				JOptionPane.showMessageDialog(null, "Proveedor no registrado");
				response.sendRedirect("Menu_Proovedores.jsp");
			}
		}
		
	}

}
