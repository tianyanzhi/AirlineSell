package airline.bean;

public class Userinfo {
    private Integer id;
    private String user_acname;
    private String name;
    private int sex;
    private String phone;
    private String email;
    private String idnumber;

    public Userinfo() {
    }

    public Userinfo(String user_acname, String name, int sex, String phone, String email, String idnumber) {
        this.user_acname = user_acname;
        this.name = name;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
        this.idnumber = idnumber;
    }

    public String getUser_acname() {
        return user_acname;
    }

    public void setUser_acname(String user_acname) {
        this.user_acname = user_acname;
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
}
