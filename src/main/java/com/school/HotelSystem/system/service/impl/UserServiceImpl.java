package com.school.HotelSystem.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.HotelSystem.system.dao.ShrioUserMapper;
import com.school.HotelSystem.system.dao.UserRoleMapper;
import com.school.HotelSystem.system.model.ShrioUser;
import com.school.HotelSystem.system.service.UserService;


/**   
*    
* 项目名称：HotelSystem   
* 类名称：UserServiceImpl   
* 类描述：   
* 创建人：蓝春梅   
* 创建时间：2020年3月9日 下午8:47:28   
* @version        
*/
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private ShrioUserMapper shrioUserMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	@Override
	public List<ShrioUser> queryYuangongList() {
		return shrioUserMapper.queryYuangongList();
	}
	@Override
	public ShrioUser selectYuangongById(String id) {
		return shrioUserMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateYuangong(ShrioUser shrioUser) {
		return shrioUserMapper.updateByPrimaryKeySelective(shrioUser);
	}
	@Override
	public int insertYuangong(ShrioUser shrioUser) {
		return shrioUserMapper.insertSelective(shrioUser);
	}
	@Override
	public int deleteYuangong(String id) {
		return shrioUserMapper.deleteByPrimaryKey(id);
	}
	@Override
	public ShrioUser queryUser(ShrioUser shrioUser) {
		return shrioUserMapper.queryUser(shrioUser);
	}
	@Override
	public ShrioUser queryUserByUserCode(String usercode) {
		return shrioUserMapper.queryUserByUserCode(usercode);
	}
	@Override
	public ShrioUser searchCookie(String value) {
		return shrioUserMapper.searchCookie(value);
	}
	@Override
	public List<ShrioUser> queryUserByAll(String username, String roleName) {
		return shrioUserMapper.queryUserByAll(username,roleName);
	}
}
