package top.ordin.service.impl;

import top.ordin.mapper.OptionsMapper;
import top.ordin.model.Options;
import top.ordin.model.bo.InstallBo;
import top.ordin.model.vo.OptionsExample;
import top.ordin.service.OptionsServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OptionsServerImpl implements OptionsServer {

    @Autowired
    private OptionsMapper optionsMapper;

    @Override
    public Map<String, String> getOptionsConfig() {
        List<Options> options = optionsMapper.selectByExampleWithBLOBs(new OptionsExample());
        Map<String,String> map = new HashMap<>();
        for(Options option: options){
            map.put(option.getName(),option.getValue());
        }
        return map;
    }

    @Override
    public int updateOptions(InstallBo installBo) {
        Integer count = 0;
        Map<String,Object> map = new HashMap<>();
        map.put("site_title",installBo.getSiteName());
        map.put("site_url",installBo.getSiteUrl());
        map.put("allow_install","1");
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Options options = new Options();
            options.setName(entry.getKey());
            options.setValue(entry.getValue().toString());
            count += optionsMapper.updateByPrimaryKeySelective(options);
        }
        return count;
    }

}
