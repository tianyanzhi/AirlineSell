package airline.dao;

import airline.bean.Flightinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IFlightinfoDao {
    int insertFightinfo(Flightinfo flightinfo);
    int deleteFightinfo(String flightnumber);
    int deleteFightinfo1(String airplanetype_name);
    int deleteFightinfo2(String airlinecompany_name);
    List<Flightinfo> selectAllFlightinfo();
    List<Flightinfo> selectFlightinfoByAirlinecompanyName(String airlinecompany_name);
    List<Flightinfo> selectFlightinfoByOther(@Param("start") String start, @Param("end") String end, @Param("starttime") String starttime, @Param("endtime") String endtime);

}
