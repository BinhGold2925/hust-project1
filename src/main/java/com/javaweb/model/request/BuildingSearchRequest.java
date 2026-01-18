package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;

import java.util.List;

public class BuildingSearchRequest extends AbstractDTO {
    private String name;
    private Long floorarea;
    private String district;
    private String ward;
    private String street;
    private Long numberofbasement;
    private String direction;
    private Long level;
    private Long areafrom;
    private Long areato;
    private Long rentpricefrom;
    private Long rentpriceto;
    private String managername;
    private String managerphone;
    private Long staffid;
    private List<String> type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getFloorarea() {
        return floorarea;
    }

    public void setFloorarea(Long floorarea) {
        this.floorarea = floorarea;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Long getNumberofbasement() {
        return numberofbasement;
    }

    public void setNumberofbasement(Long numberofbasement) {
        this.numberofbasement = numberofbasement;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public Long getLevel() {
        return level;
    }

    public void setLevel(Long level) {
        this.level = level;
    }

    public Long getAreafrom() {
        return areafrom;
    }

    public void setAreafrom(Long areafrom) {
        this.areafrom = areafrom;
    }

    public Long getAreato() {
        return areato;
    }

    public void setAreato(Long areato) {
        this.areato = areato;
    }

    public Long getRentpricefrom() {
        return rentpricefrom;
    }

    public void setRentpricefrom(Long rentpricefrom) {
        this.rentpricefrom = rentpricefrom;
    }

    public Long getRentpriceto() {
        return rentpriceto;
    }

    public void setRentpriceto(Long rentpriceto) {
        this.rentpriceto = rentpriceto;
    }

    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername;
    }

    public String getManagerphone() {
        return managerphone;
    }

    public void setManagerphone(String managerphone) {
        this.managerphone = managerphone;
    }

    public Long getStaffid() {
        return staffid;
    }

    public void setStaffid(Long staffid) {
        this.staffid = staffid;
    }

    public List<String> getType() {
        return type;
    }

    public void setType(List<String> type) {
        this.type = type;
    }
}
