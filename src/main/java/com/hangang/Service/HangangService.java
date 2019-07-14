package com.hangang.Service;


import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@Service
public class HangangService {

	public double getTemp() throws IOException {
		double temp = 0.0;
		
		Document doc = Jsoup.connect("http://hangang.dkserver.wo.tc/").get();
		String text = doc.text();
		JsonParser parser = new JsonParser();
		JsonObject object = (JsonObject) parser.parse(text);
		
		temp = object.get("temp").getAsDouble();
		
		return temp;
	}

}
