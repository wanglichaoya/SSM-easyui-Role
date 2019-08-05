package com.controller;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

public class Sleep implements MethodBeforeAdvice{
   /*
    , AfterReturningAdvice
    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o1) throws Throwable {
        System.out.println("起床前要穿衣服");

    }*/

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {

        System.out.println("睡觉前要脱衣服");
    }
}
