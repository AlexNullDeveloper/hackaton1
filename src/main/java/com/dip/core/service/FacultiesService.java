package com.dip.core.service;

import com.dip.core.dao.TeachersDao;
import com.dip.core.pojos.Faculty;
import com.dip.core.pojos.Teacher;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Юрий on 30.10.2016.
 */
public class FacultiesService {
    public List getListOfAgreedTeachers() {
        List<Faculty> faculties = new ArrayList<>();


        ResultSet agreedTeachers = new TeachersDao().getAgreedTeachers();
        try {
            while (agreedTeachers.next()) {
                addFacultyInList(faculties, agreedTeachers);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return faculties;
    }

    private void addFacultyInList(List<Faculty> faculties, ResultSet agreedTeachers) throws SQLException {
        String vuz = agreedTeachers.getString("VUZ");
        String name = agreedTeachers.getString("NAME");
        faculties.add(new Faculty(vuz, name));
    }
}
