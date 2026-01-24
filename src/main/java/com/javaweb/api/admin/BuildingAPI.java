package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.impl.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.awt.print.Pageable;
import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;


    //phần này dùng để làm phân trang nên chưa chỉnh
    @GetMapping
    public List<BuildingSearchResponse> getBuilding(@ModelAttribute BuildingSearchRequest buildingSearchRequest, Pageable pageable){
        List<BuildingSearchResponse> res = buildingService.listBuildingAll();//chưa chỉnh để tạm
        return res;
    }

    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO){
        //xuong DB de update hoac them moi
        return buildingService.insertBuilding(buildingDTO);
    }
    @DeleteMapping()
    public ResponseEntity<Void> deleteBuilding(@RequestBody long[] ids){
        //xuong DB de xoa building theo danh sach id gui ve
        buildingService.delete(ids);
        return ResponseEntity.noContent().build();
    }
    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable long id){
        ResponseDTO result = buildingService.listStaffs(id);
        return result;
    }
    @PostMapping("/assignment")
    public void updateAssignment(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO){
        buildingService.updateAssignmentBuilding(assignmentBuildingDTO);
    }
}
