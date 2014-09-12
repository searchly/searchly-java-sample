package com.searchly.jest.sample.model;


import io.searchbox.annotations.JestId;

/**
 * @author ferhat
 */
public class Article {

    // JestId is optional, use when you want to set a property as ElasticSearch index id
    @JestId
    private Long id;

    private String author;
    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
