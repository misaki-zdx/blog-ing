package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.bean.po.BlogArticleEntity;
import com.sccc.blog.dao.ArticleDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 * Author Misaki
 * Create By 2018/6/12
 */
public class LoadingAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private List<BlogArticleEntity> list =new ArrayList<>();
    private  int page;
    private static int count;
    @Resource
    ArticleDao a;

    public int getPage() {
        return page;
    }

    public List<BlogArticleEntity> getList() {
        return list;
    }

    @Override
    public String execute() throws Exception {
        String i = request.getParameter("limit");
        int temp = Integer.parseInt(i);
        switch (temp) {
            case 1:
                count = 0;
                break;
            case 2:
                count -= 5;
                break;
            case 3:
                count += 5;
                break;
        }
        page=count;
        list = a.limit(page);
        for(BlogArticleEntity b: list){
            System.out.println(b);
        }
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
