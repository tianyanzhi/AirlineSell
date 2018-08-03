package airline.bean;

/**
 * @ProjectName AirlineSell
 * @ClassName null.java
 * @Author cza
 * @Time 2018/8/3 0003 16:04
 * @Version 1.0
 * @mark null
 * @Description
 */
public class Admin {
    private Integer id;
    private String accountname;
    private String password;
    private int authority;
    private String name;
    private int sex;
    private int phone;
    private String email;

    public Admin() {
        super();
    }

    public Admin(String accountname, String password, int authority, String name, int sex, int phone, String email) {
        this.accountname = accountname;
        this.password = password;
        this.authority = authority;
        this.name = name;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
    }

    public String getAccountname() {
        return accountname;
    }

    public void setAccountname(String accountname) {
        this.accountname = accountname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAuthority() {
        return authority;
    }

    public void setAuthority(int authority) {
        this.authority = authority;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "accountname='" + accountname + '\'' +
                ", password='" + password + '\'' +
                ", authority=" + authority +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                '}';
    }
}
