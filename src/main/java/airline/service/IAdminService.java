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

    //修改管理员信息
    boolean modifyyAdmin();

    //查询所有管理员信息
    List<Admin> findAllAdmin();

    //根据账户名字查询，保留方法
    List<Admin> findAdminByName(String acname);
}
