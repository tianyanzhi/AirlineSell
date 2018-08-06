package airline.controller;

import airline.bean.Admin;
import airline.service.IAdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

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
@SessionAttributes("admin")
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

    //用于超级管理员查看所有管理员
    @RequestMapping("selectAllAdmin.do")
    public String doSelectAllAdmin(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Admin> admins = service.findAllAdmin();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(admins, 5);
        model.addAttribute("pageInfo", page);
        return "listAdmin.jsp";
    }

    //用于超级管理员根据姓名查询相关管理员信息
    @RequestMapping("selectAdminByName.do")
    public String doSelectAdminByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model,String name) {
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        List<Admin> admins = service.findAdminByName(name);
        PageInfo page = new PageInfo(admins, 5);
        model.addAttribute("pageInfo", page);
        return "listAdmin.jsp";
    }

    //正常访问login页面
    @RequestMapping("adminLogin.do")
    public String login(){
        return "adminLogin.jsp";
    }

    //检查登陆
    @RequestMapping("checkLogin.do")
    public String checkLogin(Admin admin,Model model){
        //调用service方法
        admin = service.checkLogin(admin.getAccountname(), admin.getPassword());
        //若有user则添加到model里并且跳转到成功页面
        if(admin != null){
            model.addAttribute("admin",admin);
            return "success.jsp";
        }
        return "adminLogin.jsp";
    }

    //注销方法
    @RequestMapping("adminOutLogin.do")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "adminLogin.jsp";
    }


}
