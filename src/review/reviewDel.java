package review;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khCMemberVO;
import VO.khMemberVO;
import VO.khReviewVO;

public class reviewDel extends ActionSupport{

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	
	private khReviewVO paramClass;
	private int review_no;
	private int review_post_no;
	private khMemberVO memberClass;
	private String member_pass;
	private String member_id;
	
	public reviewDel() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		int x;
		memberClass = new khMemberVO();
		memberClass.setMember_id(getMember_id());
		memberClass.setMember_pass(getMember_pass());
		x = (int) sqlMapper.queryForObject("loginCheckGen", memberClass);
		if(x!=1) {
			return ERROR;
		}
		else {
		paramClass = new khReviewVO();
		paramClass.setReview_writer(getMember_id());
		paramClass.setReview_no(getReview_no());
		paramClass.setReview_post_no(getReview_post_no());
		sqlMapper.delete("deletereview", paramClass);
		
		return SUCCESS;
		}
	}
	
	public String checkForm() throws Exception{
		return SUCCESS;
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public khReviewVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khReviewVO paramClass) {
		this.paramClass = paramClass;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public int getReview_post_no() {
		return review_post_no;
	}

	public void setReview_post_no(int review_post_no) {
		this.review_post_no = review_post_no;
	}

	public khMemberVO getMemberClass() {
		return memberClass;
	}

	public void setMemberClass(khMemberVO memberClass) {
		this.memberClass = memberClass;
	}

	public String getMember_pass() {
		return member_pass;
	}

	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

}
	