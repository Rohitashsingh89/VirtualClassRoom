package com.entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;
import jakarta.persistence.Id;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

import jakarta.persistence.Column;
import jakarta.persistence.Lob;

@Entity
@Table(name = "files")
public class Videos {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long id;

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
	
	
	public Videos() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Videos(String name, String contentType, byte[] data) {
		super();
		this.name = name;
		this.contentType = contentType;
		this.data = data;
	}
	

	public Videos(String string) {
		// TODO Auto-generated constructor stub
	}

	public void setFilePath(String absolutePath) {
		// TODO Auto-generated method stub
		
	}
	
	   

   
}
