package favhr;

import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khFavHrVO;

public class favMhrDel extends ActionSupport implements SessionAware {

	public Reader reader;
	public SqlMapClient sqlMapper;
	private int fav_h_no;
	private String cmember_id;
	private String member_id;
	private Map session;
	private khFavHrVO paramClass;
	
	public favMhrDel() throws Exception{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new khFavHrVO();
		cmember_id = (String)session.get("session_id");
		System.out.println(cmember_id);
		System.out.println(getMember_id());
		System.out.println(getFav_h_no());
		paramClass.setFav_h_c_id(cmember_id);
		paramClass.setFav_h_m_id(getMember_id());
		paramClass.setFav_h_no(getFav_h_no());
		sqlMapper.delete("favhrDel",paramClass);
		return SUCCESS;
	}

	
	public int getFav_h_no() {
		return fav_h_no;
	}

	public void setFav_h_no(int fav_h_no) {
		this.fav_h_no = fav_h_no;
	}

	public khFavHrVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khFavHrVO paramClass) {
		this.paramClass = paramClass;
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

	public String getCmember_id() {
		return cmember_id;
	}

	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
}
