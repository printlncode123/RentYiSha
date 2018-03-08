package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

//随机产生一个用户账号
public class RandomUid {
	public static String random(){
		  StringBuffer randomid=new StringBuffer("-/_%@");
		  for (int i = 0; i<9; i++) {
			randomid.append(i);
		}
		  
		  for (int i = 65; i < 123; i++) {
			char c=(char)i;
			randomid.append(c);
		}
		 
		  char a='\u0000';
		  StringBuilder sb1=new StringBuilder();
		  for (int i = 0; i < 4; i++) {
			a=randomid.toString().charAt(new Random().nextInt(randomid.toString().length()));
		    sb1.append(a);
		  }
		  String date=new SimpleDateFormat("yyyy-MM-ddhh:mm:ss").format(new Date());
		  String d[]=date.split("-");
		  String dit[]=d[d.length-1].split(":");
		  for (int i = 0; i < d.length-1; i++) {
			 sb1.append(d[i]);
			 /*System.out.println(sb1);*/
		}
		  for (int i = 0; i < dit.length; i++) {
			sb1.append(dit[i]);
		}
		  return sb1.toString();
	  }
	
	// 测试是否生成成功
	/*  public static void main(String[] args) {
		System.out.println(new RandomUid().random());
	}*/
}
