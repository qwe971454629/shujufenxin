package com.etc.dao;

import com.etc.entity.Admin;
import com.etc.entity.Verify;
import com.etc.util.PageData;

public interface AdminDao {

	//注册
	boolean register(Verify verify);

	//登录
	Admin login(String name, String pwd);

	//查询待审核者
	PageData<Verify> queryVerify(int page, int pageSize, String vNameLike);

	//审核
	boolean verify(int id);

	//删除待审核者
	boolean delVerify(int id);
	
	//查询管理员
	PageData<Admin> queryAdmin(int page, int pageSize, String vNameLike);
	
	//删除管理员
	boolean delAdmin(int id);
	
	//添加管理员
	boolean addAdmin(Admin admin);

	//查询管理员某条记录
	Admin queryAdminUI(int id);
	
	//修改管理员
	boolean editAdmin(Admin admin);

	//修改个人信息
	boolean infoEdit(Admin admin);

	//修改密码
	boolean pwdEdit(Admin admin);

}
