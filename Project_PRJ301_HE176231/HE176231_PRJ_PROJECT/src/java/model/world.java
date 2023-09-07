/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class world {
String  world_id
,imagine
,world_details
,date,
world_name;
    public world() {
    }

    public world(String world_id, String imagine, String world_details, String date, String world_name) {
        this.world_id = world_id;
        this.imagine = imagine;
        this.world_details = world_details;
        this.date = date;
        this.world_name = world_name;
    }

    public String getWorld_id() {
        return world_id;
    }

    public void setWorld_id(String world_id) {
        this.world_id = world_id;
    }

    public String getImagine() {
        return imagine;
    }

    public void setImagine(String imagine) {
        this.imagine = imagine;
    }

    public String getWorld_details() {
        return world_details;
    }

    public void setWorld_details(String world_details) {
        this.world_details = world_details;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getWorld_name() {
        return world_name;
    }

    public void setWorld_name(String world_name) {
        this.world_name = world_name;
    }

}
