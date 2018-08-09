package airline.service.impl;


import airline.bean.Flightinfo;
import airline.dao.IFlightinfoDao;
import airline.service.IFlightinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("flightinfoService")
public class FlightinfoServiceImpl implements IFlightinfoService {
    @Autowired
    @Qualifier("IFlightinfoDao")
    public IFlightinfoDao flightinfoDao;

    @Override
    public boolean addFightinfo(Flightinfo flightinfo) {
        if(flightinfoDao.insertFightinfo(flightinfo)>0)
            return true;
        else
        return false;
    }

    @Override
    public boolean moveFightinfo(String flightnumber) {
        if (flightinfoDao.deleteFightinfo(flightnumber)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean moveFightinfo1(String airplanetype_name) {
        if (flightinfoDao.deleteFightinfo1(airplanetype_name)>0)
            return true;
        else
            return false;
    }

    @Override
    public boolean moveFightinfo2(String airlinecompany_name) {
        if (flightinfoDao.deleteFightinfo2(airlinecompany_name)>0)
            return true;
        else
            return false;
    }


    @Override
    public List<Flightinfo> findAllFlightinfo() {
        List<Flightinfo> flightinfos=flightinfoDao.selectAllFlightinfo();
        if(flightinfos.size()>0)
            return flightinfos;
        else
        return null;
    }

    @Override
    public List<Flightinfo> findFlightinfoByAirlinecompanyName(String airlinecompany_name) {
        List<Flightinfo> flightinfos=flightinfoDao.selectFlightinfoByAirlinecompanyName(airlinecompany_name);
        if (flightinfos.size()>0)
        return flightinfos;
        else
        return null;
    }
}
