package com.epam.elena_stepuro.epm_cas.controller.manager;

import java.util.ResourceBundle;

public class MessageManager {

	private final static ResourceBundle resourceBundle = ResourceBundle
			.getBundle("com.epam.elena_stepuro.epm_cas.resources.messages");

	// ����� ��������� ���������� �� ����� messages.properties
	private MessageManager() {
	}

	public static String getProperty(String key) {
		return resourceBundle.getString(key);
	}
}
