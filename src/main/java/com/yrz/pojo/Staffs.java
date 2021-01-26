package com.yrz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Staffs {
    private int eid;
    private String ename;
    private int power;

    public String getEname() {
        return ename;
    }

    public int getPower() {
        return power;
    }

    public int getEid() {
        return eid;
    }
}
