package com.epam.elena_stepuro.epm_cas.controller.command;

import javax.servlet.http.HttpServletRequest;

public interface ActionCommand {
	String execute(HttpServletRequest request);
}
