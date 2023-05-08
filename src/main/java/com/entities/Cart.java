package com.entities;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

import com.EnumOfUserType.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name = "Cart")

public class Cart implements Serializable {
	
	private static final long serialVersionUID = 1 ;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
	
	private String CourseName;
	private String Price;
	
	private int percent;
	private Date AddedDate;
	private String filePath;

	
	@Column(name = "name")
    private String name;

    @Column(name = "content_type")
    private String contentType;

    @Lob
    @Column(name = "data", columnDefinition = "longblob")
    private byte[] data;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getCourseName() {
		return CourseName;
	}

	public void setCourseName(String courseName) {
		CourseName = courseName;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public int getPercent() {
		return percent;
	}

	public void setPercent(int percent) {
		this.percent = percent;
	}

	public Date getAddedDate() {
		return AddedDate;
	}

	public void setAddedDate(Date addedDate) {
		AddedDate = addedDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

	public void writeToFile(File file) throws Exception {
	    OutputStream out = null;
	    try {
	        out = new FileOutputStream(file);
	        out.write(data);
	    } finally {
	        if (out != null) {
	            out.close();
	        }
	    }
	}

	public Cart(String courseName, String price, int percent, Date addedDate, String filePath, String name,
			String contentType, byte[] data) {
		super();
		CourseName = courseName;
		Price = price;
		this.percent = percent;
		AddedDate = addedDate;
		this.filePath = filePath;
		this.name = name;
		this.contentType = contentType;
		this.data = data;
	}
	
		
	
	
}
