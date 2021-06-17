package net.javaguides.springmvc.controller;

import com.sun.org.apache.xpath.internal.operations.Or;
import net.javaguides.springmvc.entity.Organization;
import net.javaguides.springmvc.entity.Tender;
import net.javaguides.springmvc.entity.User;
import net.javaguides.springmvc.service.OrganizationService;
import net.javaguides.springmvc.service.UserService;
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

@Controller
@RequestMapping("/organization")
public class OrganizationController {

    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private OrganizationService organizationService;

    @GetMapping("/list")
    public String listOrganisations(Model theModel) {
        List<Organization> organizations = organizationService.getOrganizations();
        theModel.addAttribute("organizations", organizations);
        return "list-organisations";
    }

    @PostMapping("/saveOrg")
    public String saveOrganization(@ModelAttribute("tender") Organization organization, Model theModel)  {
        try {
            organizationService.saveOrganization(organization);
            LOG.info("tender.getId()"+organization.getCifNumber());
            theModel.addAttribute("organization", organization);
            return "user-contact-detail";

        }catch (Exception e){
            List<Organization> organizations = organizationService.getOrganizations();
            theModel.addAttribute("organizations", organizations);
            return "list-organisations";
        }
    }

    @GetMapping("/showForm")
    public String showOrganizationForm(Model theModel) {
        LOG.debug("inside show tender-form handler method");
        Organization organization = new Organization();
        theModel.addAttribute("organization", organization);
        return "organization-form";
    }
}
