package com.sccc.blog.dao.impl;

import com.sccc.blog.bean.po.BlogArticleEntity;
import com.sccc.blog.dao.ArticleDao;
import org.hibernate.query.Query;
import org.springframework.beans.factory.BeanClassLoaderAware;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/12
 */
@Repository
public class ArticleImp extends BaseDaoImp implements ArticleDao {
    @Override
    public List<BlogArticleEntity> limit(int i) {
        init();
        Query q = session.createQuery("from BlogArticleEntity");
        q.setFirstResult(i);
        q.setMaxResults(5);
        List<BlogArticleEntity> list = q.list();
        destroy();
        return list;
    }

    @Override
    public List<BlogArticleEntity> searchTitle(String title) {
        List<BlogArticleEntity> list = search("from BlogArticleEntity where id= '" + title + "'");
        return list;
    }
}
