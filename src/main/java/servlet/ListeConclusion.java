package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.esigelec.jee.dao.CommuneDao;
import fr.esigelec.jee.dao.PrelevementDao;
import fr.esigelec.jee.dao.ResultatDao;
import fr.esigelec.jee.models.Prelevement;

/**
 * Servlet implementation class ListeConclusion
 */
@WebServlet("/ListeConclusion")
public class ListeConclusion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeConclusion() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
        String param = request.getParameter("ref");
        
        
        // Vous pouvez également utiliser request.getRequestDispatcher() 
        // au lieu de response.sendRedirect() pour effectuer une redirection interne
        response.sendRedirect("ConclusionPrel.jsp?ref=" + param);
	}

}
