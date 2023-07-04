package Controllers;

import java.sql.SQLException;

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
    System.out.println(apiToken);
    try {
      SQLServer.executeString("select * from dbo.usuxarios");
      return "succes";
    } catch (ClassNotFoundException | SQLException e) {
      throw new HttpException(404, e.getMessage());
    }
  }

}
