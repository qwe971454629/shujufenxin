package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.AdminDao;
import com.etc.entity.Admin;
import com.etc.entity.Verify;
import com.etc.util.DBUtil;
import com.etc.util.PageData;

public class AdminDaoImpl implements AdminDao {

	@Override
	public boolean register(Verify verify) {
		return DBUtil.execute("insert into verify values(null,?,?,?,?,now())", verify.getName(),
				verify.getPassword(),verify.getEmail(),verify.getMobile()) > 0;
	}

	@Override
	public Admin login(String name, String pwd) {
		List<Admin> list = (List<Admin>) DBUtil.select("select * from admin where name=? and pwd=?",
				Admin.class, name, pwd);
		if (list.size() > 0) return list.get(0);
		return null;
	}

	@Override
	public PageData<Verify> queryVerify(int page, int pageSize, String vNameLike) {
		PageData<Verify> pd = DBUtil.getPage("select * from verify where name like ? or email like ? or mobile like ?", page, pageSize, Verify.class,
				"%" + vNameLike + "%","%" + vNameLike + "%","%" + vNameLike + "%");
		return pd;
	}

	@Override
	public boolean verify(int id) {
		List<Verify> list = (List<Verify>)DBUtil.select("select * from verify where id=?", Verify.class,id);
		Verify verify = list.get(0);
		boolean flag1=DBUtil.execute("insert into admin values(null,?,?,'ÄÐ',?,?,null,0,?)", verify.getName(),
				verify.getPassword(),verify.getEmail(),verify.getMobile(),verify.getAddtime()) > 0;
		if(flag1==true) {
			boolean flag2=DBUtil.execute("delete from verify where id=?", id) > 0;
			return flag2;
		}				
		return false;
	}

	@Override
	public boolean delVerify(int id) {
			boolean flag=DBUtil.execute("delete from verify where id=?", id) > 0;
			return flag;
	}
	
	@Override
	public PageData<Admin> queryAdmin(int page, int pageSize, String vNameLike) {
		PageData<Admin> pd = DBUtil.getPage("select * from admin where name like ? or sex like ? or email like ? or mobile like ?", page, pageSize,Admin.class,
				"%" + vNameLike + "%","%" + vNameLike + "%","%" + vNameLike + "%","%" + vNameLike + "%");
		return pd;
	}
	
	@Override
	public boolean delAdmin(int id) {
			boolean flag=DBUtil.execute("delete from admin where id=?", id) > 0;
			return flag;
	}
	
	@Override
	public boolean addAdmin(Admin admin) {
		return DBUtil.execute("insert into admin values(null,?,?,?,?,?,?,?,now())", admin.getName(), admin.getPwd(),admin.getSex(),admin.getEmail(),admin.getMobile(),admin.getImage(),admin.getStatus())>0;
	}

	@Override
	public Admin queryAdminOne(int id) {
		Admin admin = ((List<Admin>)DBUtil.select("select * from admin where id=?",Admin.class,id)).get(0);
		return admin;
	}
	
	@Override
	public boolean editAdmin(Admin admin) {
		return DBUtil.execute("update admin set name=?,pwd=?,sex=?,email=?,mobile=?,image=?,status=? where id=?", admin.getName(), admin.getPwd(),admin.getSex(),admin.getEmail(),admin.getMobile(),admin.getImage(),admin.getStatus(),admin.getId())>0;
	}

	@Override
	public boolean infoEdit(Admin admin) {
		return DBUtil.execute("update admin set name=?,sex=?,email=?,mobile=?,image=? where id=?", admin.getName(),admin.getSex(),admin.getEmail(),admin.getMobile(),admin.getImage(),admin.getId())>0;
	}

	@Override
	public boolean pwdEdit(Admin admin) {
		return DBUtil.execute("update admin set pwd=? where id=?",admin.getPwd(),admin.getId())>0;
	}
}
