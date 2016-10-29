package com.dip.core.service;

import com.dip.core.dao.UsersDao;

public class UsersService {
    private static final UsersDao userDao = new UsersDao();
    public boolean isAdmin (String login) {
        int userRoleByLogin = userDao.getUserRoleByLogin(login);
        if (userRoleByLogin == 1) {
            return true;
        }
        return false;
    }

    public boolean checkPasswordCorrectness (String user, String password) {
        String dbPassword = userDao.getPasswordByLogin(user);
        if (dbPassword.equals(password)) {
            return true;
        }
        return false;
    }
}
