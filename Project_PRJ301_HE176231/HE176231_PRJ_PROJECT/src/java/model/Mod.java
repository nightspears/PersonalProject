/*
00000000000000000000000000000000000000000000 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Mod {
    
    String mod_id;
    String type_id;
    String mod_detail;
    String imagine;
    String date;
    String mod_name;
    public Mod() {
    }

    public Mod(String mod_id, String type_id, String mod_detail, String imagine, String date, String mod_name) {
        this.mod_id = mod_id;
        this.type_id = type_id;
        this.mod_detail = mod_detail;
        this.imagine = imagine;
        this.date = date;
        this.mod_name = mod_name;
    }

    public String getMod_id() {
        return mod_id;
    }

    public void setMod_id(String mod_id) {
        this.mod_id = mod_id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getMod_detail() {
        return mod_detail;
    }

    public void setMod_detail(String mod_detail) {
        this.mod_detail = mod_detail;
    }

    public String getImagine() {
        return imagine;
    }

    public void setImagine(String imagine) {
        this.imagine = imagine;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMod_name() {
        return mod_name;
    }

    public void setMod_name(String mod_name) {
        this.mod_name = mod_name;
    }
    
}
