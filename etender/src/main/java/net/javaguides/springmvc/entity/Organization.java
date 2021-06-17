package net.javaguides.springmvc.entity;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Table(name="organization")
public class Organization extends Base{

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String                   cifNumber;

    @Column(name="name")
    private String                   name;

    @Column(name="locked")
    private boolean                  locked;

    @JoinColumn(name = "contactDetail_id", referencedColumnName = "id")
    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @Where(clause = "deleted is null")
    @PrimaryKeyJoinColumn
    private ContactDetail            contactDetail;

    public String getCifNumber() {
        return cifNumber;
    }

    public void setCifNumber(String cifNumber) {
        this.cifNumber = cifNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isLocked() {
        return locked;
    }

    public void setLocked(boolean locked) {
        this.locked = locked;
    }

    public ContactDetail getContactDetail() {
        return contactDetail;
    }

    public void setContactDetail(ContactDetail contactDetail) {
        this.contactDetail = contactDetail;
    }
}
