package main;
import com.opensymphony.xwork2.*;

import VO.khTopVO;
import top100.topPagingAction;

import com.ibatis.common.resources.*;
import com.ibatis.sqlmap.client.*;
import java.io.*;
import java.util.*;

public class searchList extends ActionSupport {
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
	private searchListPagingAction page;
	private String search; // °Ë»ö¾î
	
	
	public searchList() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		System.out.println(getSearch());
		post = sqlMapper.queryForList("selectSearchPost", getSearch());
		totalCount = post.size();
		page = new searchListPagingAction(currentPage, totalCount, blockCount, blockPage);
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

	public List<khTopVO> getPost() {
		return post;
	}

	public void setPost(List<khTopVO> post) {
		this.post = post;
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

	public searchListPagingAction getPage() {
		return page;
	}

	public void setPage(searchListPagingAction page) {
		this.page = page;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
}
