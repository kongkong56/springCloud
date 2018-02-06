package com.forezp.hystric;

import com.forezp.service.SchedualServiceHi;
import org.springframework.stereotype.Component;

/**
 * Created by shuai on 2017/12/12.
 */
@Component
public class SchedualServiceHiHystric implements SchedualServiceHi {
    @Override
    public String sayHiFromClientOne(String name) {
        return "sorry "+name;
    }
}
