package com.blooddonar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.blooddonar.model.BloodModel;
import com.blooddonor.util.DBConnection;

public class Blood_Implements implements Blood_Interface {

	String status = "fail";

	public String donar(BloodModel bm) {

		try {

			Connection con = DBConnection.getConnection();

			PreparedStatement ps = con.prepareStatement(
					"insert into donar (email,dname,age,gender,blood_group,phone,city) values (?,?,?,?,?,?,?)");
            ps.setString(1, bm.getemail());
			ps.setString(2, bm.getDname());
			ps.setString(3, bm.getAge());
			ps.setString(4, bm.getGender());
			ps.setString(5, bm.getBlood_group());
			ps.setString(6, bm.getPhone());
			ps.setString(7, bm.getCity());

			int n = ps.executeUpdate();

			if (n > 0) {
				status = "success";
			} else {
				status = "fail";
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	@Override
	public List<BloodModel> searchDonor(String bloodgroup, String city) {

		List<BloodModel> donors = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();

			String query = "select * from donar where blood_group=? and city like ?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, bloodgroup.trim());
			ps.setString(2, "%" + city.trim() + "%");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				BloodModel bm = new BloodModel();
                bm.setEmail(rs.getString("email"));
				bm.setDname(rs.getString("dname"));
				bm.setAge(rs.getString("age"));
				bm.setGender(rs.getString("gender"));
				bm.setBlood_group(rs.getString("blood_group"));
				bm.setPhone(rs.getString("phone"));
				bm.setCity(rs.getString("city"));

				donors.add(bm);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return donors;
	}
}