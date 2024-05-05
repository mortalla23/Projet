package fr.esigelec.jee.models;

public class Commune {
	private String inseecommune;
	private String nomcommune;
	private String cdreseau;
	public Commune(String inseecommune, String nomcommune, String cdreseau) {
		super();
		this.inseecommune = inseecommune;
		this.nomcommune = nomcommune;
		this.cdreseau = cdreseau;
	}
	public String getInseecommune() {
		return inseecommune;
	}
	public void setInseecommune(String inseecommune) {
		this.inseecommune = inseecommune;
	}
	public String getNomcommune() {
		return nomcommune;
	}
	public void setNomcommune(String nomcommune) {
		this.nomcommune = nomcommune;
	}
	public String getCdreseau() {
		return cdreseau;
	}
	public void setCdreseau(String cdreseau) {
		this.cdreseau = cdreseau;
	}

}
