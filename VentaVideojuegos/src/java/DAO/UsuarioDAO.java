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
    public UsuarioDTO IniciarSesion(UsuarioDTO user){
        UsuarioDTO usuario=null;
        Connection con=null;
        ResultSet rs=null;
        PreparedStatement pstm=null;
        
        try {
            String consulta="select * from usuario where nickname=? and contra=?";
            con=MySQLconexion.getConexion();
            pstm=con.prepareStatement(consulta);
            pstm.setString(1, user.getNickname_usuario());
            pstm.setString(2, user.getContrasenia());
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
    public boolean RegistrarUsuario(UsuarioDTO user) {
        Connection con;
        PreparedStatement pstm=null;
        
        
        try {
            String insertar="INSERT INTO usuario (nombre,apellido,direccionelectronica,nickname,contra) VALUES (?,?,?,?,?);";
            con=MySQLconexion.getConexion();
            pstm=con.prepareStatement(insertar);
            pstm.setString(1,user.getNombre_usuario());
            pstm.setString(2,user.getApellido_usuario());
            pstm.setString(3,user.getDireccion_e_usuario());
            pstm.setString(4,user.getNickname_usuario());
            pstm.setString(5,user.getContrasenia());
            
            if(pstm.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(pstm!=null)pstm.close();
            } catch (Exception e) {
            }
        }
        
        return false;
    }
  /* public static void main(String[] args) {
        UsuarioDAO dao=new UsuarioDAO();
        
        System.out.println(dao.RegistrarUsuario("karlo", "mollo", "123@gmail.com", "karlo", "123"));
        System.out.println(dao.IniciarSesion("karlo","123"));
    }*/
   
}
