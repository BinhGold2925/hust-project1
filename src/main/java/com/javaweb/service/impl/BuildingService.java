package com.javaweb.service.impl;

import com.javaweb.converter.BuildingConverter;
import com.javaweb.converter.RentAreaConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.RentAreaRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingService implements IBuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BuildingConverter  buildingConverter;
    @Autowired
    private RentAreaConverter rentAreaConverter;
    @Autowired
    private RentAreaRepository rentAreaRepository;


    @Override
    public ResponseDTO listStaffs(Long buildingId) {
        BuildingEntity building = buildingRepository.findById(buildingId).get();
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1, "STAFF");
        List<UserEntity> staffAssignment = building.getStaffs();
        List<StaffResponseDTO> staffResponseDTOS = new ArrayList<>();
        ResponseDTO responseDTO = new ResponseDTO();
        for (UserEntity staff : staffs) {
            StaffResponseDTO staffResponseDTO = new StaffResponseDTO();
            staffResponseDTO.setFullName(staff.getFullName());
            staffResponseDTO.setStaffId(staff.getId());
            if(staffAssignment.contains(staff)){
                staffResponseDTO.setChecked("checked");
            }else{
                staffResponseDTO.setChecked("");
            }
            staffResponseDTOS.add(staffResponseDTO);
        }
        responseDTO.setData(staffResponseDTOS);
        responseDTO.setMessage("success");
        return responseDTO;
    }

    @Override
    public List<BuildingSearchResponse> listBuildingAll() {
        List<BuildingSearchResponse> buildingSearchResponses = new ArrayList<>();
        List<BuildingEntity> buildingEntities = buildingRepository.findAll();
        for(BuildingEntity buildingEntity : buildingEntities){
            BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
            buildingSearchResponse = buildingConverter.convert(buildingEntity);
            buildingSearchResponses.add(buildingSearchResponse);
        }
        return buildingSearchResponses;
    }

    @Override
    public List<BuildingSearchResponse> listBuildingFindFilter(BuildingSearchRequest buildingSearchRequest) {
        List<BuildingSearchResponse> buildingSearchResponses = new ArrayList<>();
        List<BuildingEntity> buildingEntities = buildingRepository.findFilter(buildingSearchRequest);
        for(BuildingEntity buildingEntity : buildingEntities){
            BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
            buildingSearchResponse = buildingConverter.convert(buildingEntity);
            buildingSearchResponses.add(buildingSearchResponse);
        }
        return buildingSearchResponses;
    }

    @Override
    @Transactional
    public BuildingDTO insertBuilding(BuildingDTO buildingDTO) {
        BuildingEntity buildingEntity = buildingRepository.save(buildingConverter.convertToEntity(buildingDTO));
        if(buildingEntity.getId() != null){
            rentAreaRepository.deleteAllByBuildingEntity_Id(buildingEntity.getId());
        }
        List<RentAreaEntity> rentAreaEntities = rentAreaConverter.converterToEntity(buildingDTO);
        for (RentAreaEntity rentAreaEntity : rentAreaEntities) {
            rentAreaEntity.setBuilding(buildingEntity);
            rentAreaRepository.save(rentAreaEntity);
        }
        buildingEntity.setRentAreaEntities(rentAreaEntities);
        return buildingConverter.convertToDTO(buildingEntity);
    }



    @Override
    public BuildingDTO findBuildingById(long id) {
        BuildingEntity buildingEntity = buildingRepository.findById(id).get();
        BuildingDTO buildingDTO =  buildingConverter.convertToDTO(buildingEntity);
        return buildingDTO;
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for(long item : ids){
            rentAreaRepository.deleteAllByBuildingEntity_Id(item);
            buildingRepository.deleteById(item);
        }
    }

    @Override
    @Transactional
    public void updateAssignmentBuilding(AssignmentBuildingDTO assignmentBuildingDTO) {
        BuildingEntity buildingEntity = buildingRepository.findById(assignmentBuildingDTO.getBuildingId()).get();
        buildingEntity.getStaffs().clear();
        List<UserEntity> staffs = userRepository.findAllById(assignmentBuildingDTO.getStaffs());
        buildingEntity.getStaffs().addAll(staffs);
        buildingRepository.save(buildingEntity);
    }

}
