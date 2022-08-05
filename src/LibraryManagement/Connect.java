/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LibraryManagement;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;



/**
 *
 * @author user
 */
public class Connect {  
    /**
     *
     * @return
     */
    public static Connection connectDB()  
    {
     try 
     {
         Connection con;
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement","root","root12345");
         return con;
     }
     catch(SQLException e)
     {
         JOptionPane.showMessageDialog(null,e);
         return null;
     }
 }
}

 