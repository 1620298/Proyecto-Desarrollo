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
public abstract class DAOfactory {
    public static final int MySQL=1;
    public static final int SQL_SERVER=2;
    
    //Registran los  DAOs
    public  abstract UsuarioDAO getUsuarioDAO();
    
    public static DAOfactory setDAOfactory(int tipo){
        switch(tipo){
            case MySQL:
                return new MySQLDAOfactory();
            case SQL_SERVER:
                return null;
        }
        return  null;
    }
}
