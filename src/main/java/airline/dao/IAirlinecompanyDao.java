package airline.dao;

import airline.bean.Airlinecompany;

import java.util.List;

public interface IAirlinecompanyDao {
    int insertAirlinecompany(Airlinecompany airlinecompany);
    int deleteAirlinecompanyByName(String name);
    int updateAirlinecompany(Airlinecompany airlinecompany);
    List<Airlinecompany> selectAllAirlinecompany();
    List<Airlinecompany> selectAirlinecompanyByName(String name);
}
