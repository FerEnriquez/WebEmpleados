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
import java.io.Serializable;

public class Empleado implements Serializable {
    
    private String nomina;
    private String nombre;
    private String apellido;
    private String mac;
    private String grupo;
    private String password;


    public Empleado() {
    }

    public Empleado(String nomina, String nombre, String apellido, String mac, String grupo, String password) {
        this.nomina = nomina;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mac = mac;
        this.grupo = grupo;
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    

    
}
