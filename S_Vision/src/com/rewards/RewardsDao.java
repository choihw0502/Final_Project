package com.rewards;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.card.CardDao;
import com.util.MyBatisCommonFactory;
import com.vo.RecommendVO;

public class RewardsDao {
	Logger logger = Logger.getLogger(RewardsDao.class);
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<Map<String, Object>> reward_Main() {
		//insert here
		List<Map<String,Object>> reward_Main = new ArrayList<Map<String,Object>>();
		return reward_Main;
	}

	public int myPoint(String mem_id) {
		
		int myPoint = 0;
		logger.info("myPoint 호출성공");
		
		myPoint = sqlSessionTemplate.selectOne("myPoint",mem_id);
		
		return myPoint;
	}

	public List<Map<String, Object>> exCoupon() {
		//insert here
		List<Map<String,Object>> exCoupon = new ArrayList<Map<String,Object>>();
		return exCoupon;
	}

	public List<Map<String, Object>> recentPoint() {
		//insert here
		List<Map<String,Object>> recentPoint = new ArrayList<Map<String,Object>>();
		return recentPoint;
	}

	public List<Map<String, Object>> removePoint() {
		//insert here
		List<Map<String,Object>> removePoint = new ArrayList<Map<String,Object>>();
		return removePoint;
	}

	public List<Map<String, Object>> myCoupon() {
		//insert here
		List<Map<String,Object>> myCoupon = new ArrayList<Map<String,Object>>();
		return myCoupon;
	}

	public List<Map<String, Object>> pointSave() {
		//insert here
		List<Map<String,Object>> pointSave = new ArrayList<Map<String,Object>>();
		return pointSave;
	}

	
}
