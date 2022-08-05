/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LibraryManagement;

/**
 *
 * @author avinash
 */
public class TemporaryData {
    static User currentUser = null;
    
    public static void setCurrentUser(User data) {
       currentUser = data;
    }
    
    public static User getCurrentUser() {
        return currentUser;
    }
}
