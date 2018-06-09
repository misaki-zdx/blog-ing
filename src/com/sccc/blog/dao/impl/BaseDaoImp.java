package com.sccc.blog.dao.impl;


import com.sccc.blog.dao.BaseDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/4
 */
public class BaseDaoImp implements BaseDao {
    @Resource
    protected SessionFactory sessionFactory;
    protected Session session;
    protected Transaction transaction;


    public void init() {
        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
    }

    public void destroy() {
        transaction.commit();
        session.close();
    }

    @Override
    public Session getSession() {
        init();
        return session;
    }

    @Override
    public void closeSession() {
        session.close();
    }

    @Override
    public List search(String hql) {
        init();
        List list = session.createQuery(hql).list();
        closeSession();
        return list;
    }
}
