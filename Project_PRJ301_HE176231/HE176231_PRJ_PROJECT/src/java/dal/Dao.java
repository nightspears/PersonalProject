/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;
import model.Acc;
import model.Comment;
import model.Mod;
import model.Modpack;
import model.Resource;
import model.Type;
import model.world;
import org.apache.taglibs.standard.tag.rt.fmt.ParseNumberTag;

/**
 *
 * @author ADMIN
 */
public class Dao extends DBContext {

    public static void main(String[] args) {
        List<Type> list = new ArrayList<>();
        Dao dao = new Dao();
        list = dao.getAllTypes();
//        System.out.println(list.get(1).getType_id() + "\n" + list.get(1).getType_detail());
//      
        //        int num;
        //        List<Mod> listm = new ArrayList<>();
        //        List<Modpack> listmd = new ArrayList<>();
        //        listm = dao.getAllMod();
        //        try {
        //            for (Mod a : listm) {
        //                
        //            num = Integer.parseInt(a.getMod_id().trim());
        //            System.out.println(num + "\n" );
        //            }
        //        } catch (NumberFormatException e) {
        //            System.out.println(e);
        //        
        //        }
        int max = dao.backmodlastid();
        System.out.println(max);
//        dao.makecomment("qq", "20", "testting ffom dao");
//        dao.deletemodbyid("20");
//for (type variableName : arrayName) {
        // code block to be executed
//}
//        listm = dao.getModbyTypes("1");
//        listmd = dao.getAllModpack();
//        for (Modpack a : listmd) {
//            System.out.println(a.getModpack_name() + "\n =========" + a.getModpack_detail() + "\n");
//        }
//        listm=dao.getModbyname("mob");
//        for(Mod a: listm){
//            System.out.println(a.getMod_name() + "\n ========="+ a.getMod_detail()+ "\n");
//        }
//        dao.addMod("Controlling", "img/modimg/mod20.png", "Adds a search bar to the Key-Bindings menu", "0");
//        dao.deletemodbyid("20");
//            dao.makecomment("qq", "20", "testting form dao");
//        dao.update("20", "123123123123", "img/modimg/mod20.png", "Adds a search bar to the Key-Bindings menu", "2");
//        List<Comment> listc = dao.getcommentbyid("1");
//        for (Comment a : listc) {
//            System.out.println(a.getMod_id()+ "\n =========" + a.getContent()+ "\n");
//        }
//dao.dowload("An", "20");
dao.deletemodbyid("20");
    }

