/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Fer Enriquez'
 */
public class User {
    private String nomina;
    private String nombre;
    private String mac;
    
    public User() {
        this.nomina = "";
        this.nombre = "";
        this.mac = "";
    }

    public User(String nomina, String nombre, String mac) {
        this.nomina = nomina;
        this.nombre = nombre;
        this.mac = mac;
    }

    public String getNomina() {
        return nomina;
    }

    public void setNomina(String nomina) {
        this.nomina = nomina;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }
    
}
