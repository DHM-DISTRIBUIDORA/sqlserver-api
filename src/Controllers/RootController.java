package Controllers;

import org.json.JSONArray;

import Servisofts.SConfig;
import Servisofts.http.Exception.*;
import Servisofts.http.annotation.*;

@RestController
@RequestMapping("/")
public class RootController {

  @GetMapping("/")
  public String root() throws HttpException {
    
    return "Bienvenido a "+SConfig.getJSON().getString("nombre")+", Si ya tienes un api-token continua a la api.";
  }

}
