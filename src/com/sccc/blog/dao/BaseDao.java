package com.sccc.blog.dao;

import org.hibernate.Session;

import java.util.List;


/**
 * Author Misaki
 * Create By 2018/6/4
 */
public interface BaseDao {

    public Session getSession();

    public void closeSession();

    public List search(String hql);
}
