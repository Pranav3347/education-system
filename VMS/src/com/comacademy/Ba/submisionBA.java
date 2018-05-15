package com.comacademy.Ba;

import com.comacademy.DAO.submisionDAO;

public class submisionBA {

	public void SubmisionBA(String submisionid, String requireid, String conid) {
		// TODO Auto-generated method stub
		submisionDAO sda= new submisionDAO();
		sda.SubmisionDAO(submisionid,requireid,conid);
	}

}
