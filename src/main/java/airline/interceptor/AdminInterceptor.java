package airline.interceptor;

import airline.bean.Admin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/6 0006 15:19
 * @Version 1.0
 * @mark null
 * @Description
 */
public class AdminInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //获得请求的URL
        String url = httpServletRequest.getRequestURI();
        //URL：除了adminLogin.jsp是可以公共访问，其他的URL都进行拦截控制
        if (url.contains("/checkLogin.do")) {
            return true;
        }
        //获得session
        HttpSession session = httpServletRequest.getSession();
        Admin admin = (Admin) session.getAttribute("admin");
        //如果有用户数据，则返回true,继续向下执行
        //&&"2".equals(admin.getAuthority()),管理员账号
        //System.err.println("##############################################################"+admin.getAuthority());
        if (admin != null) {
            return true;

        }
        //不合条件的给现提示信息，并转发到页面
        httpServletRequest.setAttribute("msg", "您还没登录，请先登录！");
        httpServletRequest.getRequestDispatcher("/adminLogin.jsp").forward(httpServletRequest, httpServletResponse);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
