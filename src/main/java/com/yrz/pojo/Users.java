package com.yrz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private int eid;
    private String account;
    private String pwd;
    private int power;

    public Users(int eid, String account, String pwd) {
        this.eid = eid;
        this.account = account;
        this.pwd = pwd;
    }

    public int getEid() {
        return eid;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public int getPower() {
        return power;
    }
}
