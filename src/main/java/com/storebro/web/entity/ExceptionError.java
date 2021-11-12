package com.storebro.web.entity;

public class ExceptionError
{
	private String id;
	private String code;
	private String reason;
	private String info;
	
	public ExceptionError() {};
	
	public ExceptionError(String id, String code, String reason, String info) {
		super();
		this.id = id;
		this.code = code;
		this.reason = reason;
		this.info = info;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the reason
	 */
	public String getReason() {
		return reason;
	}

	/**
	 * @param reason the reason to set
	 */
	public void setReason(String reason) {
		this.reason = reason;
	}

	/**
	 * @return the info
	 */
	public String getInfo() {
		return info;
	}

	/**
	 * @param info the info to set
	 */
	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "Error [" + (id != null ? "id=" + id + ", " : "") + (code != null ? "code=" + code + ", " : "")
				+ (reason != null ? "reason=" + reason + ", " : "") + (info != null ? "info=" + info : "") + "]";
	}
	
}
