package airline.dao;


import airline.bean.Userinfo;

import java.util.List;

public interface IUserinfoDao {
    //添加一个用户
    int insertUserinfo(Userinfo userinfo);

    //删除用户
    int deleteUserinfo(String idnumber);
    //修改用户个人信息
    int updateUserinfo(Userinfo userinfo);

    //查看用户个人信息
    List<Userinfo> selectAllUserinfo(String user_acname);
    //查看用户个人信息
    List<Userinfo> selectUserinfoByName(String user_acname, String name);
}
