package com.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Dat {
	public static void main(String[] args) {
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(format.format(new Date()));
			String dString=format.format(new Date());
			try {
				Date date=(Date) format.parse(dString);
				System.out.println(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	        
	}
}
