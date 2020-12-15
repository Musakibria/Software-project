
package librarymanagement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Librarymanagement {
    private static Connection connector;
    
    static Connection getInstance() throws SQLException, ClassNotFoundException
    {
        if(connector==null)
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connector = DriverManager.getConnection("jdbc:mysql://localhost/library_management?"+"user=root");
        }
       return connector;
    }

    static void close() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

 
   
    
}
