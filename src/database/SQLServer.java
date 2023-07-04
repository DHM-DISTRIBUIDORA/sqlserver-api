package database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONObject;

import Servisofts.SConfig;
import Servisofts.SConsole;
import Servisofts.Servisofts;

public class SQLServer {
    // jdbc:sqlserver://[serverName[\instanceName][:portNumber]][;property=value[;property=value]]

    private static SQLServer INSTANCE = null;
    public Connection con;

    public static SQLServer getInstance() {
        if (SQLServer.INSTANCE == null) {
            SQLServer.INSTANCE = new SQLServer();
        }
        return SQLServer.INSTANCE;
    }

    public static Connection getConexion() throws ClassNotFoundException, SQLException {
        if (!SQLServer.getInstance().isConnect()) {
            SQLServer.getInstance().connect();
        }
        return SQLServer.getInstance().con;
    }

    public boolean isConnect() {
        return false;
    }

    public void connect() throws SQLException, ClassNotFoundException {
        JSONObject props = SConfig.getJSON("database");
        String dbURL = "jdbc:sqlserver://" + props.getString("ip") + props.getString("server") + ";databaseName="
                + props.getString("dbname") + ";user="
                + props.getString("user") + ";password="
                + props.getString("password") + "";
        if (Servisofts.DEBUG)
            SConsole.warning(dbURL);
        con = DriverManager.getConnection(dbURL);
        if (con != null) {
            DatabaseMetaData dm = (DatabaseMetaData) con.getMetaData();
            SConsole.succes("Success connect to DataBase.");
            if (Servisofts.DEBUG) {
                SConsole.log("Driver name: " + dm.getDriverName());
                SConsole.log("Driver version: " + dm.getDriverVersion());
                SConsole.log("Product name: " + dm.getDatabaseProductName());
                SConsole.log("Product version: " + dm.getDatabaseProductVersion());
            }
        }
    }

    public static void executeString(String query) throws ClassNotFoundException, SQLException {
        PreparedStatement ps = getConexion().prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        String resp = "";
        while (rs.next()) {
            System.out.println(rs.toString());
        }
        rs.close();
        ps.close();
    }
}