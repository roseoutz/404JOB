package favhr;

import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khFavHrVO;

public class favMhrInsert extends ActionSupport implements SessionAware {

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private String member_id;
	private String cmember_id;
	
	private khFavHrVO paramClass;
	private Map session;
	
	public favMhrInsert() throws Exception {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		cmember_id = (String)session.get("session_id");
		paramClass = new khFavHrVO();
		paramClass.setFav_h_c_id(cmember_id);
		paramClass.setFav_h_m_id(getMember_id());
		
		sqlMapper.insert("favhr_m",paramClass);
		return SUCCESS;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
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

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getCmember_id() {
		return cmember_id;
	}

	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}

	public khFavHrVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khFavHrVO paramClass) {
		this.paramClass = paramClass;
	}
	
	
}
