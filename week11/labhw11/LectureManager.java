package labhw11;

import java.util.ArrayList;
import java.util.List;

public class LectureManager {
	ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();
	
	public List<LectureBean> getLectureList() {
		return lectureList;
	}
	
	public void add(LectureBean Ibean) {
		lectureList.add(Ibean);
	}
	
	public LectureBean getList(int type) {
		for(LectureBean lec:lectureList) {
			if (lec.getType() == type)
				return lec;
		}
		return null;
	}
}
