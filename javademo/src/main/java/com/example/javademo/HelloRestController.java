package com.example.javademo;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloRestController {
	@RequestMapping(path = "/where-am-i")
	public String getHost() {
		InetAddress ip = null;
		String host = null;
		try {
			ip = InetAddress.getLocalHost();
			host = ip.getHostName();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "IP:"+ip+"Host"+host;
	}
}
