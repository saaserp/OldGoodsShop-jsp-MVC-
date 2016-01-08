package com.dkkj.tools;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Encryption implements Encryption{

	

	@Override
	public String getEncryptionString(String pwd) {
		// TODO Auto-generated method stub
		String str="";
		try {
			MessageDigest md5=MessageDigest.getInstance("md5");

			byte [] by=md5.digest(pwd.getBytes());
			for(int i=0;i<by.length;i++){
				str+=Byte.toString(by[i]);
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			str="";
			e.printStackTrace();
		}
		return str;
		
	}

}
