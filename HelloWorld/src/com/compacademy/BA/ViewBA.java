package com.compacademy.BA;

	
import com.compacademy.DOA.loginCRUD;
import com.compacademy.DOA.loginDOA;

	public class ViewBA {

		public int loginBAO(String username, String password) {
			loginDOA ldao = new loginDOA();
			// without using hibernate
			//int result = ldao.loginDAO(username, password);

			// using hibernate
			loginCRUD lCRUD = new loginCRUD();
			int result=lCRUD.loginCheck(username, password);
			return result;

		}

	}


	
