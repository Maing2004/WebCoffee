package com.example.myservlet;

import org.json.JSONObject;

public class User {
    private String fullname;
    private String email;
    private String password;
    private String confirmPassword;

    // Constructor
    public User(String fullname, String email, String password, String confirmPassword) {
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
    }

    // Getter và Setter
    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    // Phương thức kiểm tra mật khẩu có khớp không
    public boolean isPasswordValid() {
        return this.password.equals(this.confirmPassword);
    }
    public JSONObject toJSON() {
        JSONObject json = new JSONObject();
        json.put("fullname", fullname);
        json.put("email", email);
        return json; // Không gửi pass để bảo mật
    }
}
