package com.dip.core.jspUtil;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Юрий on 29.10.2016.
 */
public class mainformHelper {
    public static String getAlertDiv(HttpServletRequest request) {
        String wrongPassword = (String) request.getAttribute("wrongPassword");
        if ("yes".equals(wrongPassword)) {
            return "alert";
        }
        return "";
    }
}
