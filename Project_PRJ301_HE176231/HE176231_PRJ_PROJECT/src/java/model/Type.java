/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Type {
    String type_id
           ,type_name
           ,type_detail
           ,imagine;

    public Type() {
    }

    public Type(String type_id, String type_name, String type_detail, String imagine) {
        this.type_id = type_id;
        this.type_name = type_name;
        this.type_detail = type_detail;
        this.imagine = imagine;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public String getType_detail() {
        return type_detail;
    }

    public void setType_detail(String type_detail) {
        this.type_detail = type_detail;
    }

    public String getImagine() {
        return imagine;
    }

    public void setImagine(String imagine) {
        this.imagine = imagine;
    }
}
