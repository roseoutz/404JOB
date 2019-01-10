package corpApplicant;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khCApplicantVO;
import post.postPagingAction;


public class corpAppListAction extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private String member_id;
	private String resume_m_id;
	private int resume_no;
	private int edu_resume_no;
	private String post_writer;
	private String cmember_id;
	private String apply_c_id;
	private List<khCApplicantVO> applicantlist = new ArrayList<khCApplicantVO>();
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private postPagingAction page;
	private String keyword;
	private Map session;
	
	
	public corpAppListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		cmember_id = (String)session.get("session_id");
		System.out.println(cmember_id);
		applicantlist = sqlMapper.queryForList("selectAppList", cmember_id);
			
		totalCount = applicantlist.size();
			
		page = new postPagingAction(currentPage, totalCount, blockCount, blockPage, getKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) {
			lastCount = page.getEndCount()+1;
		}
		applicantlist = applicantlist.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
		
		
		
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		corpAppListAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		corpAppListAction.sqlMapper = sqlMapper;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getResume_m_id() {
		return resume_m_id;
	}

	public void setResume_m_id(String resume_m_id) {
		this.resume_m_id = resume_m_id;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public int getEdu_resume_no() {
		return edu_resume_no;
	}

	public void setEdu_resume_no(int edu_resume_no) {
		this.edu_resume_no = edu_resume_no;
	}

	public String getPost_writer() {
		return post_writer;
	}

	public void setPost_writer(String post_writer) {
		this.post_writer = post_writer;
	}

	public String getCmember_id() {
		return cmember_id;
	}

	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}

	public String getApply_c_id() {
		return apply_c_id;
	}

	public void setApply_c_id(String apply_c_id) {
		this.apply_c_id = apply_c_id;
	}

	public List<khCApplicantVO> getApplicantlist() {
		return applicantlist;
	}

	public void setApplicantlist(List<khCApplicantVO> applicantlist) {
		this.applicantlist = applicantlist;
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

	public postPagingAction getPage() {
		return page;
	}

	public void setPage(postPagingAction page) {
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



	
}
