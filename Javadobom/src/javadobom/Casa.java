/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javadobom;

/**
 *
 * @author ESCOLA
 */
public class Casa {
    private String endereco;
    private int numero;
    private String proprietario;
    private double mquadrado;
    
    Casa(){}
    
    Casa(String endereco,int numero,String prop,double mq){
        this.endereco=endereco;
        this.numero=numero;
        this.proprietario=prop;
        this.mquadrado=mq;
                
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getProprietario() {
        return proprietario;
    }

    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }

    public double getMquadrado() {
        return mquadrado;
    }

    public void setMquadrado(double mquadrado) {
        this.mquadrado = mquadrado;
    }
    public String getall(){
        return "endereco: "+endereco+"\n"+"numero: "+numero+"\n"+"proprietario: "+proprietario+"\n"+"metro quadrado: "+mquadrado;
    }
}
