package com.etc.dao;

import java.util.List;


import com.etc.entity.Month;



public interface ArticleDao {

	// ��ѯ����article
	public List<Month> queryArticles();

	

	public boolean delArticleById(String id);

	// ģ����ѯ����article
	public List<Month> queryArticlesLike(String articleLike);

	public List<Month> queryTopArticlesLike(String articleLike);

}
