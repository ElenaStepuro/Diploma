package com.epam.elena_stepuro.epm_cas.controller.command;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

public class EmptyCommand implements ActionCommand {

	public String execute(HttpServletRequest request) {
		/*
		 * � ������ ������ ��� ������� ��������� � ����������� ������������� ��
		 * �������� ����� ������
		 */
		String page = ConfigurationManager.getProperty("path.page.login");
		return page;
	}

}
