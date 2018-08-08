package airline.service;

import airline.bean.Orders;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/7 0007 19:32
 * @Version 1.0
 * @mark null
 * @Description
 */
public interface IOrdersService {
    //添加订单
    boolean addOrder(Orders order);

    //订单状态更改
    boolean alterOrderStatus(Orders order);

    //根据订单状态查询相应订单
    List<Orders> findOrdersByStatus(int status);

    //根据用户名搜索相应订单
    List<Orders> findOrdersByUserName(String user_name);

    //根据身份证号码，查询到订单信息，拟打印
    public Orders findOrderByID(String user_idcard);

    //用户根据用户名（当前用户名）与订单状态的不同来查询订单详情
    List<Orders> findOrdersByStatusAndName(int status,String user_name);
}
