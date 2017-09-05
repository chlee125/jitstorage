package com.jitstorage.dao;

public interface JitInterface {

	String login(String id, String pw);

	int regist(String id, String pw);

	String chkEmail(String id);

}
