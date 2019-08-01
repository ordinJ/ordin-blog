package com.ordin.service;

import com.ordin.model.bo.InstallBo;
import com.ordin.model.bo.ResponseBo;

public interface InstallService {

    ResponseBo saveInstall(InstallBo installBo);

}
