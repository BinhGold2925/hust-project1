package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.modelmapper.ModelMapper;
import org.modelmapper.PropertyMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


@Component
public class BuildingConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    public BuildingConverter(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
        configureModelMapper(); // Gọi phương thức cấu hình
    }

    private void configureModelMapper() {
        // Cấu hình TypeMap/PropertyMap để giải quyết lỗi "matches multiple source property hierarchies"
        modelMapper.addMappings(new PropertyMap<BuildingDTO, BuildingEntity>() {
            @Override
            protected void configure() {
                // ✅ SỬ DỤNG CÚ PHÁP TƯƠNG THÍCH VỚI MODELMAPPER 0.7.4 (hoặc cũ hơn)
                // Ánh xạ tường minh getRentPrice() của nguồn (source) sang setRentprice() của đích.
                // map(source.getRentPrice()) - chỉ định nguồn.
                // .setRentprice(null) - chỉ định đích.
                map(source.getRentPrice()).setRentprice(null);
            }
        });
    }
    public BuildingSearchResponse convert(BuildingEntity buildingEntity) {
        BuildingSearchResponse buildingSearchResponse = modelMapper.map(buildingEntity, BuildingSearchResponse.class);
        buildingSearchResponse.setAddress(buildingEntity.getStreet()+","+buildingEntity.getWard()+","+ buildingEntity.getDistrict());
        List<RentAreaEntity> rentAreaEntities = buildingEntity.getRentAreaEntities();
        String rentAreaList = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));
        buildingSearchResponse.setRentArea(rentAreaList);
        return buildingSearchResponse;
    }
    public BuildingEntity convertToEntity(BuildingDTO buildingDTO) {
        BuildingEntity buildingEntity = modelMapper.map(buildingDTO, BuildingEntity.class);
        if (buildingDTO.getTypeCode() != null) {
            buildingEntity.setType(
                    String.join(",", buildingDTO.getTypeCode())
            );
        }

        return buildingEntity;
    }
    public BuildingDTO convertToDTO(BuildingEntity buildingEntity) {
        BuildingDTO buildingDTO = modelMapper.map(buildingEntity, BuildingDTO.class);
        List<RentAreaEntity> rentAreaEntities = buildingEntity.getRentAreaEntities();
        String rentAreaList = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));
        buildingDTO.setRentArea(rentAreaList);
        if (buildingEntity.getType() != null && !buildingEntity.getType().isEmpty()) {

            String type = buildingEntity.getType()
                    .replace("[", "")
                    .replace("]", "");

            List<String> typeCodes = Arrays.stream(type.split(","))
                    .map(String::trim)
                    .collect(Collectors.toList());

            buildingDTO.setTypeCode(typeCodes);
        }

        return buildingDTO;
    }
}
