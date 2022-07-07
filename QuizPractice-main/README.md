# QuizPractice
Term5_SWP391_Group4_Project_QuizPractice
# Description
Project QuizPractice in Fall21 Using Servlet, MVC model, JSP for view, css to style and MS SQL for database
# Preparation
Install [apache tomcat](http://tomcat.apache.org/) to Run the script file to create the Database (use MS)
Install [netbean](https://www.howkteam.vn/course/huong-dan-cai-dat/huong-dan-cai-dat-netbeans-ide-101) in order to using or edit src
# Create your own DATABASE CONNECTION CLASS following:
// Begin
-----
package DBConnection;
  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
 
public class DBConnection {

 

 public static Connection open() throws SQLException {
       
        String host = "here your local name";
        String user = "here your local user";
    
        String password = "here your local password";
        String database = "QuizPractice"; //Database name
 
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection("jdbc:sqlserver://" + host + ":1433;databaseName=" + database, user, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void close(Connection con, Statement st, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (st != null) {
                st.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
-----
// End
