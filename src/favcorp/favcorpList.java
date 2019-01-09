package favcorp;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khPostViewVO;

public class favcorpList extends ActionSupport implements SessionAware {

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private Map session;
	private String member_id;
	
	private List<khPostViewVO> postList;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private String keyword;
	private String cmember_id;
	
	public favcorpList() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		member_id=(String)session.get("session_id");
		postList = sqlMapper.queryForList("selectFavPostList", member_id);
		
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
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public List<khPostViewVO> getPostList() {
		return postList;
	}
	public void setPostList(List<khPostViewVO> postList) {
		this.postList = postList;
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
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getCmember_id() {
		return cmember_id;
	}
	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}
}
