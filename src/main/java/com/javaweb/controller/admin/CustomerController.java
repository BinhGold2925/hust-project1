package com.javaweb.controller.admin;

import com.javaweb.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value="customerControllerOfAdmin")
public class CustomerController {
    @Autowired
    private ICustomerService customerService;

    @RequestMapping(value="/admin/customer-list", method = RequestMethod.GET)
    public ModelAndView customerList() {
        ModelAndView mav = new ModelAndView("admin/customer/list");
        mav.addObject("customerList", customerService.findAllCustomers());
        return mav;
    }

}
