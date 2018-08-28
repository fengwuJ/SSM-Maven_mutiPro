package mall.service;
import java.util.*;
import mall.entity.*;
import mall.dao.*;
import mall.entity.*;
public interface IUserInfoService {
	public boolean addnewuser(Userinfo u);	
	public boolean edituser(Userinfo oldu,Userinfo newu);	
	public boolean deleteuser(Userinfo u);	
	public Userinfo getuserbyid(String id);	
	public List<Userinfo> getalluserlist();	
	public List<Userinfo> getalluserlistByPage(int offset,int pagesize);	
	public int getusercount();
	
}
