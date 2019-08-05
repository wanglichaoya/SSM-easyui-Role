package com.controller;

import com.exception.MyException;
import com.service.IUserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/*
使用注解的形式来设置事务
@Transactional
*/
@RequestMapping("/user")
@Controller
public class UserInfoController {
    @Resource
    private IUserInfoService iUserInfoService;

    @Resource
    private SleepTest sleepTest;

    @RequestMapping("/getUserInfo")
    public String getUserInfo() {
        System.out.println("已经到达了这儿");
       /* List<UserInfo> userInfoList = iUserInfoService.queryUser();
        for (UserInfo u : userInfoList) {
            System.out.println("用户的信息为： " + u.toString());
        }*/

        sleepTest.sle();
       /* int result = iUserInfoService.insert();
        if(result>0){
            System.out.println("新增成功！");
        }*/
        try {
            int a = 2/0;
        }catch (Exception e){
           System.out.println("异常为"+ e.getMessage());
           throw new MyException();
        }

        sleepTest.sle();




        return "index";
    }
}