    public List<Mod> getAllMod() {
        List<Mod> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT *"
                + "  FROM [dbo].[Mod]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Mod(
                        rs.getString("mod_id"),
                        rs.getString("type_id"),
                        rs.getString("mod_detail"),
                        rs.getString("imagine"),
                        rs.getString("date"),
                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Type> getAllTypes() {
        List<Type> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "USE [PRJ_project]\n"
                + "Select * from [Type]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Type(
                        rs.getString("type_id"),
                        rs.getString("type_name"),
                        rs.getString("type_detail"),
                        rs.getString("imagine")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Mod> getModbyTypes(String typeid) {
        List<Mod> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT * \n"
                + "  FROM [PRJ_project].[dbo].[Mod]\n"
                + "  where 1=1";
        if (!typeid.equals("9")) {
            sql += "and type_id= " + typeid;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Mod(
                        rs.getString("mod_id"),
                        rs.getString("type_id"),
                        rs.getString("mod_detail"),
                        rs.getString("imagine"),
                        rs.getString("date"),
                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    //
    public List<Mod> getModbyname(String name) {
        List<Mod> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT * \n"
                + "  FROM [PRJ_project].[dbo].[Mod]\n"
                + "  where 1=1";
        if (!name.isEmpty()) {
            sql += "And [Mod_name] LIKE '%" + name + "%'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Mod(
                        rs.getString("mod_id"),
                        rs.getString("type_id"),
                        rs.getString("mod_detail"),
                        rs.getString("imagine"),
                        rs.getString("date"),
                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void addMod(String name, String img, String mod_decripstion, String type_id) {
        Dao dao = new Dao();
        String sql = "USE [PRJ_project]\n"
                + "INSERT INTO [dbo].[Mod]\n"
                + "           ([mod_id]\n"
                + "           ,[type_id]\n"
                + "           ,[mod_detail]\n"
                + "           ,[imagine]\n"
                + "           ,[date]\n"
                + "           ,[Mod_name])\n"
                + "     VALUES('" + Integer.toString(dao.backmodlastid()).trim()
                + "' ,'" + type_id + "' ,'" + mod_decripstion + "' ,'" + img
                + "',CAST('2023-03-21' AS DATE),'" + name + "')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public Mod getModbyidMod(String id) {

        return null;
    }

    public List<Acc> getAllAcc() {
        List<Acc> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[Acc]";
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        String date = dtf.format(now);
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new Acc(
                        rs.getString("modpack_id"),
                        rs.getString("modpack_id"),
                        rs.getString("modpack_id"),
                        rs.getString("User")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Modpack> getAllModpack() {
        List<Modpack> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[Modpack]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//
/*
[modpack_id]
      ,[imagine]
      ,[modpack_detail]
      ,[date]
      ,[Modpack_name]
                 */
//
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Modpack(
                        rs.getString("modpack_id"),
                        rs.getString("imagine"),
                        rs.getString("modpack_detail"),
                        rs.getString("date"),
                        rs.getString("Modpack_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Resource> getAllResource() {
        List<Resource> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[Resource]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new Resource(
                        rs.getString("Resource_id"),
                        rs.getString("imagine"),
                        rs.getString("Resource_detail"),
                        rs.getString("date"),
                        rs.getString("Resource_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<world> getAllWorld() {
        //    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        List<world> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[world]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new world(
                        rs.getString("world_id"),
                        rs.getString("imagine"),
                        rs.getString("world_detail"),
                        rs.getString("date"),
                        rs.getString("world_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Mod> getModbyid(String typeid) {
        //    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        List<Mod> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT * \n"
                + "  FROM [PRJ_project].[dbo].[Mod]\n"
                + "  where 1=1";
        if (!typeid.equals("999")) {
            sql += "and mod_id= " + typeid;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Mod(
                        rs.getString("mod_id"),
                        rs.getString("type_id"),
                        rs.getString("mod_detail"),
                        rs.getString("imagine"),
                        rs.getString("date"),
                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Object getModbyoder(String order) {
        //    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        List<Mod> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Mod]\n";
        if (order.equalsIgnoreCase("1")) {
            sql += "  ORDER BY date DESC;";
        } else if (order.equalsIgnoreCase("2")) {

        } else if (order.equalsIgnoreCase("3")) {

        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Mod(
                        rs.getString("mod_id"),
                        rs.getString("type_id"),
                        rs.getString("mod_detail"),
                        rs.getString("imagine"),
                        rs.getString("date"),
                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    /*             CRUD               */
    public void deletemodbyid(String id) {
        String sql = "    Delete [Comment] \n"
                + "	where [mod_id]='" + id + "'\n"
                + "    DELETE [Mod] \n"
                + "     WHERE [Mod].[mod_id]=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);

            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public int backmodlastid() {
        List<Type> list = new ArrayList<>();
        Dao dao = new Dao();
        list = dao.getAllTypes();
//        System.out.println(list.get(1).getType_id() + "\n" + list.get(1).getType_detail());
//      
        int num;
        List<Mod> listm = new ArrayList<>();
        List<Modpack> listmd = new ArrayList<>();
        listm = dao.getAllMod();
        int max = 0;
        try {
            for (Mod a : listm) {

                num = Integer.parseInt(a.getMod_id().trim());
                if (num > max) {
                    max = num;
                }
            }
        } catch (NumberFormatException e) {
            System.out.println(e);
        }

        return max + 1;
    }

    public void dowload() {

    }

    public void update(String id, String name, String img, String mod_decripstion, String type_id) {
        Dao dao = new Dao();
        String sql = ""
                + "UPDATE [Mod]\n"
                + "   SET "
                + "      [type_id] = " + "'" + type_id + "'"
                + "      ,[mod_detail] = " + "'" + mod_decripstion + "'"
                + "      ,[imagine] =" + "'" + img + "'"
                + "      ,[Mod_name] = " + "'" + name + "'"
                + " WHERE [mod_id]=" + id;

//        
//        
//        String sql = "USE [PRJ_project]\n"
//                + "                UPDATE [dbo].[Mod]\n"
//                + "                   SET\n"
//                + "                      [type_id] = '3'\n"
//                + "                      ,[mod_detail] = '123123123123'\n"
//                + "                      ,[imagine] ='img/modimg/mod20.png'\n"
//                + "                     ,[Mod_name] = '111111111111111111111111111111111'\n"
//                + "                 WHERE [mod_id]='20'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public List<Comment> getcommentbyid(String modid) {
        //    throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        List<Comment> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[Comment]\n"
                + "  where 1=1 ";
        if (!modid.equals("999")) {
            sql += "and mod_id= '" + modid + "'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                list.add(new Comment(
                        rs.getString("UserName"),
                        rs.getString("mod_id"),
                        rs.getString("content")));
//                        rs.getString("mod_id"),
//                        rs.getString("type_id"),
//                        rs.getString("mod_detail"),
//                        rs.getString("imagine"),
//                        rs.getString("date"),
//                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void makecomment(String UserName, String moidid, String content) {
        Dao dao = new Dao();
        String sql = "INSERT INTO [dbo].[Comment]\n"
                + "           ([UserName]\n"
                + "           ,[mod_id]\n"
                + "           ,[content])\n"
                + "     VALUES('" + UserName + "','" + moidid + "','" + content + "')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void dowload(String userName, String Mod_id){
            Dao dao = new Dao();
        String sql = "INSERT INTO [dbo].[Dowloaded]\n"
                + "           ([UserName]\n"
                + "           ,[mod_id])\n"
                + "     VALUES('"+userName+"','"+Mod_id+"')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        }
    public int returndowload(){
        String sql = "SELECT *\n"
                + "  FROM [PRJ_project].[dbo].[Dowloaded]\n"
                + "  where 1=1 ";
        int r = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // st.setString(1, typeid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category();
//                c.setId(rs.getInt("ID"));
//                c.setName(rs.getString("name"));
//                c.setDescribe(rs.getString("describe"));

                        r=rs.getInt(1);
//                        rs.getString("mod_id"),
//                        rs.getString("type_id"),
//                        rs.getString("mod_detail"),
//                        rs.getString("imagine"),
//                        rs.getString("date"),
//                        rs.getString("mod_name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return r;
    }
}
