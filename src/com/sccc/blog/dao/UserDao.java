package com.sccc.blog.dao;


import com.sccc.blog.bean.po.BlogUserEntity;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/4
 */
public interface UserDao {
    public void saveUser(String name, String password,String email);

    public void saveUser(String name, String password,String email,int type);
    public void deleteUser(int id);
    public void updateUser(String name, String password,String email,int type,int id);
    public List<BlogUserEntity> getAll();

    public int getUser(String name, String password);

    public int getUser(String name);
    public List getUser(int id);


}
