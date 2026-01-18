package com.javaweb.utils;

import java.util.Map;
import java.util.TreeMap;


public enum DistrictCode {
    QUAN_BADINH ("BA ĐÌNH"),
    QUAN_CAUGIAY ("CẦU GIẤY"),
    QUAN_DONGDA ("ĐỐNG ĐA"),
    QUAN_HAIBATRUNG ("HAI BÀ TRƯNG"),
    QUAN_HOANKIEM ("HOAN KIẾM"),
    QUAN_THANHXUAN ("THANH XUÂN"),
    QUAN_HOANGMAI ("HOÀNG MAI"),
    QUAN_LONGBIEN ("LONG BIÊN"),
    ;


    private final String districtName;
    DistrictCode(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }


    public static Map<String,String> type(){
        Map<String,String> listType = new TreeMap<>();
        for(DistrictCode item : DistrictCode.values()){
            listType.put(item.toString() , item.districtName);
        }
        return listType;
    }

}
