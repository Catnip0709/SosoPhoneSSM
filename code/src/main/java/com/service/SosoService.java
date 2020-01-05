package com.service;
import com.pojo.MobileCard;
import java.util.List;

public interface SosoService {
    int userRegister(MobileCard newUser);

    List<MobileCard> queryAllUser();
}
