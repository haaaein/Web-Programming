package labhw11;

public class CalcBean {
	private Integer op1;
	private Integer op2;
	private String operator;
	
	public Integer getOp1() {
		return op1;
	}
	
	public void setOp1(Integer op1) {
		this.op1 = op1;
	}
	
	public Integer getOp2() {
		return op2;
	}
	
	public void setOp2(Integer op2) {
		this.op2 = op2;
	}
	
	public String getOperator() {
		return operator;
	}
	
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	private int add(int a, int b) {
		return a + b;
	}
	
	private int sub(int a, int b) {
		return a - b;
	}
	
	private int mult(int a, int b) {
		return a * b;
	}
	
	private int div(int a, int b) {
		return a / b;
	}
	
	public int calc() {
		
		int rslt;
		if (operator.equals("+"))
			rslt = add(op1, op2);
		else if (operator.equals("-"))
			rslt = sub(op1, op2);
		else if (operator.equals("*"))
			rslt = mult(op1, op2);
		else
			rslt = div(op1, op2);
		
		return rslt;
	}
	
}
