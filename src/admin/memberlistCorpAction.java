package admin;

import java.io.IOException;
import java.util.*;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khMemberVO;

public class memberlistCorpAction extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<khMemberVO> list = new ArrayList<khMemberVO>();
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction2 page;
	public pagingAction2 getPage() {
		return page;
	}

	public void setPage(pagingAction2 page) {
		this.page = page;
	}

	private String search;
	private String category;
	
	public memberlistCorpAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		if(getCategory() == null) {
			list = sqlMapper.queryForList("selectCorpAll");
		}else if(getCategory().equals("cno")) {
			list = sqlMapper.queryForList("selectCorpCno", getSearch());
		}else if(getCategory().equals("id")) {
			list = sqlMapper.queryForList("selectCorpId", getSearch());
		}else if(getCategory().equals("cname")) {
			list = sqlMapper.queryForList("selectCorpCname", getSearch());
		}
		totalCount = list.size();
		
		page = new pagingAction2(currentPage, totalCount, blockCount, blockPage, getCategory(), getSearch());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount){
			lastCount = page.getEndCount() + 1;
		}
		
		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;
	}

	public List<khMemberVO> getList() {
		return list;
	}

	public void setList(List<khMemberVO> list) {
		this.list = list;
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

	

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}


