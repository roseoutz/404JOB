package top100;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khCMemberVO;
import VO.khPostVO;
import VO.khTopVO;
import notice.noticePagingAction;

public class mainList extends ActionSupport{

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private List<khTopVO> post = new ArrayList<khTopVO>();
	private List<khTopVO> post2 = new ArrayList<khTopVO>();
	public List<khTopVO> getPost2() {
		return post2;
	}

	public void setPost2(List<khTopVO> post2) {
		this.post2 = post2;
	}

	private String type;
	private String career;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 2;
	private int blockPage = 2;
	private String pagingHtml;
	private topPagingAction page;
	private String category;
	private String keyword;
	
	
	public mainList() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		if(getCategory()==null&&getKeyword()==null) {
			post = sqlMapper.queryForList("selectMain");
			post2 = sqlMapper.queryForList("selectTop6", "대기업");
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
			
			
		}

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

	public List<khTopVO> getPost() {
		return post;
	}

	public void setPost(List<khTopVO> post) {
		this.post = post;
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

	public topPagingAction getPage() {
		return page;
	}

	public void setPage(topPagingAction page) {
		this.page = page;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}	
	
}
