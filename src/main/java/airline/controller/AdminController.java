package airline.controller;

import airline.bean.Admin;
import airline.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/3 0003 16:48
 * @Version 1.0
 * @mark null
 * @Description
 */
@Controller
public class AdminController {
    @Autowired
    @Qualifier("adminService")
    private IAdminService service;

    public IAdminService getService() {
        return service;
    }

    public void setService(IAdminService service) {
        this.service = service;
    }

    //插入数据，增加一个管理员
    @RequestMapping("registerAdmin.do")
    public String doInsertAdmin(Admin admin) {
        System.err.println("######################################"+admin.getAccountname());
        System.err.println("######################################"+admin.getAuthority());
        if (service.addAdmin(admin)) {
            return "/success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }
}
