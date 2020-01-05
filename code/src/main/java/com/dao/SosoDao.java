package com.dao;
import com.pojo.MobileCard;
import java.util.List;

public interface SosoDao {
    int userRegister(MobileCard newUser);
    List<MobileCard> queryAllUser();
}