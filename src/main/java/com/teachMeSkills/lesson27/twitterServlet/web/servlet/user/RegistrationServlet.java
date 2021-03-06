package com.teachMeSkills.lesson27.twitterServlet.web.servlet.user;

import com.teachMeSkills.lesson27.twitterServlet.entity.Role;
import com.teachMeSkills.lesson27.twitterServlet.entity.User;
import com.teachMeSkills.lesson27.twitterServlet.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

    private static Logger logger = LogManager.getLogger();
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/registration.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int userId = userService.getIdUser();
        String name = req.getParameter("name");
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        logger.debug("Start registration {}", login);
        User user = new User();
        user.setId(userId);
        user.setName(name);
        user.setLogin(login);
        user.setPassword(password);

        if (userId == 1) {
            user.setRole(Role.ADMIN);
        } else {
            user.setRole(Role.USER);
        }

        boolean isAdded = userService.addUser(user);
        req.setAttribute("isAdded", isAdded);
        if (isAdded) {
            logger.debug("Success registration {}", login);
            resp.sendRedirect("/authorization.jsp");
        } else {
            logger.debug("Error registration {}", login);
            getServletContext().getRequestDispatcher("/registration.jsp").forward(req, resp);
            resp.setStatus(400);
        }

    }
}
