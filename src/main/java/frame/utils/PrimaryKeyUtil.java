package frame.utils;

import java.util.UUID;

/**
 * 主键生成工具：UUID
 * 
 */
public class PrimaryKeyUtil {

	/**
	 * 得到主鍵方法
	 * 
	 * @Date 2015年2月6日
	 * @return
	 */
	public static String getPrimaryKey() {
		return UUID.randomUUID().toString();
	}
	public static String getUserCode() {
		for (int i = 0; i < 5; i++) {
			String s = UUID.randomUUID().toString();
			s = s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24);
			//System.out.println();
			return s.substring(0, 12);
			}
		return null;
	}
	/*
	 * @Test public void testName() throws Exception {
	 * System.out.println(getUserCode());
	 * 
	 * }
	 */
}
