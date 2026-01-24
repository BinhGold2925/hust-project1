package com.javaweb.service;

import com.javaweb.model.dto.CustomerDTO;

import java.util.List;

public interface ICustomerService {
    List<CustomerDTO> findAllCustomers();
    CustomerDTO insertCustomer(CustomerDTO customerDTO);
}
