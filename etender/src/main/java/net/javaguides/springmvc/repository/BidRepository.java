package net.javaguides.springmvc.repository;

import net.javaguides.springmvc.entity.Bid;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("bidRepository")
public interface BidRepository extends JpaRepository<Bid, String> {
}
