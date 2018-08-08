package airline.service.impl;

import airline.bean.Admin;
import airline.dao.IAdminDao;
import airline.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

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
@Service("adminService")
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
    public boolean moveAdmin(String accountname) {
        int count = adminDao.deleteAdmin(accountname);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean alterAdminPwd(Admin admin) {
        int count = adminDao.updateAdminPwd(admin);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean alterAdminProfile(Admin admin) {
        int count = adminDao.updateAdminProfile(admin);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Admin readAdminProfile(String accountname) {
        return adminDao.showAdminProfile(accountname);
    }

    @Override
    public List<Admin> findAllAdmin() {
        List<Admin> admins = adminDao.selectAllAdmin();
        if (admins.size() > 0) {
            return admins;
        } else {
            return null;
        }
    }


    @Override
    public List<Admin> findAdminByName(String name) {
        List<Admin> admins = adminDao.selectAdminByName(name);
        if (admins.size() > 0) {
            return admins;
        } else {
            return null;
        }
    }

    @Override
    public Admin checkLogin(String accountname, String password) {
        Admin admin = adminDao.selectAdminByAcname(accountname);
        if (admin != null && admin.getPassword().equals(password)) {
            return admin;
        } else {
            return null;
        }
    }
}
