package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.bean.po.BlogUserEntity;
import com.sccc.blog.dao.UserDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/15
 */
public class updateUserAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private BlogUserEntity user;
    @Resource
    UserDao userDao;

    public BlogUserEntity getUser() {
        return user;
    }

    @Override
    public String execute() throws Exception {
        String s = request.getParameter("id");
        int i = Integer.parseInt(s);
        user = (BlogUserEntity) userDao.getUser(i).get(0);
        return SUCCESS;

    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
