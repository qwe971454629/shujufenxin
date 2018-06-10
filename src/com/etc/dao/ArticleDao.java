package com.etc.dao;

import java.util.List;


import com.etc.entity.Month;



public interface ArticleDao {

	// 查询所有article
	public List<Month> queryArticles();

	

	public boolean delArticleById(String id);

	// 模糊查询所有article
	public List<Month> queryArticlesLike(String articleLike);

	public List<Month> queryTopArticlesLike(String articleLike);

}
