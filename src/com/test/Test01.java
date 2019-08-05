package com.test;

import java.util.HashMap;
import java.util.Map;

public class Test01 {

    public static void main(String[] args){
      Map<String,String> map1 = new HashMap<String,String>();
      map1.put("one","一");
      map1.put("two","二");
      map1.put("three","三");

        Map<String,String> map2 = new HashMap<String,String>();
        map2.put("four","四");
        map2.put("five","五");
        map2.put("six","六");

        Map<String,String> map3 = new HashMap<String,String>();
        map3.putAll(map1);
        map3.putAll(map2);

        //合并后打印出合并后的map
        for (Map.Entry<String,String> entry: map3.entrySet()){
           System.out.println("key分别是" +entry.getKey() +" value 分别是：" + entry.getValue());
        }
    }
}
