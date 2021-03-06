package join;
import com.opensymphony.xwork2.*;
import com.ibatis.common.resources.*;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import java.io.*;
import java.util.Calendar;

import VO.khCMemberVO;

public class inputCorpAction extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private khCMemberVO paramClass;
	private khCMemberVO resultClass;
	
	private String cmember_cno; 
	private String cmember_id;
	private String cmember_pass; 
	private String cmember_name; 
	private String cmember_phone; 
	private String cmember_email;
	private String cmember_type; 
	private String cmember_cname; 
	private String cmember_addr;
	private String cmember_ceo;
	private Calendar today = Calendar.getInstance();
	
	public inputCorpAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new khCMemberVO();
		
		paramClass.setCmember_cno(getCmember_cno());
		paramClass.setCmember_id(getCmember_id());
		paramClass.setCmember_pass(getCmember_pass());
		paramClass.setCmember_name(getCmember_name());
		paramClass.setCmember_phone(getCmember_phone());
		paramClass.setCmember_email(getCmember_email());
		paramClass.setCmember_cname(getCmember_cname());
		paramClass.setCmember_ceo(getCmember_ceo());
		paramClass.setCmember_type(getCmember_type());
		paramClass.setCmember_addr(getCmember_addr());
		paramClass.setCmember_date(today.getTime());
		
		sqlMapper.insert("insertCorpMember", paramClass);
		
		return SUCCESS;
		
	}

	

	public String getCmember_cno() {
		return cmember_cno;
	}

	public void setCmember_cno(String cmember_cno) {
		this.cmember_cno = cmember_cno;
	}

	public String getCmember_id() {
		return cmember_id;
	}

	public void setCmember_id(String cmember_id) {
		this.cmember_id = cmember_id;
	}

	public String getCmember_pass() {
		return cmember_pass;
	}

	public void setCmember_pass(String cmember_pass) {
		this.cmember_pass = cmember_pass;
	}

	public String getCmember_name() {
		return cmember_name;
	}

	public void setCmember_name(String cmember_name) {
		this.cmember_name = cmember_name;
	}

	public String getCmember_phone() {
		return cmember_phone;
	}

	public void setCmember_phone(String cmember_phone) {
		this.cmember_phone = cmember_phone;
	}

	public String getCmember_email() {
		return cmember_email;
	}

	public void setCmember_email(String cmember_email) {
		this.cmember_email = cmember_email;
	}

	public String getCmember_type() {
		return cmember_type;
	}

	public void setCmember_type(String cmember_type) {
		this.cmember_type = cmember_type;
	}

	public String getCmember_cname() {
		return cmember_cname;
	}

	public void setCmember_cname(String cmember_cname) {
		this.cmember_cname = cmember_cname;
	}

	public String getCmember_addr() {
		return cmember_addr;
	}

	public void setCmember_addr(String cmember_addr) {
		this.cmember_addr = cmember_addr;
	}

	public String getCmember_ceo() {
		return cmember_ceo;
	}

	public void setCmember_ceo(String cmember_ceo) {
		this.cmember_ceo = cmember_ceo;
	}

	public khCMemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khCMemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public khCMemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(khCMemberVO resultClass) {
		this.resultClass = resultClass;
	}
}