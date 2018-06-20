package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.dao.UserDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Author Misaki
 * Create By 2018/6/15
 */
public class DeleteUserAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    @Resource
    UserDao userDao;
    @Override
    public String execute() throws Exception {
        String s=request.getParameter("id");
        int i = Integer.parseInt(s);
        userDao.deleteUser(i);
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {

        this.request =httpServletRequest;
    }
}
