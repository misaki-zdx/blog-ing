package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.dao.UserDao;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Author Misaki
 * Create By 2018/6/18
 */
public class updateUser extends ActionSupport {
    @Resource
    UserDao userDao;
    @Override
    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("userName");
        String password= request.getParameter("password");
        String email= request.getParameter("email");
        int type= Integer.parseInt(request.getParameter("type"));
        userDao.updateUser(name,password,email,type,id);
        return SUCCESS;
    }
}
