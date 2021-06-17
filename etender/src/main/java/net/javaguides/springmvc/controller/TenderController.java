package net.javaguides.springmvc.controller;

import net.javaguides.springmvc.entity.Tender;
import net.javaguides.springmvc.service.TenderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/tender")
public class TenderController {

    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);

    @Autowired
    TenderService tenderService;

    @GetMapping("/tenders")
    public String listTenders(Model theModel) {
        List<Tender> tenderList = tenderService.getTenders();
        theModel.addAttribute("tenders", tenderList);
        return "list-tenders";
    }

    @GetMapping("/tenderForm")
    public String showTenderForm(Model theModel) {
        LOG.debug("inside show tender-form handler method");
        Tender tender = new Tender();
        theModel.addAttribute("tender", tender);
        return "tender-form";
    }

    @GetMapping("/{tenderId}")
    public String tenderView(Model theModel, Tender tender) {
        LOG.debug("inside show tender-form handler method");
        Optional<Tender> tenderValue = tenderService.getTenderById(tender.getId());
        theModel.addAttribute("tender", tenderValue);
        return "tender-view";
    }

    @PostMapping("/saveTender")
    public String saveTender(@ModelAttribute("tender") Tender tender, Model theModel)  {
        try {
            tenderService.saveTender(tender);
            LOG.info("tender.getId()"+tender.getId());
            theModel.addAttribute("tender", tender);
            return "tender-contact-detail";

        }catch (Exception e){
            List<Tender> tenderList = tenderService.getTenders();
            theModel.addAttribute("tenders", tenderList);
            return "list-tenders";
        }
    }

    @PostMapping("/updateTender")
    public String updateTender(@ModelAttribute("tender") Tender tender, Model theModel)  {
        LOG.info("tender.getId()"+tender.getId());

        tenderService.saveTender(tender);
        return "redirect:/user/tenders";
    }
}
