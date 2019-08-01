package com.ordin.service;

import com.ordin.model.bo.InstallBo;

import java.util.Map;

public interface OptionsServer {

    Map<String, String> getOptionsConfig();

    int updateOptions(InstallBo installBo);

}
