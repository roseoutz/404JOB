package resume;
import java.io.IOException;

import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khApplyVO;
public class resumeModifyListAction extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private khApplyVO apply;
	private int resume_no;
	private Map session;
	private String session_id;
	private String member_id;
	private String session_type;
	
	public resumeModifyListAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		session_id = (String)session.get("session_id");
		session_type = (String)session.get("session_type");
		apply = new khApplyVO();
		if(session_type.equals("일반")) {
			resume_no = (int)sqlMapper.queryForObject("selectResume_no", session_id);
		} else {
			resume_no = (int)sqlMapper.queryForObject("selectResume_no", getMember_id());
		}
		apply = (khApplyVO)sqlMapper.queryForObject("selectApply", resume_no);
	
		return SUCCESS;
		
	}
	
	public String getSession_type() {
		return session_type;
	}

	public void setSession_type(String session_type) {
		this.session_type = session_type;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getSession_id() {
		return session_id;
	}

	public void setSession_id(String session_id) {
		this.session_id = session_id;
	}

	public khApplyVO getApply() {
		return apply;
	}

	public void setApply(khApplyVO apply) {
		this.apply = apply;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		resumeModifyListAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		resumeModifyListAction.sqlMapper = sqlMapper;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	
	
	
	
	
	

}
