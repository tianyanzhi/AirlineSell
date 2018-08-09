package airline.service.impl;

import airline.bean.Airplanetype;
import airline.dao.IAirplanetypeDao;
import airline.service.IAirplanetypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("airplanetypeService")
public class AirplanetypeServiceImpl implements IAirplanetypeService {
    @Autowired
    @Qualifier("IAirplanetypeDao")
    public IAirplanetypeDao airplanetypeDao;

/*    添加机型信息*/
    @Override
    public boolean addAirplanetype(Airplanetype airplanetype) {
        if (airplanetypeDao.insertAirplanetype(airplanetype)>0)
            return true;
        else
        return false;
    }

    /*    删除机型信息*/
    @Override
    public boolean moveAirplanetypeByName(String name) {
        if (airplanetypeDao.deleteAirplanetypeByName(name)>0)
            return true;
        else
            return false;
    }


    /*    修改机型信息*/
    @Override
    public boolean alterAirplanetype(Airplanetype airplanetype) {
        if (airplanetypeDao.updateAirplanetype(airplanetype)>0)
            return true;
        else
            return false;
    }

    /*    查询所有机型信息*/
    @Override
    public List<Airplanetype> findAllAirplanetype() {
        List<Airplanetype> airplanetypes=airplanetypeDao.selectAllAirplanetype();
        if(airplanetypes.size()>0)
                return airplanetypes;
        else
        return null;
    }

    /*    根据机型名查询机型信息*/
    @Override
    public List<Airplanetype> findAirplanetypeByName(String name) {
        List<Airplanetype> airplanetypes=airplanetypeDao.selectAirplanetypeByName(name);
        if (airplanetypes.size()>0)
            return airplanetypes;
        else
        return null;
    }
}
