package net.javaguides.springmvc.service;

import net.javaguides.springmvc.entity.Bid;
import net.javaguides.springmvc.entity.Tender;
import net.javaguides.springmvc.repository.BidRepository;
import net.javaguides.springmvc.repository.TenderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class TenderServiceImpl implements TenderService {
    @Qualifier("tenderRepository")
    @Autowired
    private TenderRepository tenderRepository;

    @Qualifier("bidRepository")
    @Autowired
    private BidRepository bidRepository;

    @Override
    @Transactional
    public List<Tender> getTenders() {
        return tenderRepository.findAll();
    }

    @Override
    @Transactional
    public void saveTender(Tender tender) {
        tenderRepository.save(tender);
    }

    @Override
    public Tender updateTender(String tenderId) {
        return null;
    }

    @Override
    public Optional<Tender> getTenderById(String tenderId) {
        return tenderRepository.findById(tenderId);
    }

    @Override
    @Transactional
    public void saveBid(Bid bid) {
        bidRepository.save(bid);
    }

    @Override
    public Bid placeBid(String bidId, String tenderId) {
        return null;
    }
}
