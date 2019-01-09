package post;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khPostViewVO;
import VO.khReviewVO;
import review.reviewPagingAction;

public class postView extends ActionSupport{
	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private int post_no;
	private khPostViewVO resultClass;
	private List<khReviewVO> review = new ArrayList<khReviewVO>();
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private reviewPagingAction page;
	
	public postView() throws Exception{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		resultClass = (khPostViewVO)sqlMapper.queryForObject("selectPostOne", getPost_no());
		
		review = sqlMapper.queryForList("selectreview", getPost_no());
		
		totalCount = review.size();
		page = new reviewPagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
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

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public khPostViewVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(khPostViewVO resultClass) {
		this.resultClass = resultClass;
	}

	public List<khReviewVO> getReview() {
		return review;
	}

	public void setReview(List<khReviewVO> review) {
		this.review = review;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public reviewPagingAction getPage() {
		return page;
	}

	public void setPage(reviewPagingAction page) {
		this.page = page;
	}
	
}

