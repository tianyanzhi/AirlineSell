package airline.bean;

public class User {
    private Integer id;
    private String accountname;
    private String password;
    private String name;
    private int sex;
    private String phone;
    private String email;
    private String idnumber;
    private int points;
    private int accounttype;

    public User() {
        super();
    }

    public User(Integer id, String accountname, String password, String name, int sex, String phone, String email, String idnumber, int points, int accounttype) {
        this.id = id;
        this.accountname = accountname;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
        this.idnumber = idnumber;
        this.points = points;
        this.accounttype = accounttype;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getAccounttype() {
        return accounttype;
    }

    public void setAccounttype(int accounttype) {
        this.accounttype = accounttype;
    }
}

