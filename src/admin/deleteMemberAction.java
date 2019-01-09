package admin;
import com.opensymphony.xwork2.*;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.common.resources.*;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import java.io.*;

public class deleteMemberAction extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private String id;
	
	public deleteMemberAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		sqlMapper.delete("deleteGenMember", getId());
		return SUCCESS;
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
