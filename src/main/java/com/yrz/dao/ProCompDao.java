package com.yrz.dao;

import com.yrz.pojo.Books;
import com.yrz.pojo.ProComp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProCompDao {
    int addProComp(ProComp proComp);

    //根据id删除一个Book


    //更新Book


    //根据id查询,返回一个Book
    ProComp queryProCompById2(@Param("eid") int id1,@Param("pid") int id2);

    //查询全部Book,返回list集合
    List<ProComp> queryAllProComp();

    List<ProComp> queryProCompById(@Param("eid")int id);


}
