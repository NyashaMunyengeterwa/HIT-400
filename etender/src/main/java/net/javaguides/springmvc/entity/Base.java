package net.javaguides.springmvc.entity;

import javax.persistence.Column;
import java.time.ZonedDateTime;

public class Base {
    @Column(name="created")
    private ZonedDateTime created;

    @Column(name="deleted")
    private ZonedDateTime deleted;

    @Column(name="updated")
    private ZonedDateTime updated;

    public ZonedDateTime getCreated() {
        return created;
    }

    public void setCreated(ZonedDateTime created) {
        this.created = created;
    }

    public ZonedDateTime getDeleted() {
        return deleted;
    }

    public void setDeleted(ZonedDateTime deleted) {
        this.deleted = deleted;
    }

    public ZonedDateTime getUpdated() {
        return updated;
    }

    public void setUpdated(ZonedDateTime updated) {
        this.updated = updated;
    }
}
