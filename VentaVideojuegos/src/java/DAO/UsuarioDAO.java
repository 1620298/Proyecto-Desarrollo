/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import DTO.UsuarioDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Interfaces.IUsuarioDAO;
import java.sql.Connection;
import MySQLconector.MySQLconexion;

/**
 *
 * @author MI PC
 */
public class UsuarioDAO implements IUsuarioDAO{
    @Override
    public UsuarioDTO IniciarSesion(String nickname, String contra){
        UsuarioDTO usuario=null;
        Connection con=null;
        ResultSet rs=null;
        PreparedStatement pstm=null;
        
        try {
            String consulta="select * from usuario where nickname=? and contra=?";
            con=MySQLconexion.getConexion();
            pstm=con.prepareStatement(consulta);
            pstm.setString(1, nickname);
            pstm.setString(2, contra);
            rs=pstm.executeQuery();
            
            if(rs.next()){
                usuario=new UsuarioDTO();
                usuario.setId_usuario(rs.getInt(1));
                usuario.setNombre_usuario(rs.getString(2));
                usuario.setApellido_usuario(rs.getString(3));
                usuario.setDireccion_e_usuario(rs.getString(4));
                usuario.setNickname_usuario(rs.getString(5));
                usuario.setContrasenia(rs.getString(6));
                
                System.out.println(usuario.getNickname_usuario());
                System.out.println(usuario.getContrasenia());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(rs!=null)rs.close();
                if(pstm!=null)pstm.close();
                
            } catch (Exception e) {
            }
        }
        
        return usuario;
    }

    

    @Override
    public UsuarioDTO RegistrarUsuario(String nombre, String apellido, String direccionE, String nick, String contra) {
        return null;
    }
    public static void main(String[] args) {
        UsuarioDAO dao=new UsuarioDAO();
        
        System.out.println(dao.IniciarSesion("edu","123"));
    }
   
}
