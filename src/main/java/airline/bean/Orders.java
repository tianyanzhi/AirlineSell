package airline.bean;

import org.apache.ibatis.annotations.Param;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/7 0007 15:41
 * @Version 1.0
 * @mark null
 * @Description
 */
public class Orders {
    private Integer id;

    private String userinfo_name;

    private String user_name;

    private String user_phone;

    private String user_idcard;

    private String flight_num;

    private String flight_start;

    private String flight_end;

    private String flight_starttime;

    private String flight_endtime;

    private Double price;

    private int status;

    private Date genetime;

    private Date printtime;

    private Date returntime;

    private Date paytime;

    public Orders() {
        super();
    }

    public Orders(Integer id, String userinfo_name, String user_name, String user_phone, String user_idcard, String flight_num, String flight_start, String flight_end, String flight_starttime, String flight_endtime, Double price, int status, Date genetime, Date printtime, Date returntime, Date paytime) {
        this.id = id;
        this.userinfo_name = userinfo_name;
        this.user_name = user_name;
        this.user_phone = user_phone;
        this.user_idcard = user_idcard;
        this.flight_num = flight_num;
        this.flight_start = flight_start;
        this.flight_end = flight_end;
        this.flight_starttime = flight_starttime;
        this.flight_endtime = flight_endtime;
        this.price = price;
        this.status = status;
        this.genetime = genetime;
        this.printtime = printtime;
        this.returntime = returntime;
        this.paytime = paytime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserinfo_name() {
        return userinfo_name;
    }

    public void setUserinfo_name(String userinfo_name) {
        this.userinfo_name = userinfo_name;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_idcard() {
        return user_idcard;
    }

    public void setUser_idcard(String user_idcard) {
        this.user_idcard = user_idcard;
    }

    public String getFlight_num() {
        return flight_num;
    }

    public void setFlight_num(String flight_num) {
        this.flight_num = flight_num;
    }

    public String getFlight_start() {
        return flight_start;
    }

    public void setFlight_start(String flight_start) {
        this.flight_start = flight_start;
    }

    public String getFlight_end() {
        return flight_end;
    }

    public void setFlight_end(String flight_end) {
        this.flight_end = flight_end;
    }

    public String getFlight_starttime() {
        return flight_starttime;
    }

    public void setFlight_starttime(String flight_starttime) {
        this.flight_starttime = flight_starttime;
    }

    public String getFlight_endtime() {
        return flight_endtime;
    }

    public void setFlight_endtime(String flight_endtime) {
        this.flight_endtime = flight_endtime;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getGenetime() {
        return genetime;
    }

    public void setGenetime(Date genetime) {
        this.genetime = genetime;
    }

    public Date getPrinttime() {
        return printtime;
    }

    public void setPrinttime(Date printtime) {
        this.printtime = printtime;
    }

    public Date getReturntime() {
        return returntime;
    }

    public void setReturntime(Date returntime) {
        this.returntime = returntime;
    }

    public Date getPaytime() {
        return paytime;
    }

    public void setPaytime(Date paytime) {
        this.paytime = paytime;
    }
}
