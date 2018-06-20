package com.sccc.blog.controller;
import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.dao.UserDao;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Author Misaki
 * Create By 2018/6/15
 */
public class SaveUserAction  extends ActionSupport {
    @Resource
    UserDao userDao;
    @Override
    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        String name = request.getParameter("userName");
        String password= request.getParameter("password");
        String email= request.getParameter("email");
        int type= Integer.parseInt(request.getParameter("type"));
        userDao.saveUser(name,password,email,type);
        return SUCCESS;
    }
}
