package com.project.project_oil.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OilDao {
    
    public List<Map<String, String>> doOilList();
    
}
