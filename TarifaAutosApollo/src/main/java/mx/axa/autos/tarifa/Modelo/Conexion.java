package mx.axa.autos.tarifa.Modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;




@Configuration
@PropertySource("classpath:application.properties")


public class Conexion {

	private static String servidor = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String usuario = "APOLO_DEVELOPER";
	private static String password = "Meto820802#";
	private static String driver ="oracle.jdbc.OracleDriver";
	private static Connection conexion;
	
	public Conexion(){
		try{
			Class.forName(driver);
			conexion=DriverManager.getConnection(servidor, usuario, password);
		}catch (ClassNotFoundException | SQLException e){
			System.out.println("Error de conexión");
		}
	}
	
	public Connection getconnection(){
		return conexion;
	}
}
