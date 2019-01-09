package simpleqna;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khMtmVO;

public class qaList extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<khMtmVO> list = new ArrayList<khMtmVO>();
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private qnaPagingAction page;
	private String keyword;
	
	public qaList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		if(getKeyword()==null) {
			list = sqlMapper.queryForList("selectAllqa");
			totalCount = list.size();
			page = new qnaPagingAction(currentPage, totalCount, blockCount, blockPage, getKeyword());
			pagingHtml = page.getPagingHtml().toString();
		} else {
			list = sqlMapper.queryForList("selectSearchAllqa", getKeyword());
			totalCount = list.size();
			page = new qnaPagingAction(currentPage, totalCount, blockCount, blockPage, getKeyword());
			pagingHtml = page.getPagingHtml().toString();
		}
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) {
			lastCount = page.getEndCount()+1;
		}
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
		
		
		
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		qaList.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		qaList.sqlMapper = sqlMapper;
	}

	public List<khMtmVO> getList() {
		return list;
	}

	public void setList(List<khMtmVO> list) {
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

	public qnaPagingAction getPage() {
		return page;
	}

	public void setPage(qnaPagingAction page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
