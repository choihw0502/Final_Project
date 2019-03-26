package com.rewards;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class RewardsLogic {
	Logger logger = Logger.getLogger(RewardsLogic.class);
	RewardsDao rewardsDao = null;
	public void setRewardsDao(RewardsDao rewardsDao) {
		this.rewardsDao = rewardsDao;
	}

}
