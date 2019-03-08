



import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class cert_db
{
	public static Statement st=null;
    public Connection connection()
    {
        try 
        {
        	
            Class.forName("com.mysql.jdbc.Driver");
            String str = "jdbc:mysql://localhost:3306/dell";
            Connection myConnection = DriverManager.getConnection(str,"root","root");
            
            return myConnection;
        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(cert_db.class.getName()).log(Level.SEVERE, null, ex);}
        return null;
    }
}