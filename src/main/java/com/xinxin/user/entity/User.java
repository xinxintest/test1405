package com.xinxin.user.entity;

public class User {
    private Integer id;

    private String loginname;

    private String password;

    private String nickname;

    private String phone;

    private String mail;

    private String realname;

    private String cardnum;

    private String cardurl;

    private String company;

    private String licensenum;

    private String address;

    private String roleid;

    private String status;

    private String socialUid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail == null ? null : mail.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getCardnum() {
        return cardnum;
    }

    public void setCardnum(String cardnum) {
        this.cardnum = cardnum == null ? null : cardnum.trim();
    }

    public String getCardurl() {
        return cardurl;
    }

    public void setCardurl(String cardurl) {
        this.cardurl = cardurl == null ? null : cardurl.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getLicensenum() {
        return licensenum;
    }

    public void setLicensenum(String licensenum) {
        this.licensenum = licensenum == null ? null : licensenum.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getSocialUid() {
        return socialUid;
    }

    public void setSocialUid(String socialUid) {
        this.socialUid = socialUid == null ? null : socialUid.trim();
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", loginname=" + loginname + ", password="
				+ password + ", nickname=" + nickname + ", phone=" + phone
				+ ", mail=" + mail + ", realname=" + realname + ", cardnum="
				+ cardnum + ", cardurl=" + cardurl + ", company=" + company
				+ ", licensenum=" + licensenum + ", address=" + address
				+ ", roleid=" + roleid + ", status=" + status + ", socialUid="
				+ socialUid + "]";
	}
}