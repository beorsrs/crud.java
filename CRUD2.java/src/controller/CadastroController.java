
package controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;
import model.SementeModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import controller.Conexao;

public class CadastroController {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<SementeModel> lista = new ArrayList<>();
    
    public void Cadastrar(SementeModel objsementemodel){
        String sql= "insert into sementes(nome_semente, peso_semente) values (?,?)";
        
        conn= new Conexao().conectar();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objsementemodel.getNome_semente());
            pstm.setString(2, objsementemodel.getPeso_semente());
            
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "CadastroController" + e);
        }
    }
    public void Excluir(SementeModel objsementemodel){
        String sql = "delete from sementes where id_semente = ?";
        
        
         conn= new Conexao().conectar();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt( 1,objsementemodel.getId_semente());
            
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CadastroController" + e);
        }
    }
    public ArrayList<SementeModel> Listar(){
        String sql = "select * from sementes";
        conn = new Conexao().conectar();
        try {
           pstm = conn.prepareStatement(sql);
           rs = pstm.executeQuery();
           
            while (rs.next()) {
                 SementeModel objsementemodel = new SementeModel();   
                 objsementemodel.setId_semente(rs.getInt("Id_semente"));
                 objsementemodel.setNome_semente(rs.getString("Nome_semente"));
                 objsementemodel.setPeso_semente(rs.getString("Peso_semente"));
                 
                 lista.add(objsementemodel);
                
            }
        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null,"listarController:" + erro);
        }
        return lista;
    }
    public void modificar(SementeModel objsementemodel){
        String sql = "update sementes set nome_semente = ?, peso_semente = ? where id_semente = ?";
        conn = new Conexao().conectar();
            try {
                
                pstm = conn.prepareStatement(sql);
                pstm.setString(1,objsementemodel.getNome_semente());
                pstm.setString(2,objsementemodel.getPeso_semente());
                pstm.setInt(3,objsementemodel.getId_semente());
                
                pstm.execute();
                pstm.close();
                
        } catch (SQLException e) {
            
            JOptionPane.showMessageDialog(null,"Cadastro modificar:" + e);
            
        }
                
    }
    
    
}
