package fr.esigelec.jee.models;

public class Resultats {
	private String referenceprel;
	private String cddept;
	private String cdunitereference;
	private String libMinparametre;
	private String refqual;

	public  Resultats( String cddept,String referenceprel ,String libMinparametre, String cdunitereference,
			 String refqual) {
		super();
		this.referenceprel = referenceprel;
		this.cddept = cddept;
		this.cdunitereference = cdunitereference;
		this.libMinparametre = libMinparametre;
		this.refqual = refqual;
	}

	public String getReferenceprel() {
		return referenceprel;
	}

	public void setReferenceprel(String referenceprel) {
		this.referenceprel = referenceprel;
	}

	public String getCddept() {
		return cddept;
	}

	public void setCddept(String cddept) {
		this.cddept = cddept;
	}

	public String getCdunitereference() {
		return cdunitereference;
	}

	public void setCdunitereference(String cdunitereference) {
		this.cdunitereference = cdunitereference;
	}

	public String getLibMinparametre() {
		return libMinparametre;
	}

	public void setLibMinparametre(String libMinparametre) {
		this.libMinparametre = libMinparametre;
	}

	public String getRefqual() {
		return refqual;
	}

	public void setRefqual(String refqual) {
		this.refqual = refqual;
	}


}
