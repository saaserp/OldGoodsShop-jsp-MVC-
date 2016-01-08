package com.dkkj.ogs.model;

import com.dkkj.absct.Model;

public class SchoolModel extends Model {
	

	public SchoolModel(String school_id, String school_name) {
		super();
		this.school_id = school_id;
		this.school_name = school_name;

}
	 String school_id;
	 String school_name;

	public String getSchool_id() {
		return school_id;
	}

	public void setSchool_id(String school_id) {
		this.school_id = school_id;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
}