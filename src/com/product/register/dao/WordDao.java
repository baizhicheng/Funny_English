package com.product.register.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.product.jdbc.dbutil.JdbcUtils;

public class WordDao {

	private JdbcUtils jdbcUtils = null;
	public WordDao() {	 
		jdbcUtils = new JdbcUtils();
	}
	/**
	 * 单词添加
	 * @param params
	 * @return
	 */
	public boolean  saveWord(Map<String,Object> params){
		boolean result  = false;
		String sql  = "INSERT INTO `wordlist`.`word` (`编号`, `单词`, `词性`, `词义`, `例句`)"
				+" VALUES (?, ?, ?,?,?)";
		List  insPara = new  ArrayList();
		insPara.add(params.get("number"))	;
		insPara.add(params.get("word"))	;
		insPara.add(params.get("verb"))	;
		insPara.add(params.get("meaning"))	;
		insPara.add(params.get("sentence"))	;	
		for(int i =0;i<insPara.size();i++){
			System.err.println(insPara.get(i));
		}
		try {
			jdbcUtils.getConnection();
			result =  jdbcUtils.updateByPreparedStatement(sql,insPara);
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseConn();
		}
		return  result;
	}
	
	public List<Map<String,Object>>   getAllWord(){
		String sql  = "SELECT *  FROM wordlist.word";
		List<Map<String,Object>>   result =null;
		try {
			jdbcUtils.getConnection();
			result =   jdbcUtils.findMoreResult(sql,null);
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseConn();
		}
		return  result;
	}
	
	public boolean  delWord(String  BH){
		boolean result  = false;
		String sql  = "delete from  `wordlist`.`word`  where 编号=? " ;
			 
		List  insPara = new  ArrayList();
		insPara.add(BH)	;
		try {
			jdbcUtils.getConnection();
			result =  jdbcUtils.updateByPreparedStatement(sql,insPara);
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseConn();
		}
		return  result;
	}
	
	 
	public  Map<String, Object>  SearchWord(String  BH){
		 Map<String, Object> result  = null;
		String sql  = "SELECT 编号, 单词, 词性, 词义, 例句 "
				+ "from  `wordlist`.`word`  where 单词=? " ;
			 
		List  insPara = new  ArrayList();
		insPara.add(BH)	;
		try {
			jdbcUtils.getConnection();
			result =  jdbcUtils.findSimpleResult(sql,insPara);
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseConn();
		}
		return  result;
	}
	
}
