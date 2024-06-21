/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

/**
 *
 * @author MOTITA2204
 */
public class msugerencia {

    private int idsugerencia;
    private String nombresuge;
    private String correosuge;
    private String infosuge;
    private mTipoSugerencia mtiposugerencia;

    public msugerencia() {
    }

    public msugerencia(int idsugerencia, String nombresuge, String correosuge, String infosuge, mTipoSugerencia mtiposugerencia) {
        this.idsugerencia = idsugerencia;
        this.nombresuge = nombresuge;
        this.correosuge = correosuge;
        this.infosuge = infosuge;
        this.mtiposugerencia=mtiposugerencia;

    }

    public int getIdsugerencia() {
        return idsugerencia;
    }

    public void setIdsugerencia(int idsugerencia) {
        this.idsugerencia = idsugerencia;
    }

    public String getNombresuge() {
        return nombresuge;
    }

    public void setNombresuge(String nombresuge) {
        this.nombresuge = nombresuge;
    }

    public String getCorreosuge() {
        return correosuge;
    }

    public void setCorreosuge(String correosuge) {
        this.correosuge = correosuge;
    }

    public String getInfosuge() {
        return infosuge;
    }

    public void setInfosuge(String infosuge) {
        this.infosuge = infosuge;
    }

    public mTipoSugerencia getMtiposugerencia() {
        return mtiposugerencia;
    }

    public void setMtiposugerencia(mTipoSugerencia mtiposugerencia) {
        this.mtiposugerencia = mtiposugerencia;
    }

}
