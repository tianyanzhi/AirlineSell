package airline.controller;

import airline.bean.Admin;
import airline.bean.Orders;
import airline.bean.User;
import airline.service.IOrdersService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/7 0007 19:49
 * @Version 1.0
 * @mark null
 * @Description
 */
@Controller
public class OrdersController {
    @Autowired
    @Qualifier("ordersService")
    private IOrdersService service;

    public IOrdersService getService() {
        return service;
    }

    public void setService(IOrdersService service) {
        this.service = service;
    }

    //添加订单，用户业务
    @RequestMapping("jumpAddOrder.do")
    public String jumpAddOrder(){
        return "WEB-INF/orders/addOrder.jsp";
    }
    @RequestMapping("/addOrder.do")
    public String doInsertOrder(HttpServletRequest request, Orders order){
        /*//当前时间
        //sdtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        //出发时间
        String sdtime = request.getParameter("flight_starttime");
        String sdtimen = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(sdtime);
        order.setFlight_starttime(Timestamp.valueOf(sdtimen));
        //到达时间
        String edtime = request.getParameter("flight_endtime");
        String edtimen = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(edtime);
        order.setFlight_starttime(Timestamp.valueOf(edtimen));
        System.err.println("#################################################################"+order.getFlight_starttime());*/
        if (service.addOrder(order)){
            return "redirect:selectAllFlightinfo.do";
        }else {
            return "/Exception/errors.jsp";
        }
    }
    //更改订单状态
    @RequestMapping("jumpUpOrderSta.do")
    public String jumpUpOrderSta(){
        return "WEB-INF/orders/updateOrderStatus.jsp";
    }
    @RequestMapping("updateOrderStatus.do")
    public String doUpdateOrderStatus(Orders order,HttpServletRequest request){
        HttpSession session =request.getSession();
        User user = (User) session.getAttribute("user");
        if (service.alterOrderStatus(order)){
            if(order.getStatus()==2){
                return "redirect:showOrdersBySta1.do";
            }else if (order.getStatus()==4){
                return "redirect:showOrdersBySta3.do";
            }else if (order.getStatus()==1){//用户下单了,不在这里跳转
                return "redirect:showOrdersBySta1.do";
            }else if (order.getStatus()==3){
                return "redirect:showOrdersByStaAndName.do?user_name="+user.getAccountname()+"&status=2";
            } else if (order.getStatus()==5){
                return "redirect:showOrdersByStaAndName.do?user_name="+user.getAccountname()+"&status=2";
            } else {
                return "/Exception/errors.jsp";
            }
        }else {
            return "/Exception/errors.jsp";
        }
    }
    //根据订单状态查询相应订单
    @RequestMapping("jumpShowOrdersBS.do")
    public String jumpShowOrdersBS(){
        return "WEB-INF/orders/listOrdersBySome.jsp";
    }
    @RequestMapping("showOrdersBySta.do")
    public String doShowOrdersBySta(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model, int status){
        int pageSize = 10000;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersByStatus(status);
        PageInfo page = new PageInfo(orders, pageSize);
        model.addAttribute("pageInfo", page);
        //尝试做一个实时图表
        List<Orders> allOrders = service.findAllOrders();
        model.addAttribute("allOrders",allOrders);
        System.err.println("########################################"+allOrders.size());
        List<Orders> orders1 = service.findOrdersBySta1();
        model.addAttribute("orders1",orders1);
        List<Orders> orders2 = service.findOrdersBySta3();
        model.addAttribute("orders2",orders2);
        List<Orders> orders3 = service.findOrdersBySta5();
        model.addAttribute("orders3",orders3);
        if (status==5){
            return "WEB-INF/orders/chart.jsp";
        }else {
            return "WEB-INF/orders/listOrdersByA.jsp";
        }
    }
    /*@RequestMapping("jumpShowOrdersBS1.do")//尝试解决导航栏无法实现动作脚本，失败
    public String jumpShowOrdersBS1(){
        return "redirect:showOrdersBySta.do?status=1";
    }
    @RequestMapping("jumpShowOrdersBS3.do")
    public String jumpShowOrdersBS3(){
        return "redirect:showOrdersBySta.do?status=3";
    }*/
    //支付待审核
    @RequestMapping("showOrdersBySta1.do")
    public String doShowOrdersBySta1(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
        int pageSize = 10000;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersBySta1();
        PageInfo page = new PageInfo(orders, pageSize);
        model.addAttribute("pageInfo", page);
        return "WEB-INF/orders/listOrdersByA.jsp";
    }
    //退票待审核
    @RequestMapping("showOrdersBySta3.do")
    public String doShowOrdersBySta3(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
        int pageSize = 10000;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersBySta3();
        PageInfo page = new PageInfo(orders, pageSize);
        model.addAttribute("pageInfo", page);
        return "WEB-INF/orders/listOrdersByA.jsp";
    }
    //已完成
    @RequestMapping("showOrdersBySta5.do")
    public String doShowOrdersBySta5(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
        int pageSize = 10000;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersBySta5();
        PageInfo page = new PageInfo(orders, pageSize);
        model.addAttribute("pageInfo", page);
        return "WEB-INF/orders/listOrdersByA.jsp";
    }

    //根据用户名查询相应订单,保留，暂时不实现
    @RequestMapping("jumpShowOrdersBUN.do")
    public String jumpShowOrdersBUN(){
        return "WEB-INF/orders/listOrdersBySome.jsp";
    }
    @RequestMapping("showOrdersByUName.do")
    public String doShowOrdersByUName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model, String user_name){
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersByUserName(user_name);
        PageInfo page = new PageInfo(orders, 5);
        model.addAttribute("pageInfo", page);
        //String user_name = request.getParameter("user_name");
        //Orders order = (Orders) this.service.findOrdersByUserName(user_name);
        //model.addAttribute("order",order);
        return "WEB-INF/orders/listOrdersByA.jsp";
    }

    //机票打印，根据用户身份证号码查询
    @RequestMapping("jumpTicketPrint.do")
    public String jumpTicketPrint(){
        return "WEB-INF/orders/getIDToPrint.jsp";
    }
    @RequestMapping("ticketPrint.do")
    public String doTicketPrint(HttpServletRequest request, Model model) {
        String user_idcard = request.getParameter("user_idcard");
        Orders order = this.service.findOrderByID(user_idcard);
        model.addAttribute("order", order);
        if(order!=null){
            return "WEB-INF/orders/ticketPrint.jsp";
        }else {
            model.addAttribute("msgn", "没有找到相关的机票信息，请检查你输入的身份证号码是否有误");
            return "WEB-INF/orders/getIDToPrint.jsp";//没有找到相关的机票信息，请检查你输入的身份证号码是否有误
        }
    }

    //用户根据自己的账户名与订单状态查询相应订单
    @RequestMapping("jumpShowOrdersBSAN.do")
    public String jumpShowOrdersBSAN(){
        return "WEB-INF/orders/listOrdersBySome.jsp";
    }
    @RequestMapping("showOrdersByStaAndName.do")
    public String doShowOrdersByStaAndName(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model, int status, String user_name){
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersByStatusAndName(status,user_name);
        PageInfo page = new PageInfo(orders, 5);
        model.addAttribute("pageInfo", page);
        return "WEB-INF/orders/listOrdersByU.jsp";
    }
}
