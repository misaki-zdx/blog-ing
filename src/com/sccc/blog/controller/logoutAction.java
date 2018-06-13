package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.RequestWrapper;

/**
 * Author Misaki
 * Create By 2018/6/12
 */
public class logoutAction  extends ActionSupport implements ServletRequestAware{
    private HttpServletRequest request;
    @Override
    public String execute() throws Exception {
        request.getSession().removeAttribute("user");
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request=httpServletRequest;
    }
}
