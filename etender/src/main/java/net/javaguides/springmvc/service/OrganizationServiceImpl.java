package net.javaguides.springmvc.service;

import net.javaguides.springmvc.entity.Organization;
import net.javaguides.springmvc.repository.OrganizationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganizationServiceImpl implements OrganizationService {

    @Qualifier("organizationRepository")
    @Autowired
    OrganizationRepository organizationRepository;

    @Override
    public List<Organization> getOrganizations() {
        return organizationRepository.findAll();
    }

    @Override
    public void saveOrganization(Organization organization) {
        organizationRepository.save(organization);
    }
}
