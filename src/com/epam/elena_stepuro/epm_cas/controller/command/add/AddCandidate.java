package com.epam.elena_stepuro.epm_cas.controller.command.add;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

public class AddCandidate implements ActionCommand {

	public String execute(HttpServletRequest request) {
		String page = null;

		page = ConfigurationManager.getProperty("path.page.person");
		return page;
	}

}
