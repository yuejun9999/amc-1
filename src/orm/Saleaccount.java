package orm;

import java.sql.Timestamp;

/**
 * Saleaccount entity. @author MyEclipse Persistence Tools
 */

public class Saleaccount{
	public int saleaccountId;
	public int receivableID;
	public String userName;
	public String time;
	public float totalAccount;
	public Saleaccount(int receivableID, String userName, String time, float totalAccount){
		this.receivableID=receivableID;
		this.userName = userName;
		this.time = time;
		this.totalAccount = totalAccount;
	}
	public int getSaleaccountId() {
		return saleaccountId;
	}
	public void setSaleaccountId(int saleaccountId) {
		this.saleaccountId = saleaccountId;
	}
	public int getReceivableID() {
		return receivableID;
	}
	public void setReceivableID(int receivableID) {
		this.receivableID = receivableID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public float getTotalAccount() {
		return totalAccount;
	}
	public void setTotalAccount(float totalAccount) {
		this.totalAccount = totalAccount;
	}
	
	
}