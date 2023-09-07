/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Resource {
    String Resource_id,
            imagine,
            Resource_detail,
            date,
            Resource_name;

    public Resource() {
    }

    public Resource(String Resource_id, String imagine, String Resource_detail, String date, String Resource_name) {
        this.Resource_id = Resource_id;
        this.imagine = imagine;
        this.Resource_detail = Resource_detail;
        this.date = date;
        this.Resource_name = Resource_name;
    }

    public String getResource_id() {
        return Resource_id;
    }

    public void setResource_id(String Resource_id) {
        this.Resource_id = Resource_id;
    }

    public String getImagine() {
        return imagine;
    }

    public void setImagine(String imagine) {
        this.imagine = imagine;
    }

    public String getResource_detail() {
        return Resource_detail;
    }

    public void setResource_detail(String Resource_detail) {
        this.Resource_detail = Resource_detail;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getResource_name() {
        return Resource_name;
    }

    public void setResource_name(String Resource_name) {
        this.Resource_name = Resource_name;
    }
    
}
