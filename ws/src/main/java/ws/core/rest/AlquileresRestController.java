package ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import api.core.service.IAlquileresService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/alquileres")
@ComponentScan(basePackageClasses = { api.core.service.IAlquileresService.class })
public class AlquileresRestController extends ORestController<IAlquileresService> {

 @Autowired
 private IAlquileresService alquileresService;

 @Override
 public IAlquileresService getService() {
  return this.alquileresService;
 }
}
