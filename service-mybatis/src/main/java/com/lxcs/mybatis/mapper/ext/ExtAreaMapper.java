package com.lxcs.mybatis.mapper.ext;

import com.lxcs.mybatis.bean.auto.Area;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExtAreaMapper {
    /**
     * 获取全部
     *
     * @return
     */
    List<Area> findAllList();
    /**
     * 获取省
     *
     * @return
     */
    List<Area> findProvinceList();

    /**
     * 获取市
     *
     * @param code
     * @return
     */
    List<Area> findCityList(@Param("code") String code);

    /**
     * 获取区
     *
     * @param code
     * @return
     */
    List<Area> findAreaList(@Param("code") String code);
}