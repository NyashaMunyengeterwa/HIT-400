package net.javaguides.springmvc.entity;

public class EmailOrder {

    String receiver;
    String id;

    public String Id() {
        return id;
    }

    public void setId(String nationalId) {
        this.id = id;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }
}
