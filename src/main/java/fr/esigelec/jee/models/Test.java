package fr.esigelec.jee.models;

public class Test {
    public static void main (String [] args) {
    	String a ="006,00600249557,CL2LIB,1398,CHLORE LIBRE,Chlore libre,,N,T,N.M.,mg(Cl2)/L,165,,,,,";
    	String[] tab;
    	tab = a.split(",");
    	System.out.println(" "+tab.length+ "");
    }
}
