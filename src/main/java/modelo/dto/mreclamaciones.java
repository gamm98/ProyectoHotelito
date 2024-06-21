/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

/**
 *
 * @author MOTITA2204
 */
public class mreclamaciones {
   
    private int idrec;
        private String nombrerec;
        private String dnirec;
        private String correorec;
        private String fecharec;
        private String desripcionrec;

    public mreclamaciones() {
    }

    public mreclamaciones(int idrec, String nombrerec, String dnirec, String correorec, String fecharec, String desripcionrec) {
        this.idrec = idrec;
        this.nombrerec = nombrerec;
        this.dnirec = dnirec;
        this.correorec = correorec;
        this.fecharec = fecharec;
        this.desripcionrec = desripcionrec;
    }

    public String getDesripcionrec() {
        return desripcionrec;
    }

    public void setDesripcionrec(String desripcionrec) {
        this.desripcionrec = desripcionrec;
    }

    public int getIdrec() {
        return idrec;
    }

    public void setIdrec(int idrec) {
        this.idrec = idrec;
    }

    public String getNombrerec() {
        return nombrerec;
    }

    public void setNombrerec(String nombrerec) {
        this.nombrerec = nombrerec;
    }

    public String getDnirec() {
        return dnirec;
    }

    public void setDnirec(String dnirec) {
        this.dnirec = dnirec;
    }

    public String getCorreorec() {
        return correorec;
    }

    public void setCorreorec(String correorec) {
        this.correorec = correorec;
    }

    public String getFecharec() {
        return fecharec;
    }

    public void setFecharec(String fecharec) {
        this.fecharec = fecharec;
    }
}
