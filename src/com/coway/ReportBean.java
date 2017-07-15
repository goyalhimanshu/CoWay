package com.coway;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

public class ReportBean
{

	String rideid;
	String email,report;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public String getRideid() {
		return rideid;
	}
	public void setRideid(String rideid) {
		this.rideid = rideid;
	}
	
	public int reportsend()
	{
		String reportid= UUID.randomUUID().toString();
		Connection con=DBInfo.getConnection();
		String query="insert into feedback values(?,?,?,?,?)";
		try
		{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, reportid);
			ps.setString(2, rideid);
			ps.setString(3, email);
			ps.setString(4, report);
			ps.setString(5, "false");
			ps.executeUpdate();
			ps.close();


		}catch(SQLException e){System.out.println(e.getMessage());}

		return 1;
	}
}
