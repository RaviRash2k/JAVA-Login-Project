package Services;

import java.sql.ResultSet;
import java.sql.Statement;

import Model.Customer;
import Utill.Connector;

public class Service {
	
	
	//Customer register
	
	public void reg(Customer cus) {
		
		try {
			
			String query = "insert into customer (cusName, cusEmail, cusMobile, password) values ('"+cus.getName()+"', '"+cus.getEmail()+"', '"+cus.getMobile()+"', '"+cus.getPass()+"') ";
			Statement st = Connector.getConnection().createStatement();
			st.executeUpdate(query);
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	//Customer Login
	
	public boolean log(Customer cus) {
		
		try {
			
			String query = "select * from customer where cusEmail = '"+cus.getEmail()+"' and password = '"+cus.getPass()+"' ";
			Statement stmt = Connector.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				
				return true;
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return false;
	}
	
	
	//Display data
	public Customer welcome(Customer cus) {
			
			try {
				String query = " select * from customer where cusEmail = '"+cus.getEmail()+"' and password = '"+cus.getPass()+"' ";
				Statement st = Connector.getConnection().createStatement();
				ResultSet rs = st.executeQuery(query);
				
				if(rs.next()) {
					cus.setName(rs.getString("cusName"));
					cus.setEmail(rs.getString("cusEmail"));
					cus.setMobile(rs.getString("cusMobile"));
					cus.setPass(rs.getString("password"));
					return cus;
				  }
				
				} catch (Exception e) {
					
					System.out.print(e);
				} 
				return null;
			}

	//Forget Password
	public void forget(Customer cus) {
		
		try {
			
			String query = "update customer SET password = '"+cus.getPass()+"' where cusEmail = '"+cus.getEmail()+"'";
			Statement stmt = Connector.getConnection().createStatement();
			stmt.executeUpdate(query);
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
}
