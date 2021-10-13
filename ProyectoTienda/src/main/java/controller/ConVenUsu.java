package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.google.gson.Gson;

import modelo.UsuariosDAO;
import modelo.UsuariosDTO;

/**
 * Servlet implementation class ConVenUsu
 */
@WebServlet("/ConVenUsu")
public class ConVenUsu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConVenUsu() {
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
		//JOptionPane.showMessageDialog(null, "entro al servlet");
		ArrayList<UsuariosDTO> lista=new ArrayList<>();
		UsuariosDAO usudao=new UsuariosDAO();
		lista=usudao.ConsVtaUsu();
		//JOptionPane.showMessageDialog(null, lista.size());
		
		List<Integer> cedulas = new ArrayList<Integer>();
		
		for (int h=0; h<lista.size();h++) {
			int c=0;
			c=lista.get(h).getCedula_usuario();
			
			if (!cedulas.contains(c)) {
				cedulas.add(c);
			}
		}
		
		ArrayList<UsuariosDTO> ventusu = new ArrayList<>();
		
		for (int i=0; i<cedulas.size();i++) {
			
			int x=0;
			int ced=0;
			String n=null;
			double vt=0;
			
			for (int j=0; j<lista.size();j++) {
				
				if (cedulas.get(i)==lista.get(j).getCedula_usuario()) {
				
				double v;
				x+=1;
				ced=lista.get(j).getCedula_usuario();
				n=lista.get(j).getNombre_usuario();
				v=lista.get(j).getVent_usu();
				vt+=v;
				//JOptionPane.showMessageDialog(null, vt);
				
				}
				
			}
			//JOptionPane.showMessageDialog(null, "usuario "+(i+1)+"\ncedula " +ced+ "\nnombre " +n+ "\nhizo "+x+"\ncventas por " + vt );
			UsuariosDTO usudto2 = new UsuariosDTO(ced, n, vt, x);
			ventusu.add(usudto2);
		}
		PrintWriter out=response.getWriter();
		Gson gson=new Gson();
		out.print(gson.toJson(ventusu));
	}

}
