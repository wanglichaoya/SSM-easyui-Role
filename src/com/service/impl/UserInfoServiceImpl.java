package com.service.impl;

import com.dao.IUserInfoDao;
import com.po.UserInfo;
import com.service.IUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements IUserInfoService {
    @Autowired
    private IUserInfoDao iUserInfoDao;
    @Override
    public List<UserInfo> queryUser(UserInfo userInfo) {
        //当前第几页
        int page = userInfo.getPage();
        //每页显示多少条
        int rows = userInfo.getRows();

        //判断可以分成多少页
        int total = queryTotal();



        int totalPage = 0;
        int start = 0;

        if(total % rows == 0){
            totalPage = total / rows;
        }else{
            totalPage = total / rows + 1;
        }

        if(page == totalPage){
            start = (page-1)*rows ;
        }else{
            start = (page-1)*rows +1 ;
        }


//        int end = page * rows;
        int end = rows;
        userInfo.setStart(start);
        userInfo.setEnd(end);
        System.out.println(" start " + start + " end" + end);
        List<UserInfo> userInfoList = iUserInfoDao.queryUser(userInfo);
        return userInfoList;
    }

    @Override
    public int insert(UserInfo userInfo) {
        int result = iUserInfoDao.insert(userInfo);
        return result;
    }

    @Override
    public int editUser(UserInfo userInfo) {
        int result = iUserInfoDao.editUser(userInfo);
        return result;
    }

    @Override
    public int delUser(int id) {
        int result = iUserInfoDao.delUser(id);
        return result;
    }

    @Override
    public int queryTotal() {
        return iUserInfoDao.queryTotal();
    }


}
