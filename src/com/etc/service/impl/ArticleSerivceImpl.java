package com.etc.service.impl;

import java.util.List;

import com.etc.dao.ArticleDao;
import com.etc.dao.impl.ArticleDaoImpl;
import com.etc.entity.Month;
import com.etc.service.ArticleSerivce;

/**
 * 
 * 
 * @author Administrator
 *
 */
public class ArticleSerivceImpl implements ArticleSerivce {

	ArticleDao ad = new ArticleDaoImpl();

	public List<Month> getArticles() {
		return ad.queryArticles();
	}

	

	

	public List<Month> getArticlesLike(String articleLike) {
		return ad.queryArticlesLike(articleLike);
	}







	@Override
	public boolean delArticle(String id) {
		// TODO Auto-generated method stub
		return ad.delArticleById(id);
	}





	@Override
	public List<Month> getTopArticlesLike(String articleLike) {
		// TODO Auto-generated method stub
		return null;
	}

}
