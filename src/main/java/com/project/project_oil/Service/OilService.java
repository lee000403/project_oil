package com.project.project_oil.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.project_oil.dao.OilDao;

@Service
public class OilService {

    @Autowired
    OilDao oilDao;


    public List<Map<String, String>> doOilList() {
        List<Map<String, String>> list = new ArrayList<>();
        list = oilDao.doOilList();
        return list;
    }

}
