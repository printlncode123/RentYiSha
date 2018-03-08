package com.util;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

public class OrderUtil {
  static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
 public static  String getOrderId(){
	 return UUID.randomUUID().toString();
 }
 public static String getOrderDetailId(){
	 StringBuilder sBuilder=new StringBuilder();
	 String string=sdf.format(new Date());
	 String mm[]= string.split(" ");
	 String a1[]=mm[0].split("-");
	 String a2[]=mm[1].split(":");
	 for (String str : a1) {
		sBuilder.append(str);
	}
	 for (String str2 : a2) {
		sBuilder.append(str2);
	}
	 return sBuilder.toString();
 }
 public static Timestamp getTimeDate(long d,int x) throws ParseException{
	 
	 Timestamp ts=new Timestamp(d);
	 Date date=new Date();
	 date=ts;//Timestamp转Date
	 //System.out.println(date);
	 Calendar calendar=Calendar.getInstance();
     calendar.setTime(date);
     calendar.add(Calendar.HOUR, x);
     //String finaltime=sdf.format(calendar.getTime());
     Date dd=calendar.getTime();
     // return Timestamp.valueOf(finaltime);
     return new Timestamp(dd.getTime());//date转ts
 }
 
   public static void main(String[] args) {
	  /*测试时间的叠加
	  try {
		System.out.println(getTimeDate(System.currentTimeMillis(), 1));
	} catch (ParseException e) {
		e.printStackTrace();
	}
	*/
	 /*  订单详情的id的生成测试
	  *  getOrderDetailId();*/
	   /*订单id生成的测试
	    * System.out.println(getOrderId());*/
	  /* System.out.println( getOrderDetailId());*/
	  /* System.out.println(new Timestamp(System.currentTimeMillis()).toString().substring(0,new Timestamp(System.currentTimeMillis()).toString().indexOf(".") ));*/
	   /*System.out.println(new Timestamp(System.currentTimeMillis()));*/
	   System.out.println(Timestamp.valueOf(new Timestamp(System.currentTimeMillis()).toString()));
}
}
