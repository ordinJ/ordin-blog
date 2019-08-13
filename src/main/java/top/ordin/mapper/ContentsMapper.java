package top.ordin.mapper;

import top.ordin.model.Contents;
import top.ordin.model.bo.ArchiveBo;
import top.ordin.model.vo.ContentsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContentsMapper {
    int countByExample(ContentsExample example);

    int deleteByExample(ContentsExample example);

    int deleteByPrimaryKey(Integer cid);

    int insert(Contents record);

    int insertSelective(Contents record);

    List<Contents> selectByExampleWithBLOBs(ContentsExample example);

    List<Contents> selectByExample(ContentsExample example);

    Contents selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Contents record, @Param("example") ContentsExample example);

    int updateByExampleWithBLOBs(@Param("record") Contents record, @Param("example") ContentsExample example);

    int updateByExample(@Param("record") Contents record, @Param("example") ContentsExample example);

    int updateByPrimaryKeySelective(Contents record);

    int updateByPrimaryKeyWithBLOBs(Contents record);

    int updateByPrimaryKey(Contents record);

    List<ArchiveBo> findReturnArchiveBo();
}