package utils;

import org.json.JSONArray;

import Servisofts.SConfig;
import Servisofts.http.Exception.HttpException;

public class ApiKeys {

    public static boolean validateRequest(String token) throws HttpException {
        JSONArray arr = SConfig.getJSON().getJSONArray("valid_api_token");
        for (int i = 0; i < arr.length(); i++) {
            String a = arr.getString(i);
            if (token.equals(a)) {
                return true;
            }
        }
        throw new HttpException(404, "Bad api key");
    }
}
