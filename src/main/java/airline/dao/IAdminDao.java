package airline.dao;

import airline.bean.Admin;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/3 0003 16:19
 * @Version 1.0
 * @mark null
 * @Description
 */
public interface IAdminDao {
    //添加一个管理员
    int insertAdmin(Admin admin);

    //删除管理员
    int deleteAdmin(String accountname);

    //修改密码
    int updateAdminPwd(Admin admin);

    //修改管理员个人信息
    int updateAdminProfile(Admin admin);

    //查看个人信息
    //int showAdminProfile(String accountname);
    Admin showAdminProfile(String accountname);

    //查找所有管理员（在页面上显示，需要分页）
    List<Admin> selectAllAdmin();

    //根据姓名模糊查询管理员
    List<Admin> selectAdminByName(String name);

    //登陆的实现，根据账户名查找密码
    Admin selectAdminByAcname(String accountname);






}
