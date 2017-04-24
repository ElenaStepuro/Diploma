package com.epam.elena_stepuro.epm_cas.controller.command.logout;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

public class LogoutCommand implements ActionCommand {

	public String execute(HttpServletRequest request) {
		String page = ConfigurationManager.getProperty("path.page.index");
		// уничтожение сессии
		request.getSession().invalidate();
		return page;
	}

}
