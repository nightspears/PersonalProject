/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Modpack {

    String modpack_id,
            imagine,
            modpack_detail,
            date,
            modpack_name;
    public Modpack() {
    }

    public Modpack(String modpack_id, String imagine, String modpack_detail, String date, String modpack_name) {
        this.modpack_id = modpack_id;
        this.imagine = imagine;
        this.modpack_detail = modpack_detail;
        this.date = date;
        this.modpack_name = modpack_name;
    }

    public String getModpack_id() {
        return modpack_id;
    }

    public void setModpack_id(String modpack_id) {
        this.modpack_id = modpack_id;
    }

    public String getImagine() {
        return imagine;
    }

    public void setImagine(String imagine) {
        this.imagine = imagine;
    }

    public String getModpack_detail() {
        return modpack_detail;
    }

    public void setModpack_detail(String modpack_detail) {
        this.modpack_detail = modpack_detail;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getModpack_name() {
        return modpack_name;
    }

    public void setModpack_name(String modpack_name) {
        this.modpack_name = modpack_name;
    }


}
