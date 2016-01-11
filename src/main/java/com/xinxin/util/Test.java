package com.xinxin.util;

import org.htmlparser.Node;
import org.htmlparser.Parser;
import org.htmlparser.filters.AndFilter;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.nodes.TagNode;
import org.htmlparser.util.NodeList;

public class Test {
	
	public static void main(String[] args) {
		
		//抓取总页数

		try {
			Parser parser = new Parser("http://mm.10086.cn/android/software/qbrj");
			parser.setEncoding("UTF-8");
			HasAttributeFilter attributeFilter = new HasAttributeFilter("class", "last");
			TagNameFilter nameFilter = new TagNameFilter("a");
			NodeList nodelist = parser.parse(new AndFilter(nameFilter,attributeFilter));
			TagNode tagNode = (TagNode)nodelist.elementAt(0);
			int totalPage = Integer.parseInt(tagNode.getAttribute("href").split("=")[1]);
			//定义每个线程抓取的页数
			int threadPageNum = 15;  
			//计算机启动的线程数
			int threadNum = totalPage/threadPageNum+(totalPage%threadPageNum==0?0:1) ;
			//循环抓取每个线程的应用
			for (int i = 0; i < threadNum; i++) {
				TestThread thread = new TestThread("线程"+i,(i*15+1));
				thread.start();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
