package net.javaguides.springmvc.service;

import net.javaguides.springmvc.entity.Bid;
import net.javaguides.springmvc.entity.Tender;

import java.util.List;
import java.util.Optional;

public interface TenderService {

    public List<Tender> getTenders();

    public void saveTender(Tender tender);

    public Tender updateTender(String tenderId);

    public Optional<Tender> getTenderById(String tenderId);

    public void saveBid(Bid bid );

    public Bid placeBid(String bidId, String tenderId);
}
