package com.po;

import com.alibaba.fastjson.JSONObject;

public class ChildrenPo {
    private String text;
    private String state;
    private JSONObject url;

    public ChildrenPo(String text, String state, JSONObject url) {
        this.text = text;
        this.state = state;
        this.url = url;
    }

    public String getText() {

        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public JSONObject getUrl() {
        return url;
    }

    public void setUrl(JSONObject url) {
        this.url = url;
    }
}
