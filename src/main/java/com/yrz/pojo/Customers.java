package com.yrz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customers {
    private int cid;
    private String cname;
    private String unit1;
    private String unit2;
    private String phone;
    private String qq;
    private String email;
}
