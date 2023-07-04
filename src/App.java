
import Controllers.ApiController;
import Controllers.RootController;
import Servisofts.*;
import Servisofts.http.Rest;
import database.SQLServer;

public class App {

    public static void main(String[] args) {
        try {
            // Servisofts.DEBUG = false;
            SConsole.succes(SConfig.getJSON().getString("nombre"));
            SQLServer.getConexion();
            Rest.addController(RootController.class);
            Rest.addController(ApiController.class);
            Rest.start(8080);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}