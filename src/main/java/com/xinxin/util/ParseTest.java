package com.xinxin.util;

import java.util.ArrayList;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.Parser;
import org.htmlparser.filters.AndFilter;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.nodes.TagNode;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;
import org.htmlparser.parserapplications.filterbuilder.Filter;

public class ParseTest {

	public static void main(String[] args) {
		try {
			
			Parser parser = new Parser("http://mm.10086.cn/android/info/300001190092.html?from=www&fw=508#hotcom");
			parser.setEncoding("UTF-8");
			//��ȡ����
			TagNameFilter tagNameFilter = new TagNameFilter("title");
			NodeList nodelist =	parser.parse(tagNameFilter);
			String plainTextString = nodelist.elementAt(0).toPlainTextString();
			String title = plainTextString.substring(0,plainTextString.lastIndexOf("-"));
			System.out.println(title);
			parser.reset();
			//��ȡͼƬ
			tagNameFilter = new TagNameFilter("img");
			HasAttributeFilter attributeFilter = new HasAttributeFilter("id", "appicon");
			AndFilter andFilter = new AndFilter(tagNameFilter, attributeFilter);
			System.out.println("andFilter"+andFilter);
			nodelist = parser.parse(andFilter);
			System.out.println("nodelist"+nodelist);
			TagNode tagNode = (TagNode) nodelist.elementAt(0);
			System.out.println(tagNode.getAttribute("src"));
			String iconurl = tagNode.getAttribute("src");
			String appicon = iconurl.substring(iconurl.lastIndexOf("/"));
			System.out.println("appicon="+appicon);
			HttpUtil.httpDownload(tagNode.getAttribute("src"), "D:\\img\\"+appicon);
			
			
			parser.reset();
			//��ȡͼƬ
			tagNameFilter = new TagNameFilter("div");
			attributeFilter = new HasAttributeFilter("class", "mj_img");
			andFilter = new AndFilter(tagNameFilter, attributeFilter);
			System.out.println("andFilter="+andFilter);
			nodelist = parser.parse(andFilter);
			System.out.println("nodelist="+nodelist);
			for (int i = 0; i < nodelist.size(); i++) {
				tagNode = (TagNode) nodelist.elementAt(i);
				TagNode firstChild = (TagNode) tagNode.getFirstChild();
				System.out.println("firstChild="+firstChild.getAttribute("src"));
				iconurl=firstChild.getAttribute("src");
				appicon = iconurl.substring(iconurl.lastIndexOf("/"));	
				System.out.println("appicon="+appicon);
				HttpUtil.httpDownload(firstChild.getAttribute("src"), "D:\\img\\"+appicon);
				/*iconurl = tagNode.getAttribute("src");
				appicon = iconurl.substring(iconurl.lastIndexOf("/"));
				System.out.println("appicon="+appicon);
				HttpUtil.httpDownload(tagNode.getAttribute("src"), "D:\\img\\"+appicon);*/
			}
			
			parser.reset();
			tagNameFilter=new TagNameFilter("div");
			attributeFilter = new HasAttributeFilter("class", "mj_pl_list_i_m");
			andFilter=new AndFilter(tagNameFilter, attributeFilter);
			NodeList nodeList = parser.parse(andFilter);
			for (int i = 0; i < nodeList.size(); i++) {
				tagNode = (TagNode) nodeList.elementAt(i);
				NodeList children = tagNode.getChildren();
//				commentUser	������
//				String commentUser=children.elementAt(0).getChildren().elementAt(1).toPlainTextString();
				String commentUser=children.elementAt(0).toPlainTextString();
				System.out.println("����"+i+"��������-------"+commentUser);
//				comment	��������
				String comment = children.elementAt(1).toPlainTextString();
				System.out.println("����"+i+"����������---------"+comment);
//				commentDate	����ʱ��
				String commentDate = children.elementAt(2).getChildren().elementAt(1).toPlainTextString();
				System.out.println("����"+i+"������ʱ��------------"+commentDate);
			}

			parser.reset();
			//��ȡӦ������·��  class=mj_xzdbd
			tagNameFilter=new TagNameFilter("a");
			attributeFilter = new HasAttributeFilter("class", "mj_xzdbd");
			andFilter=new AndFilter(tagNameFilter, attributeFilter);
			nodeList = parser.parse(andFilter);
			tagNode  = (TagNode) nodeList.elementAt(0);
			System.out.println(tagNode.getAttribute("href")+"href");
//			HttpUtil.httpDownload(tagNode.getAttribute("href"), "D:\\img\\"+appicon);
			
			
			//parser.reset();
			//��Ϣ  class=mj_info font-f-yh
			System.out.println("��Ϣ----------------------------------------------");
			tagNameFilter = new TagNameFilter("div");
			attributeFilter = new HasAttributeFilter("class", "mj_info font-f-yh");
			andFilter = new AndFilter(tagNameFilter, attributeFilter);
			nodelist = parser.parse(andFilter);
			nodelist= ((TagNode)nodelist.elementAt(0)).getChildren().elementAt(0).getChildren();
			System.out.println("nodelist="+nodelist);
			String trim = "" ;
			List<String> list = new ArrayList<String>();
			for (int i = 0; i < nodelist.size()-1; i++) {
				String text = ((TagNode)nodelist.elementAt(i)).toPlainTextString().trim();
				trim = text.substring(text.lastIndexOf("��")+1).trim();
				System.out.println("trim="+trim);
				list.add(trim);
			}		
			System.out.println("list="+list);
			list.get(1);
			
		} catch (ParserException e) {
			e.printStackTrace();
		}
	}
}
