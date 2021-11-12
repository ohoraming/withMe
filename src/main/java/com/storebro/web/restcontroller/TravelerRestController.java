package com.storebro.web.restcontroller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.storebro.web.restEntity.DataType;
import com.storebro.web.restEntity.Params;
import com.storebro.web.restEntity.RequestAPI;
import com.storebro.web.restEntity.Response;

@RestController
public class TravelerRestController {
	@GetMapping(value = "/travelList", produces = "application/text; charset=utf8")
	public String getList() throws IOException {
		URL url = new URL("http://api.data.go.kr/openapi/tn_pubr_public_cltur_fstvl_api?serviceKey=Gt5Gap%2FfosnAgnq2TqWCo8Jz1N8Gz%2ByDLIKAYJ1Yi%2ByBzDaA88sc6y7NLfblGtfhLkN4htmTfErFloQxDoFsxQ%3D%3D&pageNo=0&numOfRows=100&type=json");
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
		
		System.out.println(urlString);
		return urlString;
	}
}
