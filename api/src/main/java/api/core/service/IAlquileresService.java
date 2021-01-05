package api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.db.EntityResult;

public interface IAlquileresService {

 // ALQUILERES
 public EntityResult alquileresQuery(Map<String, Object> keyMap, List<String> attrList);
 public EntityResult alquileresInsert(Map<String, Object> attrMap);
 public EntityResult alquileresUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap);
 public EntityResult alquileresDelete(Map<String, Object> keyMap);

}