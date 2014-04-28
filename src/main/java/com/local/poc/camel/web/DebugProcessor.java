package com.local.poc.camel.web;

import org.apache.camel.Exchange;
import org.apache.camel.Message;
import org.apache.camel.Processor;

/**
 * 
 */
public class DebugProcessor implements Processor {

	public void process(Exchange exchange) throws Exception {

		System.out.println("In Debug Processor");

		Message in = exchange.getIn();
		Message out = exchange.getOut();

		System.out.println(in.getBody());

		out.setBody(in.getBody());

		exchange.setOut(out);
	}

}