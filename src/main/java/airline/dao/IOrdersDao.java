package airline.dao;

import airline.bean.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/7 0007 16:33
 * @Version 1.0
 * @mark null
 * @Description
 */
public interface IOrdersDao {
    //增加一条订单信息，status隐性输入为1   * 用户通过确认支付令status=1
    int insertOrder(Orders order);

    //改变订单状态
    int updateOrderStatus(Orders order);

    //列出所有订单,不打算做这个功能
    List<Orders> selectAllOrders();

    //  列出未通过审核的订单     status=1&status=3
    //  列出未通过确认支付的订单 status=1,    管理员（通过）令status=2 -》订单进入待乘坐状态      admin*
    //  列出用户待乘坐的订单     status=2,    用户（退票）令status=3 -》订单进入退票状态，用户（订单完成）令status=5 -》订单进入完成状态
    //  列出未通过确认退票的订单 status=3，   管理员（通过）令status=4 -》订单进入订单取消状态    admin*
    //  列出已完成的订单         status=5，
    //  列出被取消的订单         status=4，   用来看看
    //  列出已完成的订单         status=5，   可以生成报表，也可以用来看看
    List<Orders> selectOrdersByStatus(int status);

    //备用搜索框根据用户名搜索相应订单
    List<Orders> selectOrdersByUserName(String user_name);

    //  管理员打印机票           status=2且根据身份证号码来查询机票信息
    Orders selectOrderByID(String user_idcard);

    //用户自己的订单管理，根据当前用户名与订单状态的不同来查询
    List<Orders> selectOrdersByStaAndName(@Param("status") int status, @Param("user_name") String user_name);





}
