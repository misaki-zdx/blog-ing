package com.sccc.blog.bean.po;

import java.util.Date;

/**
 * Author Misaki
 * Create By 2018/6/12
 */
public class BlogArticleEntity {
    private int id;
    private String title;
    private String content;
    private String type;
    private String author;
    private Date times;

    @Override
    public String toString() {
        return "BlogArticleEntity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", type='" + type + '\'' +
                ", author='" + author + '\'' +
                ", times=" + times +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getTimes() {
        return times;
    }

    public void setTimes(Date times) {
        this.times = times;
    }
}
