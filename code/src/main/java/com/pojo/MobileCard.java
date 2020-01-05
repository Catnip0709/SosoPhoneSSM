package com.pojo;

//手机卡类
public class MobileCard {
    private String cardNumber;         //卡号
    private String userName;           //用户名
    private String passWord;           //密码
    private String serPackage;         //服务包
    private double consumAmount;       //总消费额
    private double money;              //余额
    private int realTalkTime;          //实际通话时间
    private int realSMSCount;          //实际短信数量
    private int realFlow;              //实际流量消耗

    public MobileCard() {
        this.realTalkTime = 0;
        this.realSMSCount = 0;
        this.realFlow = 0;
    }

    public String getcardNumber() {
        return cardNumber;
    }
    public String getuserName() {
        return userName;
    }
    public String getpassWord() {
        return passWord;
    }
    public String getserPackage() {
        return serPackage;
    }
    public double getconsumAmount() {
        return consumAmount;
    }
    public double getmoney() {
        return money;
    }
    public int getrealTalkTime() {
        return realTalkTime;
    }
    public int getrealSMSCount() {
        return realSMSCount;
    }
    public int getrealFlow() {
        return realFlow;
    }

    public void setcardNumber(String temp) {
        cardNumber = temp;
    }
    public void setuserName(String temp) {
        userName = temp;
    }
    public void setpassWord(String temp) {
        passWord = temp;
    }
    public void setserPackage(String temp) { serPackage = temp; }
    public void setconsumAmount(double temp) {
        consumAmount = temp;
    }
    public void setmoney(double temp) {
        money = temp;
    }
    public void setrealTalkTime(int temp) {
        realTalkTime = temp;
    }
    public void setrealSMSCount(int temp) {
        realSMSCount = temp;
    }
    public void setrealFlow(int temp) {
        realFlow = temp;
    }
}