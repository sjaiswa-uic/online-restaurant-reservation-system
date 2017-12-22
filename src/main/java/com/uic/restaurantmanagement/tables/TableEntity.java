package com.uic.restaurantmanagement.tables;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Tables")
public class TableEntity implements Serializable { 

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Table_Id")
	private int tableId;  

	@Column(name="Table_Name")
	private String tableName;
	
	@Column(name="Table_Align1")
	private int tableAlign1; 

	@Column(name="Table_Align2")
	private int tableAlign2; 
	
	@Column(name="Table_Align3")
	private int tableAlign3; 

	@Column(name="Table_Align4")
	private int tableAlign4;
	
	/**
	 * @return the tableId
	 */
	public int getTableId() {
		return tableId;
	}

	/**
	 * @param tableId the tableId to set
	 */
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}

	
	/**
	 * @return the tableName
	 */
	public String getTableName() {
		return tableName;
	}

	/**
	 * @param tableName the tableName to set
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	/**
	 * @return the tableAlign1
	 */
	public int getTableAlign1() {
		return tableAlign1;
	}

	/**
	 * @param tableAlign1 the tableAlign1 to set
	 */
	public void setTableAlign1(int tableAlign1) {
		this.tableAlign1 = tableAlign1;
	}

	/**
	 * @return the tableAlign2
	 */
	public int getTableAlign2() {
		return tableAlign2;
	}

	/**
	 * @param tableAlign2 the tableAlign2 to set
	 */
	public void setTableAlign2(int tableAlign2) {
		this.tableAlign2 = tableAlign2;
	}

	/**
	 * @return the tableAlign3
	 */
	public int getTableAlign3() {
		return tableAlign3;
	}

	/**
	 * @param tableAlign3 the tableAlign3 to set
	 */
	public void setTableAlign3(int tableAlign3) {
		this.tableAlign3 = tableAlign3;
	}

	/**
	 * @return the tableAlign4
	 */
	public int getTableAlign4() {
		return tableAlign4;
	}

	/**
	 * @param tableAlign4 the tableAlign4 to set
	 */
	public void setTableAlign4(int tableAlign4) {
		this.tableAlign4 = tableAlign4;
	}
}
