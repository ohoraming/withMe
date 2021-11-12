package com.storebro.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


public class testClass {
	
	@Test
	public void testing() {
		Board b = new Board();
		b.setId(1);
		b.setBid(1);
		b.setOrdering(0);
		b.setLayer(0);
		b.setViews(5);
		b.setTitle("test");
		b.setContents("content1");
		b.setTags(new ArrayList<String>(Arrays.asList(("this, is, sparta").split(","))));
		System.out.println(b.toString()); // full
		System.out.println(b.getTags().get(1)); // is
		List a = Arrays.asList("this, is, sparta".replaceAll("[,]","").split("\s"));
		System.out.println(a.toString().replaceAll("[\\[\\]]",""));
//		List<String> list = new ArrayList<String>(Arrays.asList(("").split(",")));
//		System.out.println(list);
	}

}

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
class Board
{
	private int id;
	private int bid; // 게시판 번호를 참조
	private int ordering; // 답글의 순서 인덱스
	private int layer; // 원글, 댓글, 대댓긋 ... 글의 계층을 나타냄
	private int views;
	private String title;
	private String contents;
	private List<String> tags;
	private String author;
	private Timestamp regDate;
	private Timestamp updates;
}