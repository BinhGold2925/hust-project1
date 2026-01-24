package com.javaweb.service.impl;

import com.javaweb.converter.CustomerConverter;
import com.javaweb.entity.CustomerEntity;
import com.javaweb.model.dto.CustomerDTO;

import com.javaweb.repository.CustomerRepository;
import com.javaweb.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomerService implements ICustomerService {
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CustomerConverter customerConverter;

    @Override
    public List<CustomerDTO> findAllCustomers() {
        List<CustomerEntity> entities = new ArrayList<>();
        customerRepository.findAll().forEach(entities::add);
        List<CustomerDTO> customerDTOs = new ArrayList<>();
        for(CustomerEntity entity : entities){
            CustomerDTO cusDto = customerConverter.convertToDTO(entity);
            customerDTOs.add(cusDto);
        }

        return customerDTOs;
    }

    @Override
    @Transactional
    public CustomerDTO insertCustomer(CustomerDTO customerDTO) {
        CustomerEntity customerEntity = customerRepository.save(customerConverter.convertToEntity(customerDTO));
        return customerConverter.convertToDTO(customerEntity);
    }

}
