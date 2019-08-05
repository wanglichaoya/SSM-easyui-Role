package com.util;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ResponseUtil {

    public static void Write(HttpServletResponse response, JSONObject object){

        try {
            PrintWriter printWriter;
            response.setContentType("text/html;charset=utf-8");
            printWriter = response.getWriter();
            printWriter.println(object.toString());
            printWriter.flush();
            printWriter.close();

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


}
