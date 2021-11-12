package com.storebro.web.restEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Body{
	private String pageNo;
	private String numOfRows;
	private String totalCount;
	private String dataType;
	private Items items;
}