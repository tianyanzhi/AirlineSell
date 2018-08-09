package airline.service.impl;

import airline.bean.Airlinecompany;
import airline.dao.IAirlinecompanyDao;
import airline.service.IAirlinecompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("airlinecompanyService")
public class AirlinecompanyServiceImpl implements IAirlinecompanyService {
    @Autowired
    @Qualifier("IAirlinecompanyDao")
    public IAirlinecompanyDao airlinecompanyDao;

    @Override
    public boolean addAirlinecompany(Airlinecompany airlinecompany) {
        if (airlinecompanyDao.insertAirlinecompany(airlinecompany)>0)
            return true;
        else
        return false;
    }

    @Override
    public boolean moveAirlinecompanyByName(String name) {
        if(airlinecompanyDao.deleteAirlinecompanyByName(name)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean alterAirlinecompany(Airlinecompany airlinecompany) {
        if (airlinecompanyDao.updateAirlinecompany(airlinecompany)>0)
            return true;
        else
            return false;
    }

    @Override
    public List<Airlinecompany> findAllAirlinecompany() {
        List<Airlinecompany> airlinecompanies=airlinecompanyDao.selectAllAirlinecompany();
        if (airlinecompanies.size()>0)
            return airlinecompanies;
        else
            return null;
    }

    @Override
    public List<Airlinecompany> findAirlinecompanyByName(String name) {
        List<Airlinecompany> airlinecompanies=airlinecompanyDao.selectAirlinecompanyByName(name);
        if(airlinecompanies.size()>0)
            return airlinecompanies;
        else
            return null;
    }

}
