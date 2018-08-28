package controller;



import mall.entity.Userinfo;
import mall.service.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mall.service.IUserInfoService;


@Controller
public class UserController {
	
	@Resource
	private IUserInfoService userinfoservice;
	
	@RequestMapping("/showusers")
	public String showuserlist(){
		return "showuserlist";
	}
	
	
	//前端表格通过ajax请求，返回数据的json格式
	@ResponseBody
	@RequestMapping("/getuserlist")
	public HashMap getuserlistbypage(int pageSize,int offset){
		HashMap hm=new HashMap();
		int total=userinfoservice.getusercount();
		hm.put("total", total);
		List<Userinfo> userlist=new ArrayList<Userinfo>();
		userlist=userinfoservice.getalluserlistByPage(offset, pageSize);

		hm.put("rows", userlist);
		return hm;
	}
	
	
	//测试用
	@RequestMapping("/index")
	public String test(){
		return "index";
	}
	
	
}
