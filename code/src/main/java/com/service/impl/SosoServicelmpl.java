package com.service.impl;
import com.dao.SosoDao;
import com.pojo.MobileCard;
import com.service.SosoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SosoServicelmpl implements SosoService {
    @Autowired
    private SosoDao sosoDao;

    @Override
    public int userRegister(MobileCard newUser) {
        return sosoDao.userRegister(newUser);
    }

    @Override
    public List<MobileCard> queryAllUser() {
        return sosoDao.queryAllUser();
    }
}