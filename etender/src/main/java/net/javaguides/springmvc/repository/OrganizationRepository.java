package net.javaguides.springmvc.repository;

import net.javaguides.springmvc.entity.Organization;
import net.javaguides.springmvc.entity.Tender;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("organizationRepository")
public interface OrganizationRepository extends JpaRepository<Organization, String> {
}
