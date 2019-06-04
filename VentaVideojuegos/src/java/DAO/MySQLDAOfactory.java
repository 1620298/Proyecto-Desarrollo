/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author MI PC
 */
public class MySQLDAOfactory  extends DAOfactory{

    @Override
    public UsuarioDAO getUsuarioDAO() {
        return new UsuarioDAO();
    }
    
}
