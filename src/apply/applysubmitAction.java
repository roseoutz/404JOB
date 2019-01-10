package apply;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import VO.khApplyHrVO;
import VO.khTopVO;

public class applysubmitAction extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private String cname;
	private Map session;
	private String session_id;
	private int post_no;
	private String cmember_id;


	private khApplyHrVO applyClass;
	private khTopVO topClass;

	public applysubmitAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		topClass = new khTopVO();
		applyClass = new khApplyHrVO();
		topClass.setCmember_cname(getCname());
		topClass.setPost_no(getPost_no());
		cmember_id = (String)sqlMapper.queryForObject("favcmem", topClass);
		
		
		session_id = (String)session.get("session_id");
		
		System.out.println(session_id);
		System.out.println(cmember_id);
		
		applyClass.setApply_mem_id(session_id);
		applyClass.setApply_company_id(cmember_id);
		applyClass.setApply_post_no(getPost_no());
		
		sqlMapper.insert("insertNowApply", applyClass);
		
		return SUCCESS;
		

	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public khApplyHrVO getApplyClass() {
		return applyClass;
	}

	public void setApplyClass(khApplyHrVO applyClass) {
		this.applyClass = applyClass;
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
	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

}
