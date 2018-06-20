package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.bean.po.BlogArticleEntity;
import com.sccc.blog.dao.ArticleDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author Misaki
 * Create By 2018/6/14
 */
public class ArticleAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private List<BlogArticleEntity> list = null;
    @Resource
    private ArticleDao articleDao;

    public List<BlogArticleEntity> getList() {
        return list;
    }

    @Override
    public String execute() throws Exception {
        String title = request.getParameter("id");
        list = articleDao.searchTitle(title);
        /*result.put("title",list.get(1).getTitle());
        result.put("content",list.get(0).getContent());
        result.put("author",list.get(0).getAuthor());
        result.put(("date"),list.get(0).getTimes());*/
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
