package com.storebro.web.restEntity;

import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Params{
	private String serviceKey;
	private DataType dataType;
	private int pageNo;
	private int numOfRows;
	private long CURRENT_DATE;
	private int HOUR;
	private int COURSE_ID;
	public String url(@RequestParam(defaultValue = "0") int type) {
		return "?serviceKey=" + serviceKey
				+"&dataType=" + dataType.getTypeList().get(type)
				+ "&pageNo=" + pageNo
				+ "&numOfRows=" + numOfRows
				+ "&CURRENT_DATE=" + CURRENT_DATE
				+ "&HOUR=" + HOUR
				+ "&COURSE_ID=" + COURSE_ID;
	}
}