package airline.dao;

import airline.bean.Flightinfo;

import java.util.List;

public interface IFlightinfoDao {
    int insertFightinfo(Flightinfo flightinfo);
    int deleteFightinfo(String flightnumber);
    int deleteFightinfo1(String airplanetype_name);
    int deleteFightinfo2(String airlinecompany_name);
    List<Flightinfo> selectAllFlightinfo();
    List<Flightinfo> selectFlightinfoByAirlinecompanyName(String airlinecompany_name);

}
