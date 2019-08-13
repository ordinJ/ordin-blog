package top.ordin.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import top.ordin.dto.Types;
import top.ordin.mapper.ContentsMapper;
import top.ordin.mapper.MetasMapper;
import top.ordin.model.Contents;
import top.ordin.model.Metas;
import top.ordin.model.Users;
import top.ordin.model.bo.ResponseBo;
import top.ordin.model.vo.ContentsExample;
import top.ordin.model.vo.MetasExample;
import top.ordin.service.PagesService;
import top.ordin.util.DateKit;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class PagesServiceImpl implements PagesService {

    @Autowired
    private ContentsMapper contentsMapper;
    @Autowired
    private MetasMapper metasMapper;

    @Override
    public PageInfo<Contents> selectPages(int page, int limit) {
        ContentsExample example = new ContentsExample();
        example.setOrderByClause("created desc");
        example.createCriteria().andTypeEqualTo(Types.PAGE.getType());
        PageHelper.startPage(page, limit);
        List<Contents> contents = contentsMapper.selectByExample(example);
        return new PageInfo<>(contents);
    }

    @Override
    public ResponseBo deletePages(Integer id) {
        if(id==0){
            return ResponseBo.fail("参数错误");
        }
        int count = contentsMapper.deleteByPrimaryKey(id);
        if(count>0){
            return ResponseBo.ok("删除成功！");
        }
        return ResponseBo.fail("");
    }

    @Override
    public void editPages(Integer id , HttpServletRequest request) {
        Contents contents = contentsMapper.selectByPrimaryKey(id);
        if(contents!=null){
            request.setAttribute("contents",contents);
        }
        request.setAttribute("active","pages");//菜单选中
    }

    @Override
    public void goPublish(HttpServletRequest request) {
        MetasExample example = new MetasExample();
        example.createCriteria().andTypeEqualTo(Types.PAGE.getType());
        List<Metas> categories = metasMapper.selectByExample(example);
        request.setAttribute("categories",categories);
        request.setAttribute("active","pages");//菜单选中
    }

    @Override
    public ResponseBo updatePage(Contents contents) {
        if (contents == null) {
            return ResponseBo.fail("参数错误");
        }
        if(StringUtils.isBlank(contents.getTitle())){
            return ResponseBo.fail("页面标题不能为空");
        }
        if(StringUtils.isBlank(contents.getSlug())){
            return ResponseBo.fail("页面路径不能为空");
        }
        contents.setModified(DateKit.getCurrentUnixTime());
        int count = contentsMapper.updateByPrimaryKeySelective(contents);
        if (count > 0) {
            return ResponseBo.ok("保存成功！");
        }
        return ResponseBo.fail("error");
    }

    @Override
    public ResponseBo publishPage(Contents contents, Users users) {
        if(contents==null){
            return ResponseBo.fail("参数错误");
        }
        contents.setAuthorId(users.getUid());
        contents.setCreated(DateKit.getCurrentUnixTime());
        contents.setType(Types.PAGE.getType());
        contents.setHits(0);
        contents.setCommentsNum(0);
        contents.setFmtType("markdown");
        int count = contentsMapper.insert(contents);
        if(count > 0){
            return ResponseBo.ok("保存成功！");
        }
        return ResponseBo.fail("error");
    }
}
