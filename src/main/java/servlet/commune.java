package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.esigelec.jee.dao.CommuneDao;

/**
 * Servlet implementation class commune
 */
@WebServlet("/commune")
public class commune extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commune() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String param = request.getParameter("referenceprel");
        CommuneDao dao = new CommuneDao();
        String inseeCommune = dao.getInsee(param);
        
        // Vous pouvez également utiliser request.getRequestDispatcher() 
        // au lieu de response.sendRedirect() pour effectuer une redirection interne
        response.sendRedirect("PrelevementsListe.jsp?cm=" + inseeCommune);
    }


}
