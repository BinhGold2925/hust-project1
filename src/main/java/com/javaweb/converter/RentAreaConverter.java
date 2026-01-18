package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class RentAreaConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private BuildingConverter buildingConverter;

    public List<RentAreaEntity> converterToEntity(BuildingDTO buildingDTO) {
        List<RentAreaEntity> rentAreaEntities = new ArrayList<>();
        String [] a=buildingDTO.getRentArea().split(",");
        for(String s: a){
            s=s.trim();
            if (s.isEmpty()) continue;
            RentAreaEntity rentAreaEntity = new RentAreaEntity();
            rentAreaEntity.setValue(Integer.parseInt(s));
            rentAreaEntity.setBuilding(buildingConverter.convertToEntity(buildingDTO));
            rentAreaEntities.add(rentAreaEntity);
        }
        return rentAreaEntities;
    }
}
