package com.controller.comm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/urlRouteJump")
@Controller
public class UrlRouteJumpController {

    //跳转到 layout页面
    @RequestMapping("/toLayout")
    public String toLayout() {
        return "index";
    }

    //跳转到 密码管理页面
    @RequestMapping("/toPwdPage")
    public String toPwdPage() {
        return "passwordManager";
    }

    //跳转到 普通会员页面
    @RequestMapping("/toPutongVipPage")
    public String toPutongVipPage() {
        return "putongVIP";
    }

    //跳转到 用户管理页面页面
    @RequestMapping("/toUserMagPage")
    public String toUserMagPage() {
        return "userManager";
    }

    //跳转到医院管理页面
    @RequestMapping("/toHospitalMagPage")
    public String toHospitalMagPage(){
        return "hospitalManager";
    }
    //跳转到诊所页面
    //return "../hospital/clinicManger";表示： 跳转到WEB-INF 下面的jsp 的上一级，然后到 hospital/clinicManager.jsp
    @RequestMapping("/toClinicPage")
    public String toClinicPage(){
        return "../hospital/clinicManager";
    }
}
