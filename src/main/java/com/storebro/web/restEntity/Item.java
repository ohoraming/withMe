package com.storebro.web.restEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Item{
	private String tm;
	private String thema;
	private String courseId;
	private String courseAreaId;
	private String courseAreaName;
	private String courseName;
	private String spotAreaId;
	private String spotAreaName;
	private String spotName;
	private String btIndex;
	private String fdIndex;
	private String uvIndex;
	private String htIndex;
	private String dsIndex;
	private String piIndexCharm;
	private String piIndexSo;
	private String piIndexWeed;
}
