package com.epam.elena_stepuro.epm_cas.controller.command.login;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;
import com.epam.elena_stepuro.epm_cas.controller.manager.MessageManager;

public class LoginCommand implements ActionCommand {

	private static final String PARAM_NAME_LOGIN = "login";
	private static final String PARAM_NAME_PASSWORD = "password";

	public String execute(HttpServletRequest request) {
		String page = null;
		// извлечение из запроса логина и пароля
		String login = request.getParameter(PARAM_NAME_LOGIN);
		String pass = request.getParameter(PARAM_NAME_PASSWORD);

		// проверка логина и пароля
		if (LoginLogic.checkLogin(login, pass)) {
			request.setAttribute("user", login);

			request.setAttribute("role", "ADMIN");
			// определение пути к main.jsp
			page = ConfigurationManager.getProperty("path.page.main");
		} else if (pass.equals("")) {
			request.setAttribute("role", "TEACHER");
		} else if (pass.equals("")) {
			request.setAttribute("role", "USER");
		} else {
			request.setAttribute("errorLoginPassMessage", MessageManager.getProperty("message.loginerror"));
			page = ConfigurationManager.getProperty("path.page.login");
		}
		return page;
	} 
}
