package mx.axa.autos.tarifa.Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;  
import java.sql.Types;

import oracle.jdbc.OracleTypes; 

public class Call_Sp {

	private static Conexion conexion;

	public String obtenUsuario(String usuario, String pass){
		
		String salida = null;
		conexion = new Conexion();
			try{
				Connection con =conexion.getconnection();
				CallableStatement sp = con.prepareCall("{call SP_CONS_PERFIL(?,?,?)}");
				sp.setString("IN_USUARIO", usuario);
				sp.setString("IN_CONTRASE", pass);
				sp.registerOutParameter("OUT_PERFIL", Types.NVARCHAR);
				sp.execute();
				salida = sp.getString("OUT_PERFIL");
				con.close();
				} catch (SQLException e) {
					return e.getMessage();
				}finally{		
			}
			return salida;
		}
	
	public String[][] obtenSubTipo(){
		int i = 0;
		String salida[][] = null;// = new String[i][2];
		conexion = new Conexion();
			try{
				Connection con =conexion.getconnection();
				CallableStatement sp = con.prepareCall("{call SP_CAT_SUBTIPO_VEHICULO(?,?,?,?,?,?)}");
				sp.setString("IN_OPERACION", "CONSULTA");
				sp.setInt("IN_ID", 1);
				sp.setString("IN_CODIGO", "CONSULTA");
				sp.setString("IN_DESCRIPCION", "CONSULTA");
				sp.setString("IN_ID_EMA", "CONSULTA");
				sp.registerOutParameter("OUT_C", OracleTypes.CURSOR);
				sp.execute();
				ResultSet rs = (ResultSet)sp.getObject("OUT_C");
				while(rs.next()){
					//salida[i][0]=rs.getString("CODIGO");
					//salida[i][1]=rs.getString("DESCRIPCION");
					i = i + 1;
				}
				salida = new String[i][2];
				sp.execute();
				sp.getObject("OUT_C");
				while(rs.next()){
					salida[i][0]=rs.getString("CODIGO");
					salida[i][1]=rs.getString("DESCRIPCION");
					i = i + 1;
				}	
				con.close();
				} catch (SQLException e) {
					salida[0][0] = e.getMessage();
					return salida;
					//return e.getMessage();
				}finally{		
			}
			return salida;
		}
}
