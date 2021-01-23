package model.core.service;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import api.core.service.IAlquileresService;
import model.core.dao.AlquileresDao;

@Lazy
@Service("AlquileresService")
public class AlquileresService implements IAlquileresService {
	
	 @Autowired private AlquileresDao alquileresDao;
	 @Autowired private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult alquileresQuery(Map<String, Object> keyMap, List<String> attrList) {
		return this.daoHelper.query(this.alquileresDao, keyMap, attrList);
	}

	@Override
	public EntityResult alquileresInsert(Map<String, Object> attrMap) {
		String employee=SecurityContextHolder.getContext().getAuthentication().getName();
		attrMap.put(AlquileresDao.ATTR_employee,employee);
		return this.daoHelper.insert(this.alquileresDao, attrMap);
	}

	@Override
	public EntityResult alquileresDelete(Map<String, Object> keyMap) {
		return this.daoHelper.delete(this.alquileresDao, keyMap);
	}

	@Override
	public EntityResult alquileresUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) {
		 return this.daoHelper.update(this.alquileresDao, attrMap, keyMap);
	}
	
	
}