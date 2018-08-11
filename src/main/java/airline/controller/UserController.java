package airline.controller;

import airline.bean.User;
import airline.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    /***********************************用户操作*********************************************/
    /*添加用户信息*/
    @RequestMapping("/jumpAddUser.do")
    public String jumpAddUser(){
        return "/WEB-INF/user/addUser.jsp";
    }
    @RequestMapping("/addUser.do")
    public String addUser(User user){
        if (userService.addUser(user))
            return "redirect:jumpShowUser.do";
        else
            return "/WEB-INF/user/fail.jsp";
    }

    /*查看该用户信息*/
    @RequestMapping("/jumpShowUser.do")
    public String jumpShowUser(){
        return "WEB-INF/user/showUser.jsp";
    }
    @RequestMapping("/showUserProfile.do")
    public String showUserProfile(HttpServletRequest request, Model model) {
        String accountname = request.getParameter("accountname");
        User user = userService.readUserProfile(accountname);
        model.addAttribute("user", user);
        return "WEB-INF/user/showUserProfile.jsp";
    }

    //根据账户名来更新个人信息
    @RequestMapping("/jumpUpUserPf.do")
    public String jumpUpUserPf(){
        return "WEB-INF/user/updateUserProfile.jsp";
    }
    @RequestMapping("/updateUserProfile.do")
    public String updateUserProfile(User user, HttpSession session) {
        if (userService.alterUserProfile(user)) {
            session.setAttribute("user",user);//更新当前session的用户
            return "redirect:jumpShowUser.do";
        } else {
            return "/WEB-INF/user/fail.jsp";
        }
    }

    /*根据账户名来更新密码*/
    @RequestMapping("/jumpUpUserPwd.do")
    public String jumpUpUserPwd(){
        return "WEB-INF/user/updateUserPwd.jsp";
    }
    @RequestMapping("/updateUserPwd.do")
    public String UpdateUserPwd(User user) {
        if (userService.alterUserPwd(user))
            return "redirect:outLogin.do";
        else
            return "/WEB-INF/user/fail.jsp";
    }

    /*根据用户账户名删除用户*/
    @RequestMapping("/deleteUser.do")
    public String deleteUser(String accountname) {
        if (userService.moveUser(accountname))
            return "redirect:selectAllUser.do";
         else
            return "/WEB-INF/user/fail.jsp";
    }

/***********************************用户登陆*********************************/
    @RequestMapping("/userLogin.do")
    public String login(){ return "userLogin.jsp"; }
    @RequestMapping("/userCheckLogin.do")
    public String checkLogin(User user, Model model, HttpSession session){
        user=userService.checkLogin(user.getAccountname(),user.getPassword());
        if(user!=null){
            session.setAttribute("user",user);
            model.addAttribute("user",user);
            return "/WEB-INF/user/welcome.jsp";
        }
        model.addAttribute("userMsg", "用户名或密码错误，请重新登录！");
        return "userLogin.jsp";
    }
    @RequestMapping("/outLogin.do")
    public String outLogin(HttpSession session){
        session.invalidate();
        return "redirect:userLogin.do";
    }
/***********************************用户登陆**********************************/





}
