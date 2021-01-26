package com.yrz.service;

import com.yrz.dao.ProCompDao;
import com.yrz.pojo.ProComp;

import java.util.List;

public class ProCompServiceImpl implements ProCompService{
    private ProCompDao proCompDao;

    public void setProCompDao(ProCompDao proCompDao) {
        this.proCompDao = proCompDao;
    }

    public int addProComp(ProComp proComp) {
        return proCompDao.addProComp(proComp);
    }

    public ProComp queryProCompById2(int id1, int id2) {
        return proCompDao.queryProCompById2(id1,id2);
    }



    public List<ProComp> queryAllProComp() {
        return proCompDao.queryAllProComp();
    }

    public List<ProComp> queryProCompById(int id) {
        return proCompDao.queryProCompById(id);
    }
}
