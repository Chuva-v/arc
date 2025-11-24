package banco;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ESCOLA
 */
public class Conect {
    public static Connection getConexao() throws SQLException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/teste", "root", "");
        } catch (ClassNotFoundException e){
            throw new SQLException(e.getMessage());
        }
    }
}
