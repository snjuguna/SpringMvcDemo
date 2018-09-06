package com.springmvcsecurity.dao;
 
import java.util.List;

import com.springmvcsecurity.model.UserInfo;
 
public interface UserInfoDAO {
     
    public UserInfo findUserInfo(String userName);
     
    // [USER,AMIN,..]
    public List<String> getUserRoles(String userName);
     
}