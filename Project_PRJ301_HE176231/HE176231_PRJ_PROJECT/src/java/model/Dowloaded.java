/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Dowloaded {

    String UserName
      ,modpack_id
      ,mod_id
      ,Resource_id
      ,world_id
      ,date;

    public Dowloaded() {
    }

    public Dowloaded(String UserName, String modpack_id, String mod_id, String Resource_id, String world_id, String date) {
        this.UserName = UserName;
        this.modpack_id = modpack_id;
        this.mod_id = mod_id;
        this.Resource_id = Resource_id;
        this.world_id = world_id;
        this.date = date;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getModpack_id() {
        return modpack_id;
    }

    public void setModpack_id(String modpack_id) {
        this.modpack_id = modpack_id;
    }

    public String getMod_id() {
        return mod_id;
    }

    public void setMod_id(String mod_id) {
        this.mod_id = mod_id;
    }

    public String getResource_id() {
        return Resource_id;
    }

    public void setResource_id(String Resource_id) {
        this.Resource_id = Resource_id;
    }

    public String getWorld_id() {
        return world_id;
    }

    public void setWorld_id(String world_id) {
        this.world_id = world_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

 

}
