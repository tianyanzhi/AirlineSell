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

    //修改管理员信息
    int updateAdmin();

    //查找所有管理员（在页面上显示，可能需要分页）
    List<Admin> selectAllAdmin();

    //根据管理员“账户名字”来查找，保留方法，可能不需要用到
    List<Admin> selectAdminByName(String acname);
}
