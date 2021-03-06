package com.mickey.service;

import java.util.List;

import com.mickey.pojo.User;

public interface UserService {
	// 查詢用戶列表
	public List<User> selectAllUser();

	// 建立用戶
	public int insertUser(User user);

	// 下載文件(主要更新下載次數)
	public int doDownloadFile(String photo);

	// 用戶登入
	public User doLogin(String username, String password);
}
