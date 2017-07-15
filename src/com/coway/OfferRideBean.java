package com.coway;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OfferRideBean 
{
	String userid, rideid, dep_place, des_place, total_dist, total_time, date, hour, min, ampm, cost, total_seats, description ;

		
	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getRideid() {
		return rideid;
	}


	public void setRideid(String rideid) {
		this.rideid = rideid;
	}


	public String getDep_place() {
		return dep_place;
	}


	public void setDep_place(String dep_place) {
		this.dep_place = dep_place;
	}


	public String getDes_place() {
		return des_place;
	}


	public void setDes_place(String des_place) {
		this.des_place = des_place;
	}


	public String getTotal_dist() {
		return total_dist;
	}


	public void setTotal_dist(String total_dist) {
		this.total_dist = total_dist;
	}


	public String getTotal_time() {
		return total_time;
	}


	public void setTotal_time(String total_time) {
		this.total_time = total_time;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getHour() {
		return hour;
	}


	public void setHour(String hour) {
		this.hour = hour;
	}


	public String getMin() {
		return min;
	}


	public void setMin(String min) {
		this.min = min;
	}


	public String getAmpm() {
		return ampm;
	}


	public void setAmpm(String ampm) {
		this.ampm = ampm;
	}


	public String getCost() {
		return cost;
	}


	public void setCost(String cost) {
		this.cost = cost;
	}


	public String getTotal_seats() {
		return total_seats;
	}


	public void setTotal_seats(String total_seats) {
		this.total_seats = total_seats;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int submitRide()
	{ 
		
		String time=hour+":"+min+" "+ampm;
		Connection con=DBInfo.getConnection();
		String query="insert into rides values(?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,userid);
			ps.setString(2,rideid);
			ps.setString(3,dep_place);
			ps.setString(4,des_place);
			ps.setString(5,total_dist);
			ps.setString(6,total_time);
			ps.setString(7,date);
			ps.setString(8,time);
			ps.setString(9,cost);
			ps.setString(10,total_seats);
			ps.setString(11,description);
			ps.setString(12,"false");
			ps.executeUpdate();
			ps.close();
			
		}catch(SQLException e){e.printStackTrace();}
		return 1;
		
	}
}
