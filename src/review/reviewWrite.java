package review;

import java.io.Reader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khReviewVO;

public class reviewWrite extends ActionSupport {

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private khReviewVO paramClass;
	private int review_no;
	private int review_post_no;
	private int review_star;
	private String review_content;
	private Date review_date;
	private String review_writer;
	
	public reviewWrite() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new khReviewVO();
		paramClass.setReview_content(getReview_content());
		paramClass.setReview_date(new Timestamp(System.currentTimeMillis()));
		paramClass.setReview_post_no(getReview_post_no());
		paramClass.setReview_writer(getReview_writer());
		paramClass.setReview_star(getReview_star());
		System.out.println(getReview_star());
		sqlMapper.insert("insertreview",paramClass);
		
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

	public int getReview_star() {
		return review_star;
	}

	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}
	
	
}
