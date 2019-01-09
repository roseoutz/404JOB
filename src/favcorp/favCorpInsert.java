package favcorp;

import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khFavCompanyVO;
import VO.khTopVO;

public class favCorpInsert extends ActionSupport implements SessionAware {

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private Map session;
	
	private String member_id;
	private String cmember_id;
	private String cmember_cname;
	private int post_no;
	private khFavCompanyVO favcorp;
	private khTopVO top;
	
	public favCorpInsert() throws Exception {
	reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	reader.close();
	}

	public String execute() throws Exception {
		top = new khTopVO();
		favcorp = new khFavCompanyVO();
		System.out.println(getCmember_cname());
		System.out.println(post_no);
		top.setCmember_cname(getCmember_cname());
		top.setPost_no(getPost_no());
		cmember_id = (String)sqlMapper.queryForObject("favcmem",top);
		member_id = (String)session.get("session_id");
		System.out.println(cmember_id);
		favcorp.setFav_c_c_id(cmember_id);
		favcorp.setFav_c_m_id(member_id);
		sqlMapper.insert("favcorpinsert",favcorp);
		
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

	public String getCmember_cname() {
		return cmember_cname;
	}

	public void setCmember_cname(String cmember_cname) {
		this.cmember_cname = cmember_cname;
	}

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public khFavCompanyVO getFavcorp() {
		return favcorp;
	}

	public void setFavcorp(khFavCompanyVO favcorp) {
		this.favcorp = favcorp;
	}
	
	
	
}
