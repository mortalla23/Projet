package fr.esigelec.jee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import fr.esigelec.jee.models.Prelevement;



public class PrelevementDao extends ConnectionDao {

	public PrelevementDao() {
		super();
	}
	
	/**
	 * Permet de recuperer un prelevement a partir de son id
	 * @param reference la reference du fournisseur a recuperer
	 * @return le fournisseur trouve;
	 * 			null si aucun prelevement ne correspond a cette caracteristiques 
	 */
	public String getConclusionPrel(String referenceprel) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String returnValue = null;
		try {

			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT conclusionprel  FROM prelevement WHERE referenceprel = ?");
			ps.setString(1, referenceprel);
			rs = ps.executeQuery();
			if (rs.next()) {
				//la mets les caracteristiques correspondants
				returnValue =rs.getString("conclusionprel");
						
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
		return  returnValue;
	}
	/**
	 * Permet de recuperer tous les utilisateurs stockes dans la table utilisateurs
	 * 
	 * @return une ArrayList d'utilisateurs
	 */
	public ArrayList<Prelevement> getPrelevementList(String referenceprel) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Prelevement> returnValue = new ArrayList<Prelevement>();
		try {
			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT * FROM prelevement WHERE inseecommuneprinc = ?");// a completer
			ps.setString(1, referenceprel);
			rs = ps.executeQuery();
			while (rs.next()) {
				returnValue.add(new Prelevement(rs.getString("cdreseau"),rs.getString("inseecommuneprinc"),rs.getString("nomcommune"),rs.getString("conclusionprel"),rs.getString("referenceprel"),rs.getString("cdept")));
				
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
	
	public ArrayList<Prelevement> getPrelevementList1(String referenceprel) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Prelevement> returnValue = new ArrayList<Prelevement>();
		try {
			con = DriverManager.getConnection(URL, LOGIN, PASS);
			ps = con.prepareStatement("SELECT * FROM prelevement WHERE cdept = ?");// a completer
			ps.setString(1, referenceprel);
			rs = ps.executeQuery();
			while (rs.next()) {
				returnValue.add(new Prelevement(rs.getString("cdreseau"),rs.getString("inseecommuneprinc"),rs.getString("nomcommune"),rs.getString("conclusionprel"),rs.getString("referenceprel"),rs.getString("cdept")));
				
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

	


