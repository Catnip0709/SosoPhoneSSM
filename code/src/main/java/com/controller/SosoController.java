package com.controller;
import com.pojo.MobileCard;
import com.service.SosoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/soso")
public class SosoController {
    @Autowired
    private SosoService sosoService;
    @Autowired
    HttpServletRequest request;

    @RequestMapping("/userRegisterWeb")
    public String userRegisterWeb(MobileCard newUser) {
        return "userRegister";
    }

    @RequestMapping(value = "/userRegister")
    public String userRegister() {
        MobileCard newUser = new MobileCard();
        newUser.setcardNumber(request.getParameter("cardNumber"));
        newUser.setuserName(request.getParameter("userName"));
        newUser.setpassWord(request.getParameter("passWord"));
        newUser.setserPackage(request.getParameter("serPackage"));
        newUser.setconsumAmount(Double.valueOf(request.getParameter("consumAmount")));
        newUser.setmoney(Double.valueOf(request.getParameter("money")));
        newUser.setrealTalkTime(Integer.valueOf(request.getParameter("realTalkTime")));
        newUser.setrealSMSCount(Integer.valueOf(request.getParameter("realSMSCount")));
        newUser.setrealFlow(Integer.valueOf(request.getParameter("realFlow")));
        sosoService.userRegister(newUser);
        return "userRegister";
    }

    @RequestMapping("/allUserWeb")
    public String allUserWeb(Model model) {
        List<MobileCard> list = sosoService.queryAllUser();
        model.addAttribute("list", list);
        return "allUser";
    }
}