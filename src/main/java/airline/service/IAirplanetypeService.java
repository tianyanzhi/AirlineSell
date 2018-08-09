package airline.service;

import airline.bean.Airplanetype;

import java.util.List;

public interface IAirplanetypeService {
    boolean addAirplanetype(Airplanetype airplanetype);
    boolean moveAirplanetypeByName(String name);
    boolean alterAirplanetype(Airplanetype airplanetype);
    List<Airplanetype> findAllAirplanetype();
    List<Airplanetype> findAirplanetypeByName(String name);
}
