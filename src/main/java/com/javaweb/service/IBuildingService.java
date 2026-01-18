package com.javaweb.service;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;

import java.util.List;

public interface IBuildingService {
    ResponseDTO listStaffs(Long buildingId);
    List<BuildingSearchResponse> listBuildingAll();
    List<BuildingSearchResponse> listBuildingFindFilter(BuildingSearchRequest buildingSearchRequest);
    BuildingDTO insertBuilding(BuildingDTO buildingDTO);
    BuildingDTO findBuildingById(long id);
    void delete(long[] ids);
    void updateAssignmentBuilding(AssignmentBuildingDTO assignmentBuildingDTO);
}
