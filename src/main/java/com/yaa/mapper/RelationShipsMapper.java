package com.yaa.mapper;

import com.yaa.model.vo.RelationShipsExample;
import com.yaa.model.RelationShipsKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RelationShipsMapper {
    int countByExample(RelationShipsExample example);

    int deleteByExample(RelationShipsExample example);

    int deleteByPrimaryKey(RelationShipsKey key);

    int insert(RelationShipsKey record);

    int insertSelective(RelationShipsKey record);

    List<RelationShipsKey> selectByExample(RelationShipsExample example);

    int updateByExampleSelective(@Param("record") RelationShipsKey record, @Param("example") RelationShipsExample example);

    int updateByExample(@Param("record") RelationShipsKey record, @Param("example") RelationShipsExample example);
}