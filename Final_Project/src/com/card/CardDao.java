package com.card;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CardDao {
	List<Map<String,Object>> cMap = new ArrayList<Map<String,Object>>();

	public List<Map<String, Object>> cardList() {
		Map<String,Object> cardList = new HashMap<String,Object>();
		cardList.put("c_name", "희상카드");
		cardList.put("c_picture", "희상이사진");
		cardList.put("c_detail", "희상이꺼임");
		cMap.add(cardList);
		cardList = new HashMap<String,Object>();
		cardList.put("c_name", "현석카드");
		cardList.put("c_picture", "현석이사진");
		cardList.put("c_detail", "현석이꺼임");
		cMap.add(cardList);
		
		return cMap;
	}

	public List<Map<String, Object>> cardUseList() {
		List<Map<String,Object>> cardUseList = new ArrayList<Map<String,Object>>();
		//insert here
		
		return cardUseList;
	}

	public List<Map<String, Object>> cardAdd() {
		List<Map<String,Object>> cardAdd = new ArrayList<Map<String,Object>>();
		//insert here
		
		return cardAdd;
	}


}
