package com.ok.item;

import java.io.Serializable;


/**
 * The persistent class for the field database table.
 * 
 */

public class Field implements Serializable {
	private static final long serialVersionUID = 1L;

	private int fieldID;

	private String area;

	private String centerLatitude;

	private String centerLongitude;

	private String fieldInfo;

	private String fieldName;

	private String fieldUrl;

	public Field() {
	}

	public int getFieldID() {
		return this.fieldID;
	}

	public void setFieldID(int fieldID) {
		this.fieldID = fieldID;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCenterLatitude() {
		return this.centerLatitude;
	}

	public void setCenterLatitude(String centerLatitude) {
		this.centerLatitude = centerLatitude;
	}

	public String getCenterLongitude() {
		return this.centerLongitude;
	}

	public void setCenterLongitude(String centerLongitude) {
		this.centerLongitude = centerLongitude;
	}

	public String getFieldInfo() {
		return this.fieldInfo;
	}

	public void setFieldInfo(String fieldInfo) {
		this.fieldInfo = fieldInfo;
	}

	public String getFieldName() {
		return this.fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getFieldUrl() {
		return this.fieldUrl;
	}

	public void setFieldUrl(String fieldUrl) {
		this.fieldUrl = fieldUrl;
	}

}