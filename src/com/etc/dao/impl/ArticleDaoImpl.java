package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.ArticleDao;

import com.etc.entity.Month;
import com.etc.util.DBUtil;

public class ArticleDaoImpl implements ArticleDao {

	// ²éÑ¯ËùÓÐarticle
	@SuppressWarnings("unchecked")
	public List<Month> queryArticles() {
		return (List<Month>) DBUtil.select("select * from jsd_month", Month.class);

	}
	@Override
	public boolean delArticleById(String id) {
		// TODO Auto-generated method stub
		return  DBUtil.execute("delete from jsd_month where itemId=?", id)>0;
	}

	


	@Override
	public List<Month> queryArticlesLike(String articleLike) {
		// TODO Auto-generated method stub
		return (List<Month>) DBUtil.select("select * from jsd_month where id like ? or month like ?",
				Month.class, "%" + articleLike + "%", "%" + articleLike + "%");
	}
	@Override
	public List<Month> queryTopArticlesLike(String articleLike) {
		// TODO Auto-generated method stub
		return (List<Month>) DBUtil.select("select * from jsd_month where id like ? or number like ? order by month desc limit 3",
				Month.class, "%" + articleLike + "%", "%" + articleLike + "%");
	}
	


}
