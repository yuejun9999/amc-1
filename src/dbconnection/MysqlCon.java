package dbconnection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Driver;
import java.sql.Connection;
import java.sql.Statement;



public class MysqlCon {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";  
    // 定义MySQL数据库的连接地址  
    public static final String DBURL = "jdbc:mysql://localhost:3306/amc";  
    // MySQL数据库的连接用户名  
    public static final String DBUSER = "root";  
    // MySQL数据库的连接密码  
    public static final String DBPASS = "Liqi5474"; 
	
	public Connection connection() throws SQLException{
		Connection conn = null; // 数据库连接  
        try {  
            Class.forName(DBDRIVER); // 加载驱动程序  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("success");
        } catch (ClassNotFoundException e) {  
            System.out.println("找不到驱动器");  
        } catch (SQLException e) {  
            System.out.println("连接数据库失败");
            throw e;
        } 
        return conn;
}
	/*
	 * 查询记录
	 */
	public ResultSet query(String sql,Connection conn){ 
		Statement stmt=null;
		ResultSet rs=null;
  
        try {    
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            rs.beforeFirst();
            if(rs.next()){
            	System.out.println("数据查询成功");
            	return rs;
            }
            else{
            	System.out.println("rs has no data");
            	return null;
            }
            
        } catch (SQLException e) {  
            System.out.println("连接数据库失败");  
            return null;
        }
		
	}
	/*
	 * 删除记录
	 */
	public void delete(String sql){
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // 加载驱动程序  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("数据库连接成功");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("数据删除成功");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("找不到驱动器");  
        } catch (SQLException e) {  
            System.out.println("连接数据库失败");  
        }
	}
	/*
	 * 修改记录
	 */
	public void update(String sql) throws SQLException{
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // 加载驱动程序  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("数据库连接成功");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("数据修改成功");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("找不到驱动器");  
        } catch (SQLException e) {  
            System.out.println("连接数据库失败");  
            System.out.print(e);
            throw e;
        }
	}
	/*
	 * 插入记录
	 */
	public void insert(String sql) throws SQLException{
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // 加载驱动程序  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("数据库连接成功");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("数据插入成功");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("找不到驱动器");  
        } catch (SQLException e) {  
            System.out.println("连接数据库失败");  
            System.out.print(e);
            throw e;
        }
	}
	public void close(Connection conn){
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
