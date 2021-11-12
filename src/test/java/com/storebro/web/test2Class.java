package com.storebro.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

public class test2Class
{
	@Test
	public void testing() throws IOException {
		String requestURL = "http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnWthrIdx";
		String queryString = "";
		DataType dataType = new DataType();
		dataType.setTypeList(Arrays.asList("JSON", "XML"));
		Params params = new Params();
		params.setServiceKey("Gt5Gap%2FfosnAgnq2TqWCo8Jz1N8Gz%2ByDLIKAYJ1Yi%2ByBzDaA88sc6y7NLfblGtfhLkN4htmTfErFloQxDoFsxQ%3D%3D");
		params.setDataType(dataType);
		params.setPageNo(1);
		params.setNumOfRows(10);
		params.setCURRENT_DATE(20201111);
		params.setHOUR(24);
		params.setCOURSE_ID(1);
		
		URL url = new URL(requestURL + params.url(0));
		URLConnection urlConnection = url.openConnection();
		HttpURLConnection connection = null;
		if(urlConnection instanceof HttpURLConnection)
		{
		    connection = (HttpURLConnection) urlConnection;
		}
		else
		{
		    System.out.println("error");
		}
		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		String urlString = "";
		String current;
		while((current = in.readLine()) != null)
		{
		    urlString += current+"\n";
		}
		ObjectMapper mapper = new ObjectMapper();
		RequestAPI api = new RequestAPI();
		Response response = new Response();
		api.setResponse(response);
//		Response api = mapper.readValue(mapped, Response.class);
		
		RequestAPI apis = mapper.readValue(urlString, RequestAPI.class);
		System.out.println(apis);
	}
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Params{
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

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class DataType{
	private List<String> typeList;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class RequestAPI{
	private Response response;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Response{
	private Header header;
	private Body body;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Header{
	private String resultCode;
	private String resultMsg;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Body{
	private String pageNo;
	private String numOfRows;
	private String totalCount;
	private String dataType;
	private Items items;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Items{
	private Item[] item;
}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Item{
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