package com.epam.elena_stepuro.epm_cas.controller.command.add;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

/**
 * ��������: ����� ������� ��������� ������ ����������� ���������� ���������
 * 
 * @author �����
 * @date June 10, 2017
 *
 */
public class AddRDM implements ActionCommand {

	/**
	 * ��������: ��������� ������ � ������� � �� ���������
	 * 
	 * @return ���������� ��������, �� ������� ��������� ����������, �����
	 *         ���������� �������
	 * @author �����
	 */
	public String execute(HttpServletRequest request) {
		String page = null;
		
		

		page = ConfigurationManager.getProperty("path.page.rdm");
		return page;
	}

}
