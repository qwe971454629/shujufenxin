package com.etc.service;

import java.util.List;


import com.etc.entity.Month;



public interface ArticleSerivce {

	public List<Month> getArticles();
	
	
	
	public boolean delArticle(String id);
	
	public List<Month> getArticlesLike(String articleLike);
	

	public List<Month> getTopArticlesLike(String articleLike);


	
}
