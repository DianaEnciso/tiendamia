package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.mysql.cj.Session;

import modelo.LoginDAO;
import modelo.LoginDTO;
import modelo.UsuariosDAO;
import modelo.UsuariosDTO;
import modelo.VentasDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		//LOGIN
		HttpSession sesion = request.getSession();
		
		if(request.getParameter("btnlogin")!=null);{
			String u, p, nom_u; 
			int ced_u;
			LoginDTO logdto;
			LoginDAO logdao;
			UsuariosDTO usu;
					
			u=request.getParameter("user");
			p=request.getParameter("pass");
			
			logdto = new LoginDTO(p, u);
			logdao = new LoginDAO();
			usu = logdao.Login(logdto);
			
			
			
			if(usu.getUsuario().equals(u) && usu.getPassword().equals(p)) {
				sesion.setAttribute("usuario", usu);
				nom_u = usu.getNombre_usuario();
				ced_u = usu.getCedula_usuario();
				request.getSession().setAttribute("user", nom_u);
				request.getSession().setAttribute("ced_u", ced_u);
				
				VentasDAO conscod;
				conscod = new VentasDAO();
				int consecutive;
				consecutive = conscod.ConsultarCodVta();
				sesion.setAttribute("consecutivo", consecutive+1);				
				response.sendRedirect("home.jsp");
			}
			else {
				JOptionPane.showMessageDialog(null, "Datos incorrectos\nIntente de nuevo","ERROR_MESSAGE", JOptionPane.ERROR_MESSAGE);
				response.sendRedirect("index.jsp");
			}
		}
		
		
		
	}

}
