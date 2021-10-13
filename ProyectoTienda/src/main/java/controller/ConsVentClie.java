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

import modelo.ClientesDAO;
import modelo.ClientesDTO;

/**
 * Servlet implementation class ConsVentClie
 */
@WebServlet("/ConsVentClie")
public class ConsVentClie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsVentClie() {
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

		
		//JOptionPane.showMessageDialog(null, "entro al servlet compra cliente");
		ArrayList<ClientesDTO> lista=new ArrayList<>();
		ClientesDAO clidao=new ClientesDAO();
		lista=clidao.ConsVntacli();
		
		
		List<Integer> cedulas = new ArrayList<Integer>();
				
		
		for (int h=0; h<lista.size();h++) {
			int c=0;
			c=lista.get(h).getCedula_clien();
			
			if (!cedulas.contains(c)) {
				cedulas.add(c);
			}
			
		}
		
		
		ArrayList<ClientesDTO> compcli = new ArrayList<ClientesDTO>();
		
		for (int i=0; i<cedulas.size();i++) {
			
			int x=0;
			int ced=0;
			String n=null;
			double vt=0;
			for (int j=0; j<lista.size();j++) {
				
				if(cedulas.get(i)==lista.get(j).getCedula_clien()) {
					double v;
					x+=1;
					ced=lista.get(j).getCedula_clien();
					n=lista.get(j).getNombre_clien();
					v=lista.get(j).getComp_cli();
					vt+=v;
					
				}
			}
			//JOptionPane.showMessageDialog(null, "cliente "+(i+1)+"\ncedula " +ced+ "\nnombre " +n+ "\nhizo "+x+"\ncompras por " + vt);
			ClientesDTO clidto2 = new ClientesDTO(ced, n, vt, x);
			compcli.add(clidto2);
					
			
			}
			PrintWriter out=response.getWriter();
			Gson gson=new Gson();
			out.print(gson.toJson(compcli));
			
	}

}


