package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.bean.po.BlogUserEntity;
import com.sccc.blog.dao.UserDao;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/15
 */
public class getalluserAction extends ActionSupport{
    private List<BlogUserEntity> list = new ArrayList<>();
    @Resource
    UserDao userDao;
    public List<BlogUserEntity> getList() {
        return list;
    }

    @Override
    public String execute() throws Exception {
        list = userDao.getAll();
        for(BlogUserEntity b:list){
            System.out.println(b);
        }
        return SUCCESS;
    }
}
