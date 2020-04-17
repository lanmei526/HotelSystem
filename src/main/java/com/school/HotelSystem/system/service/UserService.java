package com.school.HotelSystem.system.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.school.HotelSystem.system.model.ShrioUser;


/**   
*    
* 项目名称：HotelSystem   
* 类名称：UserService   
* 类描述：   
* 创建人：蓝春梅   
* 创建时间：2020年3月9日 下午8:46:54   
* @version        
*/
public interface UserService {

	List<ShrioUser> queryYuangongList();

	ShrioUser selectYuangongById(String id);

	int updateYuangong(ShrioUser shrioUser);

	int insertYuangong(ShrioUser shrioUser);

	int deleteYuangong(String id);

	ShrioUser queryUser(ShrioUser shrioUser);

	ShrioUser queryUserByUserCode(String usercode);

	ShrioUser searchCookie(String value);

	List<ShrioUser> queryUserByAll(@Param("username")String username,@Param("roleName") String roleName);
}
