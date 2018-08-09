package airline.bean;

public class Airlinecompany {
    private Integer id;
    private String name;
    private int companycode;
    private String address;
    private String website;
    private int phone;

    public Airlinecompany() {
    }

    public Airlinecompany(String name, int companycode, String address, String website, int phone) {
        this.name = name;
        this.companycode = companycode;
        this.address = address;
        this.website = website;
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Airlinecompany{" +
                "name='" + name + '\'' +
                ", companycode=" + companycode +
                ", address='" + address + '\'' +
                ", website='" + website + '\'' +
                ", phone=" + phone +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCompanycode() {
        return companycode;
    }

    public void setCompanycode(int companycode) {
        this.companycode = companycode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
