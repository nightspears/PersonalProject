/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Comment {
    String UserName
      ,world_id
      ,mod_id
      ,content;

    public Comment() {
    }

    public Comment(String UserName, String mod_id, String content) {
        this.UserName = UserName;
        this.mod_id = mod_id;
        this.content = content;
    }

    public Comment(String UserName, String world_id, String mod_id, String content) {
        this.UserName = UserName;
        this.world_id = world_id;
        this.mod_id = mod_id;
        this.content = content;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getWorld_id() {
        return world_id;
    }

    public void setWorld_id(String world_id) {
        this.world_id = world_id;
    }

    public String getMod_id() {
        return mod_id;
    }

    public void setMod_id(String mod_id) {
        this.mod_id = mod_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
}
