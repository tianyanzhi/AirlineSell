package airline.bean;

public class Flightinfo {
    private Integer id;
    private String flightnumber;
    private String airplanetype_name;
    private String airlinecompany_name;
    private String start;
    private String end;
    private String starttime;
    private String endtime;
    private Integer firstprice;
    private Integer businessprice;
    private Integer economyprice;
    private Airlinecompany airlinecompany;
    private Airplanetype airplanetype;

    public Flightinfo() {
    }

    public Flightinfo(String flightnumber, String airplanetype_name, String airlinecompany_name, String start, String end, String starttime, String endtime, Integer firstprice, Integer businessprice, Integer economyprice, Airlinecompany airlinecompany, Airplanetype airplanetype) {
        this.flightnumber = flightnumber;
        this.airplanetype_name = airplanetype_name;
        this.airlinecompany_name = airlinecompany_name;
        this.start = start;
        this.end = end;
        this.starttime = starttime;
        this.endtime = endtime;
        this.firstprice = firstprice;
        this.businessprice = businessprice;
        this.economyprice = economyprice;
        this.airlinecompany = airlinecompany;
        this.airplanetype = airplanetype;
    }

    public String getFlightnumber() {
        return flightnumber;
    }

    public void setFlightnumber(String flightnumber) {
        this.flightnumber = flightnumber;
    }

    public String getAirplanetype_name() {
        return airplanetype_name;
    }

    public void setAirplanetype_name(String airplanetype_name) {
        this.airplanetype_name = airplanetype_name;
    }

    public String getAirlinecompany_name() {
        return airlinecompany_name;
    }

    public void setAirlinecompany_name(String airlinecompany_name) {
        this.airlinecompany_name = airlinecompany_name;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public Integer getFirstprice() {
        return firstprice;
    }

    public void setFirstprice(Integer firstprice) {
        this.firstprice = firstprice;
    }

    public Integer getBusinessprice() {
        return businessprice;
    }

    public void setBusinessprice(Integer businessprice) {
        this.businessprice = businessprice;
    }

    public Integer getEconomyprice() {
        return economyprice;
    }

    public void setEconomyprice(Integer economyprice) {
        this.economyprice = economyprice;
    }

    public Airlinecompany getAirlinecompany() {
        return airlinecompany;
    }

    public void setAirlinecompany(Airlinecompany airlinecompany) {
        this.airlinecompany = airlinecompany;
    }

    public Airplanetype getAirplanetype() {
        return airplanetype;
    }

    public void setAirplanetype(Airplanetype airplanetype) {
        this.airplanetype = airplanetype;
    }
}
