package Controllers;

import java.sql.SQLException;

import org.eclipse.jetty.http.HttpStatus.Code;
import org.json.JSONArray;

import Servisofts.http.Exception.*;
import Servisofts.http.annotation.*;
import database.SQLServer;
import utils.ApiKeys;

@RestController
@RequestMapping("/api")
public class ApiController {

  @GetMapping("/")
  public String root(@RequestHeader(value = "Authorization", required = true) String apiToken) throws HttpException {
    ApiKeys.validateRequest(apiToken);
    // System.out.println(apiToken);
    return "[POST]/select";
  }

  @PostMapping("/select")
  public String select(@RequestHeader(value = "Authorization", required = true) String apiToken,
      @RequestBody String body) throws HttpException {
    ApiKeys.validateRequest(apiToken);
    try {
      if (body.length() <= 0) {
        throw new HttpException(404, "Error la consulta esta vacia.");
      }
      JSONArray arr = SQLServer.executeString(body);
      return arr.toString();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
      throw new HttpException(404, e.getMessage());
    }
  }

}
