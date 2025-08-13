package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuariosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Usuarios validar(String usuario, String contrasena) {
        Usuarios user = null;
        String sql = "SELECT * FROM Usuarios WHERE nombreUsuario = ? AND contraseñaUsuario = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new Usuarios();
                user.setCodigoUsuario(rs.getInt("codigoUsuario"));
                user.setNombreUsuario(rs.getString("nombreUsuario"));
                user.setContraseñaUsuario(rs.getString("contraseñaUsuario"));
                user.setTipoUsuario(Usuarios.TipoUsuario.valueOf(rs.getString("tipoUsuario")));
                user.setFechaRegistro(rs.getDate("fechaRegistro"));
            }
        } catch (SQLException e) {
            System.err.println("Error en la validación de usuario: " + e.getMessage());
            e.printStackTrace();
        }
        return user;
    }
}