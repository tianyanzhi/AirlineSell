package airline.service.impl;


import airline.bean.User;
import airline.dao.IUserDao;
import airline.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    @Qualifier("IUserDao")
    public IUserDao userDao;

    @Override
    public boolean addUser(User user) {
        if(userDao.insertUser(user)>0)
            return true;
        else
        return false;
    }

    @Override
    public boolean moveUser(String accountname) {
        if (userDao.deleteUser(accountname)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean alterUserPwd(User user) {
        if (userDao.updateUserPwd(user)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean alterUserProfile(User user) {
        if (userDao.updateUserProfile(user)>0)
            return true;
        else
            return false;
    }

    @Override
    public User readUserProfile(String accountname) {
        return userDao.selectUserByAcname(accountname);
    }

    @Override
    public User checkLogin(String accountname, String password) {
        User user = userDao.selectUserByAcname(accountname);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public List<User> findAllUser() {
        List<User> users = userDao.selectAllUser();
        if (users.size()>0){
            return users;
        }else {
            return null;
        }
    }
}
