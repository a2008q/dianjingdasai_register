package dao.impl;

import dao.TeamsDao;
import entity.Teams;

import java.sql.*;

public class TeamDaoImpl implements TeamsDao {


    public int TeamRegDao(Teams t){
        //声明jdbc对象
        Connection conn = null;
        PreparedStatement ps =null;
        //声明变量
        int index = -1;
        try {
        //加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
        //获取连接
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone =UTC","root","yhh515515");
        //创建sql命令
            String sql ="insert into teaminfo value(default,?,?,?,?,?,?)";
        //创建sql命令对象
            ps = conn.prepareStatement(sql);
        //给占位符赋值
            ps.setString(1,t.getName());
            ps.setString(2,t.getCaptain());
            ps.setString(3,t.getMember1());
            ps.setString(4,t.getMember2());
            ps.setString(5,t.getMember3());
            ps.setString(6,t.getMember4());
            //执行
            index = ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                ps.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            try {
                conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }

        return index;
    }
}
