package com.kinalitosclothes.modelo;
 
import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class EmpleadosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
 
    public Empleados validar(String usuario, String contrasena) {
        Empleados empleado = null;
      String sql = "SELECT * FROM empleados WHERE usuario = ? AND contrasena = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            if (rs.next()) { 
                empleado = new Empleados(); 
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleado.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleado.setCorreoEmpleado(rs.getString("correoEmpleado"));
                empleado.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                empleado.setDireccionEmpleado(rs.getString("direccionEmpleado"));
                empleado.setCodigoUsuario(rs.getInt("codigoUsuario"));
            }
        } catch (SQLException e) {
            System.err.println("Error en la validación de credenciales: " + e.getMessage());
            e.printStackTrace();
        }
        return empleado;
    }
}