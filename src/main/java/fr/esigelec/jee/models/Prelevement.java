package fr.esigelec.jee.models;

public class Prelevement {

	private String cdreseau;
	private String inseecommuneprinc;
	private String nomcommuneprinc;
	private String conclusionPrel;
	private String referenceprel;
	private String cdept;
	public Prelevement(String cdreseau, String inseecommuneprinc, String nomcommuneprinc,String conclusionPrel, String referenceprel,String cdept) {
		super();
		this.cdreseau = cdreseau;
		this.inseecommuneprinc = inseecommuneprinc;
		this.nomcommuneprinc = nomcommuneprinc;
		this.conclusionPrel = conclusionPrel;
		this.referenceprel = referenceprel;
		this.cdept=cdept;
	}
	public String getCdreseau() {
		return cdreseau;
	}
	public void setCdreseau(String cdreseau) {
		this.cdreseau = cdreseau;
	}
	public String getInseecommuneprinc() {
		return inseecommuneprinc;
	}
	public void setInseecommuneprinc(String inseecommuneprinc) {
		this.inseecommuneprinc = inseecommuneprinc;
	}
	public String getNomcommuneprinc() {
		return nomcommuneprinc;
	}
	public void setNomcommuneprinc(String nomcommuneprinc) {
		this.nomcommuneprinc = nomcommuneprinc;
	}
	public String getConclusionPrel() {
		return conclusionPrel;
	}
	public void setConclusionPrel(String conclusionPrel) {
		this.conclusionPrel = conclusionPrel;
	}
	public String getReferenceprel() {
		return referenceprel;
	}
	public void setReferenceprel(String referenceprel) {
		this.referenceprel = referenceprel;
	}
	public String getCdept() {
		return cdept;
	}
	public void setCdept(String cdept) {
		this.cdept = cdept;
	}
   
	

}
