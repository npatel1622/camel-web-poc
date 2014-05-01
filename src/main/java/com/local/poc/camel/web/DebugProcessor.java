package com.local.poc.camel.web;

import org.apache.camel.Exchange;
import org.apache.camel.Message;
import org.apache.camel.Processor;

/**
 * This class doesn't do anything in POC. But is here to demonstrate how to trap
 * exchange during transport and possibilities of what could be done with
 * exchange
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