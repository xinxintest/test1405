package com.xinxin.util;

import org.apache.taglibs.standard.lang.jstl.test.ParserTest;
import org.htmlparser.Parser;
import org.htmlparser.filters.AndFilter;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.nodes.TagNode;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class TestThread extends Thread {
	
	private String threadName;
	private int startPage ;
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public String getThreadName() {
		return threadName;
	}
	public void setThreadName(String threadName) {
		this.threadName = threadName;
	}
	public TestThread() {
		super();
	}
	public TestThread(String threadName, int startPage) {
		super();
		this.threadName = threadName;
		this.startPage = startPage;
	}
	public void run(){       
		
		try {
			for (int i = startPage; i <=startPage+15; i++) {
				Parser parser = new Parser("http://mm.10086.cn/android/software/qbrj?p="+i);
				parser.setEncoding("UTF-8");
				HasAttributeFilter attributeFilter = new HasAttributeFilter("class", "autoword");
				TagNameFilter nameFilter = new TagNameFilter("a");
				NodeList nodelist = parser.parse(new AndFilter(nameFilter,attributeFilter));
				for (int j = 0; j < nodelist.size(); j++) {
					TagNode tagNode = (TagNode)nodelist.elementAt(j);
					System.out.println(threadName+"="+tagNode.getAttribute("title")+"="+tagNode.getAttribute("href"));
//					String url = tagNode.getAttribute("href");
//					ParserUtil parserUtil = new ParserUtil();
//					parserUtil.getPager(url);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}                                                

}
