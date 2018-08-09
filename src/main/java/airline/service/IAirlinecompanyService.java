package airline.service;

import airline.bean.Airlinecompany;

import java.util.List;

public interface IAirlinecompanyService {
    boolean addAirlinecompany(Airlinecompany airlinecompany);
    boolean moveAirlinecompanyByName(String name);
    boolean alterAirlinecompany(Airlinecompany airlinecompany);
    List<Airlinecompany> findAllAirlinecompany();
    List<Airlinecompany> findAirlinecompanyByName(String name);
}
