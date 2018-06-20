package com.sccc.blog.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sccc.blog.bean.po.BlogArticleEntity;
import com.sccc.blog.dao.ArticleDao;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Author Misaki
 * Create By 2018/6/12
 */
public class LoadingAction extends ActionSupport implements ServletRequestAware {
    private HttpServletRequest request;
    private List<BlogArticleEntity> list = new ArrayList<>();
    private Map<String, Object> result = new HashMap<>();
    private int page = count;
    private static int count;
    @Resource
    ArticleDao a;


    public Map<String, Object> getResult() {
        return result;
    }

    @Override
    public String execute() throws Exception {
        String i = request.getParameter("limit");
        System.out.println("ixxxxx:" + i);
        if (null != i) {
            int temp = Integer.parseInt(i);

            switch (temp) {
                case 1:
                    page = 0;
                    break;
                case 2:
                    page -= 5;
                    break;
                case 3:
                    page += 5;
                    break;
            }
            System.out.println("Ç°page" + page + " count" + count);
            list = a.limit(page);
            System.out.println(list.size() + "" + list.isEmpty());

            if (page < 0) {
                count = 0;
            }else if (!list.isEmpty()) {
                count = page;
            }

            System.out.println("ºópage" + page + " count" + count);
            result.put("list", list);
            result.put("pages", page);
            System.out.println("size:" + list.size());

        }
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
