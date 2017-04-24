package com.epam.elena_stepuro.epm_cas.controller.command;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

public class EmptyCommand implements ActionCommand {

	public String execute(HttpServletRequest request) {
		/*
		 * в случае ошибки или прямого обращения к контроллеру переадресация на
		 * страницу ввода логина
		 */
		String page = ConfigurationManager.getProperty("path.page.login");
		return page;
	}

}
