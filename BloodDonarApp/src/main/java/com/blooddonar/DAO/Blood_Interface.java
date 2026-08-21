package com.blooddonar.DAO;

import java.util.List;

import com.blooddonar.model.BloodModel;

public interface Blood_Interface  {
	public String  donar(BloodModel bm);
	public List<BloodModel> searchDonor(String bloodgroup, String city);

}
