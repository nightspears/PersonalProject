/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Acc {
    String UserName,Password,Doe,role;

    public Acc(String UserName, String Password, String Doe, String role) {
        this.UserName = UserName;
        this.Password = Password;
        this.Doe = Doe;
        this.role = role;
    }

    public Acc() {
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getDoe() {
        return Doe;
    }

    public void setDoe(String Doe) {
        this.Doe = Doe;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}
