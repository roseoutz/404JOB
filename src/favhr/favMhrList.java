package favhr;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khCareerVO;
import VO.khHrSearchVO;
import hrsearch.hrSearchPagingAction;

public class favMhrList extends ActionSupport implements SessionAware{

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private khHrSearchVO paramClass;
	private List<khHrSearchVO> favhrList;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private hrSearchPagingAction page;
	private String keyword;
	private Map session;
	private String cmember_id;
	
	public favMhrList() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		cmember_id = (String)session.get("session_id");
		favhrList = sqlMapper.queryForList("favhrList",cmember_id);
		totalCount = favhrList.size();
		page = new hrSearchPagingAction(currentPage, totalCount, blockCount, blockPage, getKeyword());
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

	public khHrSearchVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khHrSearchVO paramClass) {
		this.paramClass = paramClass;
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

	public hrSearchPagingAction getPage() {
		return page;
	}

	public void setPage(hrSearchPagingAction page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getCmember_id() {
		return cmember_id;
	}

	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}

	public List<khHrSearchVO> getFavhrList() {
		return favhrList;
	}

	public void setFavhrList(List<khHrSearchVO> favhrList) {
		this.favhrList = favhrList;
	}
	
}
