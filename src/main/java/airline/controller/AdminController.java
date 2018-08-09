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
    @RequestMapping("/jumpReAd.do")
    public String jumpReAd(){
        return "WEB-INF/admin/addAdmin.jsp";
    }
    @RequestMapping("/registerAdmin.do")
    public String doInsertAdmin(Admin admin) {
        if (service.addAdmin(admin)) {
            return "WEB-INF/admin/success.jsp";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据管理员账户名删除账户
    @RequestMapping("/jumpDeAd.do")
    public String jumpDeAd(){
        return "WEB-INF/admin/deleteAdmin.jsp";
    }
    @RequestMapping("/deleteAdmin.do")
    public String doDeleteAdmin(String accountname) {
        if (service.moveAdmin(accountname)) {
            return "redirect:selectAllAdmin.do";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名来更新密码
    @RequestMapping("/jumpUpAdPwd.do")
    public String jumpUpAdPwd(){
        return "WEB-INF/admin/updateAdminPwd.jsp";
    }
    @RequestMapping("/updateAdminPwd.do")
    public String doUpdateAdminPwd(Admin admin) {
        //System.err.println("###############################################################"+);
        if (service.alterAdminPwd(admin)) {
            return "redirect:adminOutLogin.do";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名来更新个人信息
    @RequestMapping("/jumpUpAdPf.do")
    public String jumpUpAdPf(){
        return "WEB-INF/admin/updateAdminProfile.jsp";
    }
    @RequestMapping("/updateAdminProfile.do")
    public String doUpdateAdminProfile(Admin admin,HttpSession session) {
        //System.err.println("###############################################################"+);
        if (service.alterAdminProfile(admin)) {
            session.setAttribute("admin",admin);//更新当前session的用户
            return "redirect:jumpShowAd.do";
        } else {
            return "/Exception/errors.jsp";
        }
    }

    //根据账户名查询到个人信息，显示在页面上
    @RequestMapping("/jumpShowAd.do")
    public String jumpShowAd(){
        return "WEB-INF/admin/showAdmin.jsp";
    }
    @RequestMapping("/showAdminProfile.do")
    public String doShowAdminProfile(HttpServletRequest request, Model model) {
        String accountname = request.getParameter("accountname");
        //int userId = Integer.parseInt(request.getParameter("id"));
        Admin admin = this.service.readAdminProfile(accountname);
        //User user = this.userService.getUserById(userId);
        model.addAttribute("admin", admin);
        return "WEB-INF/admin/showAdminProfile.jsp";
    }

    //用于超级管理员查看所有管理员
    @RequestMapping("/jumpListAd.do")
    public String jumpListAd(){
        return "WEB-INF/admin/listAdmin.jsp";
    }
    @RequestMapping("/selectAllAdmin.do")
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
        return "WEB-INF/admin/listAdmin.jsp";
    }

    //用于超级管理员根据姓名查询相关管理员信息
    @RequestMapping("/jumpListAdBN.do")
    public String jumpListAdBN(){
        return "WEB-INF/admin/listAdminByName.jsp";
    }
    @RequestMapping("/selectAdminByName.do")
    public String doSelectAdminByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model,String name) {
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        List<Admin> admins = service.findAdminByName(name);
        PageInfo page = new PageInfo(admins, 5);
        model.addAttribute("pageInfo", page);
        return "WEB-INF/admin/listAdmin.jsp";
    }

    //正常访问login页面
    @RequestMapping("/adminLogin.do")
    public String login(){
        return "adminLogin.jsp";
    }

    //检查登陆
    @RequestMapping("/checkLogin.do")
    public String checkLogin(Admin admin,Model model,HttpSession session){
        //调用service方法
        admin = service.checkLogin(admin.getAccountname(), admin.getPassword());
        //System.err.println("##############################################################"+admin.getAuthority());
        //若有admin则添加到model里并且跳转到成功页面return "WEB-INF/admin/superAdminMain.jsp";
        if(admin != null){
            session.setAttribute("admin",admin);//可以根据管理员身份跳转
            if(admin.getAuthority()==2) {
                return "redirect:jumpSuAdMain.do";
            }else if (admin.getAuthority()==1){
                return "redirect:jumpAdMain.do";
            }else {
                return "";//可以设置权限错误页面
            }
        }
        model.addAttribute("msg", "用户名或密码错误，请重新登录！");
        return "adminLogin.jsp";
    }
    //跳转到员工主页面
    @RequestMapping("/jumpAdMain.do")
    public String jumpAdMain() {
        return "WEB-INF/admin/adminMain.jsp";
    }
    //跳转到管理员主页面
    @RequestMapping("/jumpSuAdMain.do")
    public String jumpSuAdMain() {
        return "WEB-INF/admin/superAdminMain.jsp";
    }

    //注销方法
    @RequestMapping("/adminOutLogin.do")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "redirect:adminLogin.do";
    }


}
