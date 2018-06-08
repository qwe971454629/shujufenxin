package com.etc.util;


import java.util.List;

/**
 * ��ҳ������ , �����˷��ص�������Ϣ
 */
public class PageData<T> {
	private List<T> data; // ��ѯ������ ,����: ���ǵ�ǰҳ�����е��û�

	private Integer total; // �ܼ�¼��

	private Integer pageSize;// ÿҳ����

	private Integer page;// ҳ��
	
	private Integer totalPage; //��ҳ��

	public PageData() {
		super();
	}

	/**
	 * 
	 * @param data
	 * @param total
	 * @param pageSize
	 * @param page
	 */
	public PageData(List<T> data, Integer total, Integer pageSize, Integer page) {
		super();
		this.data = data;
		this.total = total;
		this.pageSize = pageSize;
		this.page = page;
		
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	//��ҳ��  users ->6  ÿҳ��ʾ3����¼-> ��ҳ��Ϊ2ҳ
	public int getTotalPage() {
		int num = total / pageSize; //6/4  =>1
		if (total % pageSize != 0)
			num++; //2
		return num; //2
	}

	@Override
	public String toString() {
		return "{total:" + total + ",data:" + data + "}";
	}
}
