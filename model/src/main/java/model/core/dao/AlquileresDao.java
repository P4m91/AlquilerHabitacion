package model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("AlquileresDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/AlquileresDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class AlquileresDao extends OntimizeJdbcDaoSupport {

 public static final String ATTR_id_alquileres = "id_alquileres";
 public static final String ATTR_ciudad = "ciudad";
 public static final String ATTR_localidad = "localidad";
 public static final String ATTR_picture = "picture";
 public static final String ATTR_precio = "precio";
 public static final String ATTR_numero_habitaciones = "numero_habitaciones";
 public static final String ATTR_numero_baños = "numero_baños";
 public static final String ATTR_amueblada = "amueblada";
 public static final String ATTR_ascensor = "ascensor";
 public static final String ATTR_animales = "animales";
 public static final String ATTR_curso_completo = "curso_completo";
 public static final String ATTR_direccion = "direccion";
 public static final String ATTR_employee = "employee";
 
 
}