package com.lxcs.batch;

import com.lxcs.es.Product;
import com.lxcs.mybatis.bean.auto.*;
import com.lxcs.util.date.DateUtils;
import com.lxcs.util.date.EnumDateStyle;
import com.lxcs.util.enums.StatusEnums;
import com.lxcs.util.sql.RdTbNameHandler;
import com.lxcs.util.string.GetterUtil;
import com.lxcs.util.string.PinyinUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

/**
 * 数据仓库任务
 *
 * @author zxs
 */
@Slf4j
@Component
@Configurable
@EnableScheduling
@Controller
public class DataStoreTask {


	@Autowired
	private RdTbNameHandler rdTbNameHandler;

	//每1分钟执行一次
	@Scheduled(cron = "0 10 10 * * ?")
	@RequestMapping("/data")
	public void dataStoreTaskMethod() throws InterruptedException {
		System.out.println("----------------mongo同步到es定时任务Start-------------");
		//根据案件编号删除此案数据的表
			List<Map> result = new ArrayList<>();
			for (int i = 1;; i++) {
				Query query1 = new Query();
				if (result != null && result.size() > 0) {
					query1.addCriteria(new Criteria("_id")
							.gt(new ObjectId(GetterUtil.getString(result.get(result.size() - 1).get("_id")))));
				}
				query1.limit(5000);
				Long lastWeekTime = DateUtils.addDay(new Date(), -7).getTime() / 1000;//一周前的时间
				query1.addCriteria(new Criteria().orOperator(
						new Criteria("updated_time").gte(lastWeekTime),
						new Criteria("is_sys").exists(false)));
				query1.with(new Sort(new Sort.Order(Sort.Direction.ASC, "_id")));
			}
	}
}
