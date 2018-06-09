package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.common.api.JsonUtils;
import com.sccc.blog.common.api.LogUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class TestController {

    public String execute() throws Exception {
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpServletRequest request = ServletActionContext.getRequest();
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");

        LogUtils.log.debug(nickname);
        LogUtils.log.debug(password);
        LogUtils.log.debug(sex);

        Map<String, Object> map = new HashMap<>();

        map.put("status", 0);
        map.put("msg", "您的账号：" + (int) (Math.random() * 1000000000));

        LogUtils.log.debug(JsonUtils.writeValueAsString(map));
        out.write(JsonUtils.writeValueAsString(map));
        out.flush();
        out.close();
        return ActionSupport.NONE;
    }
}
