package erp.hrms.beans;

public class TrainerBeans {
	
	
	public int trainer_id;
	private int tempID;
	private String tempName;
	
	public int getTrainer_id() {
		return trainer_id;
	}
	public void setTrainer_id(int trainer_id) {
		this.trainer_id = trainer_id;
	}
	public String getTrainer_name() {
		return trainer_name;
	}
	public void setTrainer_name(String trainer_name) {
		this.trainer_name = trainer_name;
	}
	public int getTempID() {
		return tempID;
	}
	public void setTempID(int tempID) {
		this.tempID = tempID;
	}
	public String getTempName() {
		return tempName;
	}
	public void setTempName(String tempName) {
		this.tempName = tempName;
	}
	public String trainer_name;
}
