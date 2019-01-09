package login;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class logoutAction extends ActionSupport implements SessionAware {

	private Map session;
	private String session_type;

	public String execute() throws Exception {
		session_type = (String) session.get("session_type");

		if (session_type == "기업") {
			session.remove("session_id");
			session.remove("session_type");
			session.remove("session_name");
		} else {
			session.remove("session_id");
			session.remove("session_type");
			session.remove("session_name");
			session.remove("session_email");
			session.remove("session_phone");
		}

		return SUCCESS;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}
