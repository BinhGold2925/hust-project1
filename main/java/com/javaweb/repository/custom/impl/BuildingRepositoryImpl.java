package com.javaweb.repository.custom.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;

@Repository
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;

    public static void joinTable(BuildingSearchRequest buildingSearchRequest, StringBuilder sql) {
        Long staffId = buildingSearchRequest.getStaffid();
        if(staffId!=null){
            sql.append(" INNER JOIN assignmentbuilding ab ON b.id = ab.buildingid ");
        }

        Long areaFrom = buildingSearchRequest.getAreafrom();
        Long  areaTo = buildingSearchRequest.getAreato();
        if(areaFrom!=null || areaTo!=null){
            sql.append(" INNER JOIN rentarea ra ON b.id = ra.buildingid ");
        }
    }
    public static void queryNormal(BuildingSearchRequest buildingSearchRequest, StringBuilder where) {
        try{
//            Field[] fields = BuildingSearchRequest.class.getDeclaredFields();
//            for(Field item : fields){
//                item.setAccessible(true);
//                String fieldName = item.getName();
//                if(!fieldName.equals("staffid") && !fieldName.startsWith("area") && !fieldName.startsWith("rentprice")){
//                    Object value = item.get(buildingSearchRequest);
//                    if(value != null){
//                        if (item.getType().getName().equals("java.lang.Long")) {
//                            where.append(" AND b." + fieldName + " = " + value + " ");
//                        } else {
//                            where.append("AND b." + fieldName + " like '%" + value + "%' ");
//                        }
//                    }
//                }
//            }
            //đoạn trên chỉ dùng cho builder
            String name = buildingSearchRequest.getName();
            if(name != null &&  !name.trim().equals("")){
                where.append(" AND b.name LIKE '%"+name+"%' ");
            }
            Long floorarea = buildingSearchRequest.getFloorarea();
            if(floorarea != null){
                where.append("AND b.floorarea = "+floorarea+" ");
            }
            String district  = buildingSearchRequest.getDistrict();
            if(district != null && !district.trim().equals("")){
                where.append("AND b.district LIKE '%"+district+"%' ");
            }
            String ward  = buildingSearchRequest.getWard();
            if(ward != null &&  !ward.trim().equals("")){
                where.append("AND b.ward LIKE '%"+ward+"%' ");
            }
            String  street = buildingSearchRequest.getStreet();
            if(street != null &&  !street.trim().equals("")){
                where.append("AND b.street LIKE '%"+street+"%' ");
            }
            String direction = buildingSearchRequest.getDirection();
            if(direction != null &&  !direction.trim().equals("")){
                where.append("AND b.direction LIKE '%"+direction+"%' ");
            }
            String managername  = buildingSearchRequest.getManagername();
            if(managername != null &&  !managername.trim().equals("")){
                where.append("AND b.managername LIKE '%"+managername+"%' ");
            }
            String managerphone = buildingSearchRequest.getManagerphone();
            if(managerphone != null &&  !managerphone.trim().equals("")){
                where.append("AND b.managerphone LIKE '%"+managerphone+"%' ");
            }
            List<String> types = buildingSearchRequest.getType();
            if (types != null && !types.isEmpty()) {
                where.append(" AND (");
                for (int i = 0; i < types.size(); i++) {
                    String type = types.get(i).trim();
                    if (!type.isEmpty()) {
                        where.append(" b.type LIKE '%").append(type).append("%' ");
                        if (i < types.size() - 1) {
                            where.append(" OR ");
                        }
                    }
                }
                where.append(") ");
            }

            Long level= buildingSearchRequest.getLevel();
            if(level != null){
                where.append("AND b.level ="+level+" ");
            }
            Long numberofbasement = buildingSearchRequest.getNumberofbasement();
            if(numberofbasement != null){
                where.append("AND b.numberofbasement ="+numberofbasement+" ");
            }


        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void querySpecial(BuildingSearchRequest buildingSearchRequest, StringBuilder where) {
        Long staffId = buildingSearchRequest.getStaffid();
        if (staffId != null) {
            where.append(" AND ab.staffid = " + staffId + " ");
        }
        Long areaFrom = buildingSearchRequest.getAreafrom();
        Long  areaTo = buildingSearchRequest.getAreato();
        if(areaFrom!=null ){
            where.append(" AND ra.value >= " + areaFrom + " ");
        }
        if(areaTo!=null){
            where.append(" AND ra.value <= " + areaTo + " ");
        }
        Long rentpricefrom =  buildingSearchRequest.getRentpricefrom();
        Long rentpriceto =  buildingSearchRequest.getRentpriceto();
        if (rentpricefrom != null) {
            where.append(" AND b.rentprice >= " + rentpricefrom + " ");
        }
        if (rentpriceto != null) {
            where.append(" AND b.rentprice <= " + rentpriceto + " ");
        }

    }

    @Override
    public List<BuildingEntity> findFilter(BuildingSearchRequest buildingSearchRequest) {
        StringBuilder sql = new StringBuilder(" SELECT b.* FROM building b ");
        joinTable(buildingSearchRequest, sql);
        StringBuilder sql2 = new StringBuilder(" WHERE 1=1 ");
        queryNormal(buildingSearchRequest, sql2);
        querySpecial(buildingSearchRequest, sql2);
        sql.append(sql2);
        sql.append(" GROUP BY b.id ");
        Query query = entityManager.createNativeQuery(sql.toString(), BuildingEntity.class);
        return query.getResultList();
    }
}
