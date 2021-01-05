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
 public static final String ATTR_ciudad = "CIUDAD";
 public static final String ATTR_localidad = "LOCALIDAD";
 public static final String ATTR_picture = "PICTURE";
 public static final String ATTR_precio = "PRECIO";
 public static final String ATTR_numero_habitaciones = "NUMERO_HABITACIONES";
 public static final String ATTR_numero_baños = "NUMERO_BAÑOS";
 public static final String ATTR_amueblada = "AMUEBLADA";
 public static final String ATTR_ascensor = "ASCENSOR";
 public static final String ATTR_animales = "ANIMALES";
 public static final String ATTR_curso_completo = "CURSO_COMPLETO";
 public static final String ATTR_direccion = "DIRECCION";
 
 

}