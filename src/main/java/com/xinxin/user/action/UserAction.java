package com.xinxin.user.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinxin.user.entity.User;
import com.xinxin.user.service.UserService;
import com.xinxin.util.HttpUtil;
import com.xinxin.util.Md5Util;

@Controller
@RequestMapping("user")
public class UserAction {

	@Autowired
	private UserService userService ;
	
	@RequestMapping("tozhuce")
	public String tozhuce(){
		
		return "zhuce";
	};
	
	@RequestMapping("zhuce")
	@ResponseBody
	public String zhuce(User user , HttpServletRequest request){
		userService.insert(user);
		String access_token = diao(request);
		String url = "https://openapi.baidu.com/social/api/2.0/user/bind_status";
		Map paramsMap = new HashMap();
		paramsMap.put("access_token", access_token);
		String json = HttpUtil.post(url, paramsMap);
	
		boolean bool = JSONObject.fromObject(json).containsKey("error_code");
		
		if(bool){
			String uid = user.getId()+"";
			String client_secret = "Bx8yGRUTwW27lUD0q3DlMxO2X6GR29mf";
			String uid_sign = Md5Util.getMD5(uid+client_secret);
			paramsMap.clear();
			paramsMap.put("access_token", access_token);
			paramsMap.put("uid", uid);
			paramsMap.put("uid_sign",uid_sign);
			json = HttpUtil.post(url, paramsMap);
		}else{
			request.getSession().setAttribute("login", user);
			return "redirect:/index.jsp";
		}
		return null;
	}
	
	@RequestMapping("toindex")
	public String toindex(){
		
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("toshou")
	public String toshou(){
		
		return "login";
	}
	
	public String diao(HttpServletRequest request){
		String url = "https://openapi.baidu.com/social/oauth/2.0/token";
		String client_id = "jLK9C6EGDdE3hE2G5K694PNg";
		String client_secret = "Bx8yGRUTwW27lUD0q3DlMxO2X6GR29mf";
		String redirect_uri = "http://127.0.0.1:8080/Student/user/otherLogin.do";
		Map paramsMap = new HashMap();
		paramsMap.put("grant_type", "authorization_code");
		paramsMap.put("code", request.getSession().getAttribute("code"));
		paramsMap.put("client_id", client_id);
		paramsMap.put("client_secret", client_secret);
		paramsMap.put("redirect_uri", redirect_uri);
		String json = HttpUtil.post(url, paramsMap);
		return JSONObject.fromObject(json).getString("access_token");
	}
	
	@RequestMapping("otherLogin")
	public String otherLogin(String code , HttpServletRequest request){
		
		request.getSession().setAttribute("code", code);
		String access_token = diao(request);
		String url = "https://openapi.baidu.com/social/api/2.0/user/info";
		Map paramsMap = new HashMap();
		paramsMap.put("access_token", access_token);
		String json = HttpUtil.post(url, paramsMap);
		
		String loginname = JSONObject.fromObject(json).getString("username");
		String socialUid = JSONObject.fromObject(json).getString("social_uid");
		User user = userService.findBySocial(socialUid);
		
		if(user==null){
			request.getSession().setAttribute("loginname", loginname);
			request.getSession().setAttribute("socialUid", socialUid);
			return "addUser";
		}else{
			request.getSession().setAttribute("login", user);
			return "redirect:/index.jsp";
		}
	}
	
	@RequestMapping("loginout")
	public String loginout(HttpServletRequest request){
		request.getSession().setAttribute("login",null);
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("tologin")
	public String tologin(){
		
		return "login";
	}
	
	@RequestMapping("tolist")
	public String tolist(User user){
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("login")
	@ResponseBody
	public void login(User user ,String a, HttpServletRequest request,HttpServletResponse response){
		System.out.println(user);
		User login = null ;
		if(user!=null)
		{
			user.setPhone(a);
			login = userService.login(user);
			request.getSession().setAttribute("login", login);
			if(login==null)
			{
				user.setMail(a);
				login = userService.login(user);
				request.getSession().setAttribute("login", login);
				if(login==null)
				{
					user.setLoginname(a);
					login = userService.login(user);
					request.getSession().setAttribute("login", login);
					if(login==null){
							try {
								response.getWriter().write("2");
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
					}else{
							try {
								response.getWriter().write("1");
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
					}
				}else{
						try {
							response.getWriter().write("1");
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			}else{
					try {
						response.getWriter().write("1");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}else{
			try {
				response.getWriter().write("2");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
