package com.po;

public class TreePo {

    private String text;
    private String state;

    public TreePo() {
    }

    public TreePo(String text, String state) {

        this.text = text;
        this.state = state;
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
}
