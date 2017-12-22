package com.uic.restaurantmanagement.tables;

import java.io.Serializable;

public class Tables  implements Serializable { 
	private static final long serialVersionUID = 1L;
	
	private int tableId; 
	private String tableNo;
	public int getTableId() {
		return tableId;
	}
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}
	public String getTableNo() {
		return tableNo;
	}
	public void setTableNo(String tableNo) {
		this.tableNo = tableNo;
	}
	
	



}
