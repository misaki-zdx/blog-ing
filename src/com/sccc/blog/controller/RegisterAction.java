package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;

import com.sccc.blog.dao.UserDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Author Misaki
 * Create By 2018/6/3
 */

public class RegisterAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private String state = "NO";
    private Map<String, Object> result = new HashMap<>();
    @Resource
    private UserDao userDao;

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    @Override
    public String execute() throws Exception {
        String name = request.getParameter("name");
        int have = userDao.getUser(name);
        try {
            if (have == 0) {
                userDao.saveUser(name, request.getParameter("password"), request.getParameter("email"));
                state = "OK";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        result.put("state", state);
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
