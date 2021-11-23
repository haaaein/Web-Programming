package labhw11;

import java.util.ArrayList;
import java.util.List;

// 주소록 목록을 관리하기 위한 ArrayList
public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	// 여기에 주소록 추가하는  메서드 작성.
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	// 여기에 주소록 목록 전달하는 메소드 작성
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
	
	// 특정 사용자를 주소록 목록에서 검색하는 메서드
	public AddrBean getAddr(String username) {
		for(AddrBean ab:addrlist) {
			if (ab.getUsername().equals(username))
				return ab;
		}
		return null;
	}
	
}