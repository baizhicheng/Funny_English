package com.product.register.dao;  
  
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;  
  
import java.util.Map;

import com.product.jdbc.dbutil.JdbcUtils;  
import com.product.register.service.RegisterService;  
  
public class RegisterDao implements RegisterService {  
    private JdbcUtils jdbcUtils = null;  
    public RegisterDao() {  
        // TODO Auto-generated constructor stub  
        jdbcUtils = new JdbcUtils();  
    }  
  
    /* 完成用户对注册的Dao的编写 
     * @see com.product.register.service.RegisterService#registerUser(java.util.List) 
     */  
    @Override  
	public boolean  registerUser(Map<String,Object> params){
		boolean result  = false;
		String sql  = "INSERT INTO `wordlist`.`users` (`username`, `realname`, `pswd`)"
				+" VALUES (?, ?, ?)";
		List  insPara = new  ArrayList();
		insPara.add(params.get("username"))	;
		insPara.add(params.get("realname"))	;
		insPara.add(params.get("pswd"))	;	
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
}  
 