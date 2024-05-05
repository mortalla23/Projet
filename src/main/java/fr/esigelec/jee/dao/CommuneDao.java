package fr.esigelec.jee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import fr.esigelec.jee.models.Commune;

public class CommuneDao extends ConnectionDao {
	public CommuneDao() {
		super();
	}
	
	/**
	 * Permet de recuperer un prelevement a partir de son id
	 * @param reference la reference du fournisseur a recuperer
	 * @return le fournisseur trouve;
	 * 			null si aucun prelevement ne correspond a cette caracteristiques 
	 */
	public String getInsee(String codepostal) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String returnValue = null;
		try {

			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT insee FROM commune WHERE codepostal = ?");
			ps.setString(1, codepostal);
			rs = ps.executeQuery();
			if (rs.next()) {
				
			returnValue =rs.getString("insee");
						
			}
		} catch (Exception ee) {
			ee.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception ignore) {
			}
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception ignore) {
			}
			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception ignore) {
			}
		}
		 return returnValue;
	}
	
	/**
	 * Permet de recuperer tous les prevelement stockes dans une commune
	 * 
	 * @return une ArrayList de prelevement 
	 */
	public ArrayList<Commune> getList() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Commune> returnValue = new ArrayList<Commune>();
		try {
			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT * FROM commune ORDER BY ...");// a completer
			rs = ps.executeQuery();
			while (rs.next()) {
				returnValue.add(new Commune(rs.getString(""),rs.getString(""),rs.getString("")));//a completer
						
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

	

	
