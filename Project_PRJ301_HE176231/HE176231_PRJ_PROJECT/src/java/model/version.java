/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class version {

    String version_name, mod_id, Resource_id, modpack_id;

    public version(String version_name, String mod_id, String Resource_id, String modpack_id) {
        this.version_name = version_name;
        this.mod_id = mod_id;
        this.Resource_id = Resource_id;
        this.modpack_id = modpack_id;
    }

    public version() {
    }

    public String getVersion_name() {
        return version_name;
    }

    public void setVersion_name(String version_name) {
        this.version_name = version_name;
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

    public String getModpack_id() {
        return modpack_id;
    }

    public void setModpack_id(String modpack_id) {
        this.modpack_id = modpack_id;
    }

}
