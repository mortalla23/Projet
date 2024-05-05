package fr.esigelec.jee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import fr.esigelec.jee.models.Resultats;

/**
 * 
 */
public class ResultatDao extends ConnectionDao{
	public ResultatDao() {
		super();
	}



	/**
	 * Permet de recuperer tous les utilisateurs stockes dans la table utilisateurs
	 * 
	 * @return une ArrayList d'utilisateurs
	 */
	public ArrayList<Resultats> getResultatList(String referenceprel) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Resultats> returnValue = new ArrayList<Resultats>();
		try {
			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT * FROM resultats WHERE referenceprel= ?");// a completer
			ps.setString(1, referenceprel);
			rs = ps.executeQuery();
			while (rs.next()) {
				returnValue.add(new Resultats(rs.getString("cddept"),rs.getString("referenceprel"),rs.getString("libMinParametre"),rs.getString("cdunitereference"),rs.getString("refqual")));// a completer

			}
		} catch (Exception ee) {
			ee.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignore) {
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception ignore) {
			}
			try {
				if (con != null)
					con.close();
			} catch (Exception ignore) {
			}
		}
		return returnValue;
	}
	
	
	

}






