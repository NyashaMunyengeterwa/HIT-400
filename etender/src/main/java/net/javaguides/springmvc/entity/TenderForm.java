package net.javaguides.springmvc.entity;

import java.util.List;

public class TenderForm {

    private  String userId;
    private List<Tender> tenderList;
    private List<Category> categoryList;
private Tender tender;

    public Tender getTender() {
        return tender;
    }

    public void setTender(Tender tender) {
        this.tender = tender;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public List<Tender> getTenderList() {
        return tenderList;
    }

    public void setTenderList(List<Tender> tenderList) {
        this.tenderList = tenderList;
    }
}
