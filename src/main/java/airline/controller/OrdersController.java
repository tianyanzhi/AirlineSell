package airline.controller;

import airline.bean.Admin;
import airline.bean.Orders;
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

    //添加订单
    @RequestMapping("jumpAddOrder.do")
    public String jumpAddOrder(){
        return "WEB-INF/orders/addOrder.jsp";
    }
    @RequestMapping("/addOrder.do")
    public String doInsertOrder(Orders order){
        if (service.addOrder(order)){
            return "WEB-INF/orders/success.jsp";
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
    public String doUpdateOrderStatus(Orders order){
        if (service.alterOrderStatus(order)){
            return "redirect:jumpShowOrdersBS.do";
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
        int pageSize = 5;
        PageHelper.startPage(pn, pageSize);
        List<Orders> orders = service.findOrdersByStatus(status);
        PageInfo page = new PageInfo(orders, 5);
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
        return "WEB-INF/orders/reportAndPrint.jsp";
    }
    @RequestMapping("ticketPrint.do")
    public String doTicketPrint(HttpServletRequest request, Model model) {
        String user_idcard = request.getParameter("user_idcard");
        Orders order = this.service.findOrderByID(user_idcard);
        model.addAttribute("order", order);
        return "WEB-INF/orders/ticketPrint.jsp";
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
