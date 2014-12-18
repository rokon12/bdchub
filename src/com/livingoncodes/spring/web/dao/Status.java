package com.livingoncodes.spring.web.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="status")
public class Status {

	@Id
	@GeneratedValue
	private int id;
	
	@Size(min=20, max=255, groups={PersistenceValidationGroup.class, FormValidationGroup.class})
	@Column(name="text")
	private String text;

	@ManyToOne
	@JoinColumn(name="user_id", referencedColumnName="id")
	private User user;
	
	
	
	public Status() {
		this.user = new User();
	}
	
	
	public Status(User user, String text) {
		this.user = user;
		this.text = text;
	}

	public Status(int id, User user, String text) {
		this.id = id;
		this.user = user;
		this.text = text;
	}
	
	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Status other = (Status) obj;
		if (id != other.id)
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Status [id=" + id + ", text=" + text + ", user=" + user + "]";
	}


	
}