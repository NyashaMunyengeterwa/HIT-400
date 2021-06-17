package net.javaguides.springmvc.repository;

import net.javaguides.springmvc.entity.Tender;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("tenderRepository")
public interface TenderRepository extends JpaRepository<Tender, String> {

    @Query("SELECT t FROM Tender t where t.orgId = :orgId")
    List<Tender> findAllByOrgId(@Param("orgId") String orgId);

}
