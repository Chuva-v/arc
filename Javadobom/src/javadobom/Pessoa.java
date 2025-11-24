/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javadobom;

/**
 *
 * @author ESCOLA
 */
public class Pessoa {
    private String nome;
    private String sobreNome;
    
    Pessoa(String nome, String sobreNome){
        this.nome=nome;
        this.sobreNome=sobreNome;
    }
    Pessoa(){
    }
    
    public String getName(){return nome;}
    public void setName(String nome){this.nome=nome;}
    public String getSobreName(){return sobreNome;}
    public void setSobreName(String sobreNome){this.sobreNome=sobreNome;}
    
    public String nomeCompleto(){
        return nome+" "+sobreNome;
    }
}
