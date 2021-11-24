package labhw11;

public class LectureBean {
	private int type;
	private int title;
	private int day;
	private int time;
	private int consecutive;
	
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = {"웹프로그래밍", "운영체제", "객체지향프로그래밍", "데이터베이스개론", 
			"자료구조", "네트워크", "창의와감성", "사회봉사"};
	static final String[] dayNames = {"월", "화", "수", "목", "금"};
	
	public String[] getTypeNames() {
		return typeNames;
	}
	
	public String[] getTitleNames() {
		return titleNames;
	}
	
	public String[] getDayNames() {
		return dayNames;
	}
	
	public LectureBean() {
		this.type = -1;
		this.time = -1;
		this.title = -1;
		this.day = -1;
		this.consecutive = -1;
	}
	
	public LectureBean(int type, int title, int day, int time, int consecutive) {
		this.type = type;
		this.title = title;
		this.day = day;
		this.time = time;
		this.consecutive = consecutive;
	}
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getTitle() {
		return title;
	}
	public void setTitle(int title) {
		this.title = title;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getConsecutive() {
		return consecutive;
	}
	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}
	
	public String toString() {
		String rslt = typeNames[getType()] + " / " + titleNames[getTitle()] + " / " + dayNames[getDay()] + " / ";
		rslt += getTime() + " / " + getConsecutive() + "\n";
		
		return rslt;
	}
}
