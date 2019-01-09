package VO;

import java.sql.Timestamp;
import java.util.Date;

public class khHrSearchVO {
	private String resume_m_id; 
	private String member_id;
	private String member_name;
	private String resume_addr;
	private String resume_subject;
	private String resume_birth;
	private String resume_sex;
	private String edu_school_type;
	private String cal;
	private int fav_h_no;
	private int career_no;
	private boolean isCareer;
	
	
	
	public String getCal() {
		return cal;
	}
	public void setCal(String cal) {
		this.cal = cal;
	}
	public int getFav_h_no() {
		return fav_h_no;
	}
	public void setFav_h_no(int fav_h_no) {
		this.fav_h_no = fav_h_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getResume_m_id() {
		return resume_m_id;
	}
	public void setResume_m_id(String resume_m_id) {
		this.resume_m_id = resume_m_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getResume_addr() {
		return resume_addr;
	}
	public void setResume_addr(String resume_addr) {
		this.resume_addr = resume_addr;
	}
	public String getResume_subject() {
		return resume_subject;
	}
	public void setResume_subject(String resume_subject) {
		this.resume_subject = resume_subject;
	}
	public boolean isCareer() {
		return isCareer;
	}
	public void setCareer(boolean isCareer) {
		this.isCareer = isCareer;
	}
	public String getResume_birth() {
		return resume_birth;
	}
	public void setResume_birth(String resume_birth) {
		this.resume_birth = resume_birth;
	}
	public String getResume_sex() {
		return resume_sex;
	}
	public void setResume_sex(String resume_sex) {
		this.resume_sex = resume_sex;
	}
	public String getEdu_school_type() {
		return edu_school_type;
	}
	public void setEdu_school_type(String edu_school_type) {
		this.edu_school_type = edu_school_type;
	}
	public int getCareer_no() {
		return career_no;
	}
	public void setCareer_no(int career_no) {
		this.career_no = career_no;
	}

}
