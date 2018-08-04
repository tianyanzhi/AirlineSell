package airline.service.impl;

import airline.bean.Admin;
import airline.dao.IAdminDao;
import airline.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/3 0003 16:41
 * @Version 1.0
 * @mark null
 * @Description
 */
@Controller("adminService")
public class AdminServiceImpl implements IAdminService {
    @Autowired
    @Qualifier("IAdminDao")
    private IAdminDao adminDao;

    public IAdminDao getAdminDao() {
        return adminDao;
    }

    public void setAdminDao(IAdminDao adminDao) {
        this.adminDao = adminDao;
    }

    @Override
    public boolean addAdmin(Admin admin) {
        int count = adminDao.insertAdmin(admin);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean moveAdmin(int id) {
        return false;
    }

    @Override
    public boolean modifyyAdmin() {
        return false;
    }

    @Override
    public List<Admin> findAllAdmin() {
        return null;
    }

    @Override
    public List<Admin> findAdminByName(String acname) {
        return null;
    }
}
