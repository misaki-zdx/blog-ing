package com.sccc.blog.dao;

import com.sccc.blog.bean.po.BlogArticleEntity;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/12
 */
public interface ArticleDao {
    public List<BlogArticleEntity> limit(int i);
}
