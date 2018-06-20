package com.sccc.blog.dao;

import com.sccc.blog.bean.po.BlogArticleEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/12
 */
public interface ArticleDao {
    public List<BlogArticleEntity> limit(int i);
    public List<BlogArticleEntity> searchTitle(String title);
}
