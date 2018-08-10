package airline.service.impl;

import airline.bean.Admin;
import airline.bean.Orders;
import airline.dao.IOrdersDao;
import airline.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/7 0007 19:41
 * @Version 1.0
 * @mark null
 * @Description
 */
@Service("ordersService")
public class IOrdersServiceImpl implements IOrdersService {
    @Autowired
    @Qualifier("IOrdersDao")
    private IOrdersDao ordersDao;

    public IOrdersDao getOrdersDao() {
        return ordersDao;
    }

    public void setOrdersDao(IOrdersDao ordersDao) {
        this.ordersDao = ordersDao;
    }

    @Override
    public boolean addOrder(Orders order) {
        int count = ordersDao.insertOrder(order);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean alterOrderStatus(Orders order) {
        int count = ordersDao.updateOrderStatus(order);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<Orders> findOrdersByStatus(int status) {
        List<Orders> orders = ordersDao.selectOrdersByStatus(status);
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }

    @Override
    public List<Orders> findOrdersBySta1() {
        List<Orders> orders = ordersDao.selectOrdersBySta1();
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }

    @Override
    public List<Orders> findOrdersBySta3() {
        List<Orders> orders = ordersDao.selectOrdersBySta3();
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }

    @Override
    public List<Orders> findOrdersBySta5() {
        List<Orders> orders = ordersDao.selectOrdersBySta5();
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }

    @Override
    public List<Orders> findOrdersByUserName(String user_name) {
        List<Orders> orders = ordersDao.selectOrdersByUserName(user_name);
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }

    @Override
    public Orders findOrderByID(String user_idcard) {
        return ordersDao.selectOrderByID(user_idcard);
    }

    @Override
    public List<Orders> findOrdersByStatusAndName(int status, String user_name) {
        List<Orders> orders = ordersDao.selectOrdersByStaAndName(status,user_name);
        if (orders.size() > 0) {
            return orders;
        } else {
            return null;
        }
    }
}
