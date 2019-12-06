package org.ssm.center.service.kpi.impl;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssm.center.dao.kpi.UserInformationMapper;
import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.UserInformation;
import org.ssm.center.service.kpi.UserInformationService;

import java.util.List;

@Slf4j
@Service
public class UserInformationServiceImpl implements UserInformationService {

    @Autowired
    UserInformationMapper userInformationMapper;

    @Override
    public int updateOneUser(UserInformation userInformation) {
        return userInformationMapper.updateOneUser(userInformation);
    }


}
