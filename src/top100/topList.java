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

public class topList extends ActionSupport{

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private List<khTopVO> post = new ArrayList<khTopVO>();
	private String type;
	private String career;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private topPagingAction page;
	private String category;
	private String keyword;
	
	public topList() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		if(getCategory()==null&&getKeyword()==null) {
			System.out.println("1");
			post = sqlMapper.queryForList("selectTOP");
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
		} else if(getCategory()==null&&getKeyword()!=null) {
			System.out.println("2");
			post = sqlMapper.queryForList("selectTOP_cat", getKeyword());
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
		} else if(category.equals("newbee")&&getKeyword()==null) {
			System.out.println("3");
			post = sqlMapper.queryForList("selectTOP_newbee");
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
		} else if(category.equals("newbee")&&getKeyword()!=null) {
			System.out.println("4");
			post = sqlMapper.queryForList("selectTOP_newbee_cat", getKeyword());
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
		} else if(category.equals("oldbee")&&getKeyword()==null) {
			System.out.println("5");
			post = sqlMapper.queryForList("selectTOP_oldbee");
			totalCount = post.size();
			page = new topPagingAction(currentPage, totalCount, blockCount, blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
		} else if(category.equals("oldbee")&&getKeyword()!=null) {
			System.out.println("6");
			post = sqlMapper.queryForList("selectTOP_oldbee_cat", getKeyword());
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
