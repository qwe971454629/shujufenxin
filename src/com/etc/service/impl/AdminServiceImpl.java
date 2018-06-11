package com.etc.service.impl;

import com.etc.dao.AdminDao;
import com.etc.dao.impl.AdminDaoImpl;
import com.etc.entity.Admin;
import com.etc.entity.Verify;
import com.etc.service.AdminService;
import com.etc.util.PageData;

public class AdminServiceImpl implements AdminService{

	AdminDao ad = new AdminDaoImpl();
	
	@Override
	public boolean register(Verify verify) {
		return ad.register(verify);
	}

	@Override
	public Admin login(String name, String pwd) {
		return ad.login(name,pwd);
	}

	@Override
	public PageData<Verify> queryVerify(int page, int pageSize, String vNameLike) {
		// TODO Auto-generated method stub
		return ad.queryVerify(page,pageSize,vNameLike);
	}

	@Override
	public boolean verify(int id) {
		// TODO Auto-generated method stub
		return ad.verify(id);
	}

	@Override
	public boolean delVerify(int id) {
		// TODO Auto-generated method stub
		return ad.delVerify(id);

	}
	
	@Override
	public PageData<Admin> queryAdmin(int page, int pageSize, String vNameLike) {
		// TODO Auto-generated method stub
		return ad.queryAdmin(page,pageSize,vNameLike);
	}
	
	@Override
	public boolean delAdmin(int id) {
		// TODO Auto-generated method stub
		return ad.delAdmin(id);

	}
	
	@Override
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return ad.addAdmin(admin);
	}
	
	@Override
	public Admin queryAdminOne(int id) {
		// TODO Auto-generated method stub
		return ad.queryAdminOne(id);
	}
	
	@Override
	public boolean editAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return ad.editAdmin(admin);
	}

	@Override
	public boolean infoEdit(Admin admin) {
		// TODO Auto-generated method stub
		return ad.infoEdit(admin);
	}

	@Override
	public boolean pwdEdit(Admin admin) {
		return ad.pwdEdit(admin);
	}

}
