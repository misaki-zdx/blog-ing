package com.sccc.blog.dao;


import com.sccc.blog.bean.po.BlogUserEntity;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/4
 */
public interface UserDao {
    public void saveUser(String name, String password,String email);

    public List<BlogUserEntity> getAll(Class clazz);

    public int getUser(String name, String password);

    public int getUser(String name);

}
