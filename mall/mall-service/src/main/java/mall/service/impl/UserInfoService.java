package mall.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.dao.UserinfoMapper;
import mall.entity.Userinfo;
import mall.entity.UserinfoExample;
import mall.service.IUserInfoService;
@Service("userinfoservice")
public class UserInfoService implements IUserInfoService {
	
	@Autowired 
	private UserinfoMapper userinfoMapper;
	
	public boolean addnewuser(Userinfo u) {
		boolean res=false;
		if(userinfoMapper.insert(u)>0)
			res=true;
		return res;
	}

	public boolean edituser(Userinfo oldu, Userinfo newu) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteuser(Userinfo u) {
		// TODO Auto-generated method stub
		return false;
	}

	public Userinfo getuserbyid(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Userinfo> getalluserlist() {
		// TODO Auto-generated method stub
		UserinfoExample  example=new UserinfoExample();
		List<Userinfo> userlist= userinfoMapper.selectByExample(example);
		return userlist;
	}

	
	public int getusercount() {
		int res=0;
		UserinfoExample  example=new UserinfoExample();
		res=userinfoMapper.countByExample(example);
		return res;
	}
	
	@Override
	public List<Userinfo> getalluserlistByPage(int offset, int pagesize) {
		// TODO Auto-generated method stub
		//int userinfoMapper.countByExample(example)
		HashMap map=new HashMap();
		map.put("offset",offset );
		map.put("pagesize",pagesize);
		List<Userinfo> userlist=null;
		userlist=userinfoMapper.getuserlistbypage(map);
		return userlist;
	}

}
