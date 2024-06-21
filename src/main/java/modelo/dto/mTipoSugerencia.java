/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

/**
 *
 * @author Piero
 */
public class mTipoSugerencia {
        private int idtiposuge;
        private String nombretiposuge;
        public mTipoSugerencia() {
    }
        public mTipoSugerencia(int idtiposuge) {
        this.idtiposuge = idtiposuge;
    }

    public mTipoSugerencia(int idtiposuge, String nombretiposuge) {
        this.idtiposuge = idtiposuge;
        this.nombretiposuge = nombretiposuge;
    }

    public String getNombretiposuge() {
        return nombretiposuge;
    }

    public void setNombretiposuge(String nombretiposuge) {
        this.nombretiposuge = nombretiposuge;
    }

    public int getIdtiposuge() {
        return idtiposuge;
    }

    public void setIdtiposuge(int idtiposuge) {
        this.idtiposuge = idtiposuge;
    }
    
}
