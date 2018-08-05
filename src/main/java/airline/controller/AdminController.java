package airline.controller;

import airline.bean.Admin;
import airline.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

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
        if (service.addAdmin(admin)) {
            return "/success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据管理员账户名删除账户
    @RequestMapping("deleteAdmin.do")
    public String doDeleteAdmin(String accountname) {
        if (service.moveAdmin(accountname)) {
            return "/success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名来更新密码
    @RequestMapping("updateAdminPwd.do")
    public String doUpdateAdminPwd(Admin admin) {
        //System.err.println("###############################################################"+);
        if (service.alterAdminPwd(admin)) {
            return "success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名来更新个人信息
    @RequestMapping("updateAdminProfile.do")
    public String doUpdateAdminProfile(Admin admin) {
        //System.err.println("###############################################################"+);
        if (service.alterAdminProfile(admin)) {
            return "success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名查询到个人信息，显示在页面上
    @RequestMapping("showAdminProfile.do")
    public String doShowAdminProfile(HttpServletRequest request, Model model) {
        String accountname = request.getParameter("accountname");
        //int userId = Integer.parseInt(request.getParameter("id"));
        Admin admin = this.service.readAdminProfile(accountname);
        //User user = this.userService.getUserById(userId);
        model.addAttribute("admin", admin);
        return "showAdminProfile.jsp";
    }


}
