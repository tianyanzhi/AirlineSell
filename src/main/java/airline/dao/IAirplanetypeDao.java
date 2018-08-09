package airline.dao;

import airline.bean.Airplanetype;

import java.util.List;

public interface IAirplanetypeDao {
    int insertAirplanetype(Airplanetype airplanetype);
    int deleteAirplanetypeByName(String name);
    int updateAirplanetype(Airplanetype airplanetype);
    List<Airplanetype> selectAllAirplanetype();
    List<Airplanetype> selectAirplanetypeByName(String name);
}
