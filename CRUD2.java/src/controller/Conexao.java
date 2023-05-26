package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexao {
    
    public Connection conectar(){
        Connection con = null;    
        
        try {
            String url = "jdbc:mysql://localhost:3306/crud2?user=root&password=";
            con = DriverManager.getConnection(url);
            
        } catch (SQLException erro){
            JOptionPane.showMessageDialog(null, "Conexão" + erro.getMessage());
        }
        return con;
    }
}
