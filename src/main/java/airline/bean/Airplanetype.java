package airline.bean;

public class Airplanetype {
    private Integer id;
    private String name;
    private Integer firstnum;
    private Integer businessnum;
    private Integer economynum;
    public Airplanetype() {
    }

    public Airplanetype(String name, Integer firstnum, Integer businessnum, Integer economynum) {
        this.name = name;
        this.firstnum = firstnum;
        this.businessnum = businessnum;
        this.economynum = economynum;
    }

    @Override
    public String toString() {
        return "Airplanetype{" +
                "name='" + name + '\'' +
                ", firstnum=" + firstnum +
                ", businessnum=" + businessnum +
                ", economynum=" + economynum +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getFirstnum() {
        return firstnum;
    }

    public void setFirstnum(Integer firstnum) {
        this.firstnum = firstnum;
    }

    public Integer getBusinessnum() {
        return businessnum;
    }

    public void setBusinessnum(Integer businessnum) {
        this.businessnum = businessnum;
    }

    public Integer getEconomynum() {
        return economynum;
    }

    public void setEconomynum(Integer economynum) {
        this.economynum = economynum;
    }
}