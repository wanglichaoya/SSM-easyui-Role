package com.exception;

public class MyException extends ArithmeticException{
    public MyException(){
        super("自定义异常！");
    }
}
