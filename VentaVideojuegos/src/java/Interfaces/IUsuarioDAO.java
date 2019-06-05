/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;
import DTO.UsuarioDTO;
/**
 *
 * @author MI PC
 */
public interface IUsuarioDAO {
    public UsuarioDTO IniciarSesion(String nick, String contra);
    public boolean RegistrarUsuario(String nombre, String apellido, String direccionE, String nick, String contra);
}
