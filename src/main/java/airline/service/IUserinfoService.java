package airline.service;


import airline.bean.Userinfo;

import java.util.List;

public interface IUserinfoService {
    //添加用户
    boolean addUserinfo(Userinfo userinfo);

    //删除用户
    boolean moveUserinfo(String idnumber);

    //修改用户个人信息
    boolean alterUserinfo(Userinfo userinfo);

    //查看用户个人信息
    List<Userinfo> findAllUserinfo(String user_acname);

    //查看用户个人信息
    List<Userinfo> findUserinfoByName(String user_acname, String name);

}
