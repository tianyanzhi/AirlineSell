package airline.service;

import airline.bean.Flightinfo;

import java.util.List;

public interface IFlightinfoService {
    boolean addFightinfo(Flightinfo flightinfo);
    boolean moveFightinfo(String flightnumber);
    boolean moveFightinfo1(String airplanetype_name);
    boolean moveFightinfo2(String airlinecompany_name);
    List<Flightinfo> findAllFlightinfo();
    List<Flightinfo> findFlightinfoByAirlinecompanyName(String airlinecompany_name);
}
