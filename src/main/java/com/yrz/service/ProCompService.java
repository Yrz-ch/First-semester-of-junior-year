package com.yrz.service;

import com.yrz.pojo.ProComp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProCompService {
    int addProComp(ProComp proComp);

    //根据id删除一个Book


    //更新Book


    //根据id查询,返回一个Book
    ProComp queryProCompById2(int id1,  int id2);

    //查询全部Book,返回list集合
    List<ProComp> queryAllProComp();
    List<ProComp> queryProCompById(int id);

}
