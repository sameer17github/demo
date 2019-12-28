package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ProductDao {

	
	public static Connection getConnection() throws SQLException
	{
		Connection con=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("driver found");
			con=DriverManager.getConnection("jdbc:mysql://192.168.100.26:3306/group009","group009","welcome");
			System.out.println("connection established");
		} 
		catch (ClassNotFoundException e)
		{
			
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	
	public static int save(Product p) throws SQLException
	{
		int status=0;
		try
		{
			Connection con=ProductDao.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into product1(id,name,quan,descp) values(?,?,?,?)");
			ps.setInt(1, p.getId());
			ps.setString(2, p.getProductName());
			ps.setInt(3, p.getProductQuantity());
			ps.setString(4, p.getProductD());
			int i=ps.executeUpdate();
			
		}
		catch (Exception e)
		{
			
			e.printStackTrace();
		}
		
	
		return status;
	}
}
