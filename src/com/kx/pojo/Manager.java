package com.kx.pojo;
/**
 * 管理员实体类
 * @author 李胜杰
 *
 */
public class Manager {
		private int id;//管理员ID
		private String m_Code;//管理员账号
		private String m_Name;//管理员姓名
		private String m_Password;//管理员密码
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getM_Code() {
			return m_Code;
		}
		public void setM_Code(String m_Code) {
			this.m_Code = m_Code;
		}
		public String getM_Name() {
			return m_Name;
		}
		public void setM_Name(String m_Name) {
			this.m_Name = m_Name;
		}
		public String getM_Password() {
			return m_Password;
		}
		public void setM_Password(String m_Password) {
			this.m_Password = m_Password;
		}
		
}
