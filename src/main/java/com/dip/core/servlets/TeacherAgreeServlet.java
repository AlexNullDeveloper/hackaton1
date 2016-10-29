package com.dip.core.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Юрий on 30.10.2016.
 */
@WebServlet("/teacherAgree")
public class TeacherAgreeServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] parameterValues = req.getParameterValues("checkboxes");
        for (int i = 0; i < parameterValues.length; i++) {
            System.out.println(parameterValues[i]);
        }
    }
}
