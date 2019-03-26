package com.account;

import java.util.List;
import java.util.Map;

public class AccountLogic {
	AccountDao accountDao = new AccountDao();
	public List<Map<String, Object>> accountList() {//계좌리스트
		List<Map<String,Object>> accountList = null;
		accountList = accountDao.accountList();
		return accountList;
	}
	
	 public List<Map<String, Object>> accountAdd() {//계좌추가
	  List<Map<String,Object>> accountAdd = null; accountAdd =
	  accountDao.accountAdd(); return accountAdd; 
	  }
	 

}
