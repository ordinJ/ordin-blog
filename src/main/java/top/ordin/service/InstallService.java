package top.ordin.service;

import top.ordin.model.bo.InstallBo;
import top.ordin.model.bo.ResponseBo;

public interface InstallService {

    ResponseBo saveInstall(InstallBo installBo);

}
