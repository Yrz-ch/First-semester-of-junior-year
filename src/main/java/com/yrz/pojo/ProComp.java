package com.yrz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProComp {
    private int eid;
    private int pid;
    private String complete;
    private double price;
}
