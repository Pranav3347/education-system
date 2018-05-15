package com.comacademy.Ba;

import com.comacademy.DAO.DAOlogin;

public class BA {
	public int LoginBA(String username,String password) {
		System.out.println(username+password);
		DAOlogin LDA=new DAOlogin();
		int result=LDA.DAOLogin(username,password);
return result;
}
}
