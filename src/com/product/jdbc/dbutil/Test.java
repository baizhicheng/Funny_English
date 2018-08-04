package com.product.jdbc.dbutil;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		 Connection  conn =  null ;
		
		 try{
			 JdbcUtils  jdbcUtil = new  JdbcUtils();
			 String sql = "SELECT * FROM wordlist.word " ;
			   jdbcUtil.getConnection();
			 List<Map<String,Object>> result =  jdbcUtil.findMoreResult(sql,null);
			 for(int i = 0;i<result.size();i++){
				 Map<String,Object>  recode =  result.get(i);
				 System.err.println(recode.get("编号")+ ";"+recode.get("单词")+""+recode.get("词义"));
			 }
		 } catch (Exception e) {
				 e.printStackTrace();
			}finally{
				if(conn!=null){
					try {
					conn.close();
					}catch (Exception e) {
						 e.printStackTrace();
					}
				}
			}
	}

}
