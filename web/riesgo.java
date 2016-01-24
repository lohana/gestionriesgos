/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author gabip
 */
public class riesgo {
    private String impacto;
    private String probabilidad;
    private String valoracion;
    private int puntaje;

    /**
     * @return the impacto
     */
    public String getImpacto() {
        return impacto;
    }

    /**
     * @param impacto the impacto to set
     */
    public void setImpacto(String impacto) {
        this.impacto = impacto;
    }

    /**
     * @return the probabilidad
     */
    public String getProbabilidad() {
        return probabilidad;
    }

    /**
     * @param probabilidad the probabilidad to set
     */
    public void setProbabilidad(String probabilidad) {
        this.probabilidad = probabilidad;
    }

    /**
     * @return the valoracion
     */
    public String getValoracion() {
        return valoracion;
    }

    /**
     * @param valoracion the valoracion to set
     */
    public void setValoracion(String valoracion) {
        this.valoracion = valoracion;
    }

    /**
     * @return the puntaje
     */
    public Integer getPuntaje() {
        return puntaje;
    }

    /**
     * @param puntaje the puntaje to set
     */
    public void setPuntaje(Integer puntaje) {
        this.puntaje = puntaje;
    }
}
