/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Acc;

/**
 *
 * @author ADMIN
 */
public class AccDao extends DBContext {

    public static void main(String[] args) {
        AccDao ad = new AccDao();
//        List<Acc> list = ad.getAll();
//        for (Acc a : list) {
//            System.out.println(a.getUserName() + "\n" + a.getDoe() + "\n" + a.getPassword() + "\n" + a.getRole());
//        }
//        String uname = "An";;
//        String pass = "19022003";
//        System.out.println("----------");
//        try {
//            Acc ac = ad.check(uname, pass);
//            if (ac == null) {
//                System.out.println("null");
//            } else {
//                System.out.println(ac.getUserName() + "\n" + ac.getDoe() + "\n" + ac.getPassword() + "\n" + ac.getRole());
//            }
//            boolean checking;
//            try {
//                System.out.println("---------exist------------------");
//                checking = ad.existed(uname);
//                if (checking) {
//                    System.out.println("---------exist1111------------------");
//                }
//            } catch (Exception e) {
//                System.out.println(e);
//            }
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
        System.out.println(ad.returnpass("qq"));
    }

    public Acc check(String username, String password) {
        String sql = "SELECT	[UserName]\n"
                + "                ,[Password]\n"
                + "                ,[Doe]\n"
                + "                ,[role]\n"
                + "                FROM [PRJ_project].[dbo].[Acc]\n"
                + "                Where UserName =?  and Password =?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Acc ac = new Acc(rs.getString("UserName"),
                        rs.getString("Password"),
                        rs.getString("Doe"),
                        rs.getString("role"));

                return ac;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existed(String username) {
        String sql = "use PRJ_project\n"
                + "SELECT * from Acc \n"
                + "Where [UserName] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public List<Acc> getAll() {
        List<Acc> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT TOP (1000) [UserName]\n"
                + "      ,[Password]\n"
                + "      ,[Doe]\n"
                + "      ,[role]\n"
                + "  FROM [PRJ_project].[dbo].[Acc]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Acc(
                        rs.getString("UserName"),
                        rs.getString("Password"),
                        rs.getString("Doe"),
                        rs.getString("Role")
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public void addacc(String username, String password, String date) {
        String sql = "INSERT INTO [dbo].[Acc]\n"
                + "           ([UserName]\n"
                + "           ,[Password]\n"
                + "           ,[Doe]\n"
                + "           ,[role])\n"
                + "     VALUES('" + username + "','" + password + "','" + date + "','User')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void changepass(String newpass, String username) {
        String sql = "        UPDATE [dbo].[Acc]\n"
                + "		SET \n"
                + "      [Password] = '" + newpass + "'\n"
                + " WHERE [UserName]='" + username + "'\n"
                + "        ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public String returnpass(String username) {
        List<Acc> list = new ArrayList<>();
        //String sql="select * from Categories";
        String sql = "SELECT [Password]\n"
                + "  FROM [PRJ_project].[dbo].[Acc]\n"
                + "  where UserName='"+username+"'";
        String pass = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
            pass = rs.getString("Password");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return pass;

    }
}
