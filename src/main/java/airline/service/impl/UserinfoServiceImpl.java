package airline.service.impl;


import airline.bean.Userinfo;
import airline.dao.IUserinfoDao;
import airline.service.IUserinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userinfoService")
public class UserinfoServiceImpl implements IUserinfoService {
    @Autowired
    @Qualifier("IUserinfoDao")
    public IUserinfoDao userinfoDao;

    @Override
    public boolean addUserinfo(Userinfo userinfo) {
        if (userinfoDao.insertUserinfo(userinfo)>0)
            return true;
        else
        return false;
    }

    @Override
    public boolean moveUserinfo(String idnumber) {
        if (userinfoDao.deleteUserinfo(idnumber)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean alterUserinfo(Userinfo userinfo) {
        if (userinfoDao.updateUserinfo(userinfo)>0)
            return true;
        else
            return false;
    }

    @Override
    public List<Userinfo> findAllUserinfo(String user_acname) {
        List<Userinfo> userinfos=userinfoDao.selectAllUserinfo(user_acname);
        if(userinfos.size()>0)
            return userinfos;
        else
        return null;
    }

    @Override
    public List<Userinfo> findUserinfoByName(String user_acname, String name) {
        List<Userinfo> userinfos=userinfoDao.selectUserinfoByName(user_acname,name);
        if(userinfos.size()>0)
            return userinfos;
        else
            return null;
    }
}
