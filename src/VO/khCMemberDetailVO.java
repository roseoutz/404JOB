package VO;

public class khCMemberDetailVO {
	private String detail_cmember_id; // 기업회원 id(참조용)
	private String detail_em_num; // 사원수
	private String detail_capital; // 자본
	private String detail_sales; // 매출
	private String detail_pay; // 평균연봉
	private String detail_url; // 기업 홈페이지
	private String detail_logo; // 로고 URL
	private String detail_dept; // 사업 분야
	
	public String getDetail_logo() {
		return detail_logo;
	}

	public void setDetail_logo(String detail_logo) {
		this.detail_logo = detail_logo;
	}

	public String getDetail_dept() {
		return detail_dept;
	}

	public void setDetail_dept(String detail_dept) {
		this.detail_dept = detail_dept;
	}

	public String getDetail_cmember_id() {
		return detail_cmember_id;
	}

	public void setDetail_cmember_id(String detail_cmember_id) {
		this.detail_cmember_id = detail_cmember_id;
	}

	public String getDetail_em_num() {
		return detail_em_num;
	}

	public void setDetail_em_num(String detail_em_num) {
		this.detail_em_num = detail_em_num;
	}

	public String getDetail_capital() {
		return detail_capital;
	}

	public void setDetail_capital(String detail_capital) {
		this.detail_capital = detail_capital;
	}

	public String getDetail_sales() {
		return detail_sales;
	}

	public void setDetail_sales(String detail_sales) {
		this.detail_sales = detail_sales;
	}

	public String getDetail_pay() {
		return detail_pay;
	}

	public void setDetail_pay(String detail_pay) {
		this.detail_pay = detail_pay;
	}

	public String getDetail_url() {
		return detail_url;
	}

	public void setDetail_url(String detail_url) {
		this.detail_url = detail_url;
	}

}
