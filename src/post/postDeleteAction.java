package post;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import VO.khPostVO;

public class postDeleteAction extends ActionSupport{

	public Reader reader;
	public SqlMapClient sqlMapper;
	
	private khPostVO paramClass;
	private String post_writer;
	private int post_no;

	private String password;
	private String seesionId;
	
	public postDeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new khPostVO();
		paramClass.setPost_writer(getPost_writer());

		paramClass.setPost_no(getPost_no());
		sqlMapper.delete("selectPostDelete", paramClass);
		
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

	public khPostVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(khPostVO paramClass) {
		this.paramClass = paramClass;
	}

	public String getPost_writer() {
		return post_writer;
	}

	public void setPost_writer(String post_writer) {
		this.post_writer = post_writer;
	}

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSeesionId() {
		return seesionId;
	}

	public void setSeesionId(String seesionId) {
		this.seesionId = seesionId;
	}

	
	
}
	