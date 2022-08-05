/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LibraryManagement;

import java.util.Date;

/**
 *
 * @author avinash
 */
public class BookRequest {
    int userid;
    
    int serialNo;
   
    String isbnNo;
    
    String bookName;
    
    Date reqdate;
    
    Date validFrom;
    
    Date validTo;
    
    int finePaid;
    
    int finePending;
    
    String status;
    
    String reqid;
    
    Date returndate;
    
    int paidfine;

    public Date getReturndate() {
        return returndate;
    }

    public void setReturndate(Date returndate) {
        this.returndate = returndate;
    }

    public int getPaidfine() {
        return paidfine;
    }

    public void setPaidfine(int paidfine) {
        this.paidfine = paidfine;
    }
    

    public String getReqid() {
        return reqid;
    }

    public void setReqid(String reqid) {
        this.reqid = reqid;
    }
        
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(int serialNo) {
        this.serialNo = serialNo;
    }

    public String getIsbnNo() {
        return isbnNo;
    }

    public void setIsbnNo(String isbnNo) {
        this.isbnNo = isbnNo;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public Date getValidFrom() {
        return validFrom;
    }

    public void setValidFrom(Date validFrom) {
        this.validFrom = validFrom;
    }

    public Date getValidTo() {
        return validTo;
    }

    public void setValidTo(Date validTo) {
        this.validTo = validTo;
    }

    public int getFinePaid() {
        return finePaid;
    }

    public void setFinePaid(int finePaid) {
        this.finePaid = finePaid;
    }

    public int getFinePending() {
        return finePending;
    }

    public void setFinePending(int finePending) {
        this.finePending = finePending;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public Date getReqdate() {
        return reqdate;
    }

    public void setReqdate(Date reqdate) {
        this.reqdate = reqdate;
    }
    
}
