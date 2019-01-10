package resume;
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

import VO.khResumeVO;
import VO.khApplyPostVO;
import VO.khPortVO;

public class rslistAction extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private khResumeVO resultClass;
	private khPortVO portClass;
	
	private Map session;
	private String session_id;
	private int resume_no;
	private List<khApplyPostVO> post = new ArrayList<khApplyPostVO>();
	
	public rslistAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		resultClass = new khResumeVO();
		session_id = (String)session.get("session_id");
		resultClass = (khResumeVO)sqlMapper.queryForObject("selectResume", session_id);
		
		post = sqlMapper.queryForList("selectApplyPost", session_id); // 지원현황
		System.out.println(post.size());
		return SUCCESS;
	}
	
	public String portfolio() throws Exception{
		portClass = new khPortVO();
		session_id = (String)session.get("session_id");
		if(sqlMapper.queryForObject("selectResume", session_id) != null) {
	         resume_no = (int)sqlMapper.queryForObject("selectResume_no", session_id);
	      }
		portClass = (khPortVO)sqlMapper.queryForObject("selectPort", resume_no);
		return SUCCESS;
		
	}

	public khResumeVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(khResumeVO resultClass) {
		this.resultClass = resultClass;
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

	public khPortVO getPortClass() {
		return portClass;
	}

	public void setPortClass(khPortVO portClass) {
		this.portClass = portClass;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		rslistAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		rslistAction.sqlMapper = sqlMapper;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public List<khApplyPostVO> getPost() {
		return post;
	}

	public void setPost(List<khApplyPostVO> post) {
		this.post = post;
	}
	
}
