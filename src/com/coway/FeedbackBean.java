package com.coway;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import com.coway.DBInfo;


public class FeedbackBean
{

	String email,feedback;
	String feedbackid;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public int feedbackSend()
	{
		feedbackid= UUID.randomUUID().toString();
		Connection con=DBInfo.getConnection();
		String query="insert into feedback values(?,?,?,?)";
		try
		{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, feedbackid);
			ps.setString(2, email);
			ps.setString(3, feedback);
			ps.setString(4, "false");
			ps.executeUpdate();
			ps.close();


		}catch(SQLException e){System.out.println(e.getMessage());}
		return 1;
	}

}
