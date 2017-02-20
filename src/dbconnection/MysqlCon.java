package dbconnection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Driver;
import java.sql.Connection;
import java.sql.Statement;



public class MysqlCon {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";  
    // ����MySQL���ݿ�����ӵ�ַ  
    public static final String DBURL = "jdbc:mysql://localhost:3306/amc";  
    // MySQL���ݿ�������û���  
    public static final String DBUSER = "root";  
    // MySQL���ݿ����������  
    public static final String DBPASS = "123456"; 
	
	public Connection connection() throws SQLException{
		Connection conn = null; // ���ݿ�����  
        try {  
            Class.forName(DBDRIVER); // ������������  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("success");
        } catch (ClassNotFoundException e) {  
            System.out.println("�Ҳ���������");  
        } catch (SQLException e) {  
            System.out.println("�������ݿ�ʧ��");
            throw e;
        } 
        return conn;
}
	/*
	 * ��ѯ��¼
	 */
	public ResultSet query(String sql,Connection conn){ 
		Statement stmt=null;
		ResultSet rs=null;
  
        try {    
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            rs.beforeFirst();
            if(rs.next()){
            	System.out.println("���ݲ�ѯ�ɹ�");
            	return rs;
            }
            else{
            	System.out.println("rs has no data");
            	return null;
            }
            
        } catch (SQLException e) {  
            System.out.println("�������ݿ�ʧ��");  
            return null;
        }
		
	}
	/*
	 * ɾ����¼
	 */
	public void delete(String sql){
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // ������������  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("���ݿ����ӳɹ�");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("����ɾ���ɹ�");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("�Ҳ���������");  
        } catch (SQLException e) {  
            System.out.println("�������ݿ�ʧ��");  
        }
	}
	/*
	 * �޸ļ�¼
	 */
	public void update(String sql) throws SQLException{
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // ������������  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("���ݿ����ӳɹ�");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("�����޸ĳɹ�");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("�Ҳ���������");  
        } catch (SQLException e) {  
            System.out.println("�������ݿ�ʧ��");  
            System.out.print(e);
            throw e;
        }
	}
	/*
	 * �����¼
	 */
	public void insert(String sql) throws SQLException{
		Connection conn=null;
		Statement stmt=null;
		try{
			Class.forName(DBDRIVER); // ������������  
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);  
            System.out.println("���ݿ����ӳɹ�");
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            System.out.println("���ݲ���ɹ�");
            conn.close();
		}catch (ClassNotFoundException e) {  
            System.out.println("�Ҳ���������");  
        } catch (SQLException e) {  
            System.out.println("�������ݿ�ʧ��");  
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
