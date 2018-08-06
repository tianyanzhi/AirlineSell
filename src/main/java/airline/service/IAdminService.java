package airline.service;

import airline.bean.Admin;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/3 0003 16:32
 * @Version 1.0
 * @mark null
 * @Description
 */
public interface IAdminService {
    //添加管理员
    boolean addAdmin(Admin admin);

    //删除管理员
    boolean moveAdmin(String accountname);

    //修改管理员密码
    boolean alterAdminPwd(Admin admin);

    //修改管理员个人信息
    boolean alterAdminProfile(Admin admin);

    //查看管理员个人信息
    //boolean readAdminProfile(String accountname);
    public Admin readAdminProfile(String accountname);

    //查询所有管理员信息
    List<Admin> findAllAdmin();

    //根据账户名字查询
    List<Admin> findAdminByName(String name);

    //登陆检查，根据账户名查找密码是否对应
    public Admin checkLogin(String accountname,String password);

}
