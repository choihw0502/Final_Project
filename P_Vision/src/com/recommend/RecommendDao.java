package com.recommend;

import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import com.membership.MembershipDao;
import com.util.MyBatisCommonFactory;
import com.vo.RecommendVO;

public class RecommendDao {
	Logger logger = Logger.getLogger(RecommendDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	
	public RecommendDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
		sqlSession = sqlSessionFactory.openSession();
	}
	public List<Map<String, Object>> cardRecommand() {
		List<Map<String,Object>> cardRecommandList = new ArrayList<Map<String,Object>>();
		//insert here!!!!
		return cardRecommandList;
	}

	public List<Map<String, Object>> allCards(String id) {
		List<Map<String,Object>> allCards = new ArrayList<Map<String,Object>>();
		logger.info("allCards 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			allCards = sqlSession.selectList("allCards");
			logger.info(allCards.size());
		
		return allCards;
	}

	public List<Map<String, Object>> eatCard() {
		List<Map<String,Object>> eatCard = new ArrayList<Map<String,Object>>();
		logger.info("eatCard 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			eatCard = sqlSession.selectList("eatCard");
			logger.info(eatCard.size());
		
		return eatCard;
	}

	public List<Map<String, Object>> communityCard() {
		List<Map<String,Object>> communityCard = new ArrayList<Map<String,Object>>();
		logger.info("communityCard 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			communityCard = sqlSession.selectList("communityCard");
			logger.info(communityCard.size());
		
		return communityCard;
	}

	public List<Map<String, Object>> tripCard() {
		List<Map<String,Object>> tripCard = new ArrayList<Map<String,Object>>();
		logger.info("tripCard 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			tripCard = sqlSession.selectList("tripCard");
		
		return tripCard;
	}

	public List<Map<String, Object>> convenCard() {
		List<Map<String,Object>> convenCard = new ArrayList<Map<String,Object>>();
		logger.info("eatCard 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			convenCard = sqlSession.selectList("convenCard");
		
		return convenCard;
	}

	public List<Map<String, Object>> oilCard() {
		List<Map<String,Object>> oilCard = new ArrayList<Map<String,Object>>();
		logger.info("eatCard 호출성공");
		//insert here!!!!
			RecommendVO rVO = new RecommendVO();
			oilCard = sqlSession.selectList("oilCard");
		
		return oilCard;
	}

	public List<Map<String, Object>> myRecommendCard() {
		logger.info("myRecommendCard 호출성공");
		List<Map<String,Object>> myRecommendCard = new ArrayList<Map<String,Object>>();
		logger.info(myRecommendCard.size());
		//insert here!!!!
		myRecommendCard = sqlSession.selectList("myRecommendCard");
		logger.info(myRecommendCard.size());
		//logger.info(myRecommandCard.get(0).get("mem_id"));
		return myRecommendCard;
	}
	
}
