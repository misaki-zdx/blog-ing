package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.dao.UserDao;
import com.sccc.blog.dao.impl.UserDaoImp;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Author Misaki
 * Create By 2018/6/3
 */
public class LoginAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private Map<String,Object> result =new HashMap<>();
    private String state;
    @Resource
    private UserDao u;

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    @Override
    public String execute() throws Exception {

        int i = u.getUser(request.getParameter("name"), request.getParameter("password"));
        switch (i) {
            case 0:
                state = ERROR;
                break;
            case 1:
                state = SUCCESS;
                break;
            case 2:
                state = LOGIN;
                break;
        }
        result.put("state",state);

/*
        try {
            Map<String,Object> map =new HashMap<>();
            map.put("state",stuts);
           JSONObject json=JSONObject.fromObject(map);
            result=json.toString();
        }catch (Exception e){
            e.printStackTrace();
        }*/
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
