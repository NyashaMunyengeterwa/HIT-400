package net.javaguides.springmvc.service;

import net.javaguides.springmvc.entity.Organization;

import java.util.List;

public interface OrganizationService {
    public List<Organization> getOrganizations();

    public void saveOrganization(Organization organization);
}
