package com.etc.dao;

import com.etc.entity.Admin;
import com.etc.entity.Verify;
import com.etc.util.PageData;

public interface AdminDao {

	//ע��
	boolean register(Verify verify);

	//��¼
	Admin login(String name, String pwd);

	//��ѯ�������
	PageData<Verify> queryVerify(int page, int pageSize, String vNameLike);

	//���
	boolean verify(int id);

	//ɾ���������
	boolean delVerify(int id);
	
	//��ѯ����Ա
	PageData<Admin> queryAdmin(int page, int pageSize, String vNameLike);
	
	//ɾ������Ա
	boolean delAdmin(int id);
	
	//��ӹ���Ա
	boolean addAdmin(Admin admin);

	//��ѯ����Աĳ����¼
	Admin queryAdminUI(int id);
	
	//�޸Ĺ���Ա
	boolean editAdmin(Admin admin);

	//�޸ĸ�����Ϣ
	boolean infoEdit(Admin admin);

	//�޸�����
	boolean pwdEdit(Admin admin);

}
