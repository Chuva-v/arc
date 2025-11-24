/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javadobom;










import java.util.ArrayList;
import java.util.Scanner;

public class Javadobom {
    public static void main(String[] args) {
        Pessoa eu = new Pessoa("ivan","junar");
        Casa davovo = new Casa();
        davovo.setEndereco("Rua das casas");
        davovo.setMquadrado(20.5);
        davovo.setNumero(72);
        davovo.setProprietario("eu");
        Boolean op=true;
        Scanner sc = new Scanner(System.in);
        ArrayList<Double> nums = new ArrayList<>();
        int e=1, t=-1;
        
        System.out.println(davovo.getall());
        
        System.out.println("......");
        System.out.println(eu.nomeCompleto());
        System.out.println("......");
        
        
        do{
            System.out.print(e+".digite um numero: -> ");
            nums.add(sc.nextDouble());
            
            if(e>=5){
                System.out.println("  Continuar?");
                System.out.println(" nao 0 | ? sin");
                System.out.print("-> ");
                t=sc.nextInt();
            }
            e++;
        }while(t!=0);

        
        Double n = 0.0;
        for(int i=0; i<nums.size(); i++){
            if(nums.get(i)>n){
               n = nums.get(i);
            }
        }
        System.out.print(" O maior numero e :"+n);
    }
}
