package labhw11;
/**
 * File : AddrBean.java
 * Desc : 주소록 빈즈 클래스
 */
public class AddrBean {
	//멤버변수 선언
	private String username;
	private String tel;
	private String email;
	private String sex;
	private String group;
	
//getter와 setter 메소드 작성하는 코드를 작성하시오
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getTel() {
		return tel;
	}
	
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getGroup() {
		return group;
	}
	
	public void setGroup(String group) {
		this.group = group;
	}
	
	public int groupSort(String group) {
		if (group.equals("친구")) {
			return 0;
		}
		else if (group.equals("가족")) {
			return 1;
		}
		else {
			return 2;
		}
	}
}
