package com.epam.elena_stepuro.epm_cas.controller.command.login;

public class LoginLogic {

	private final static String ADMIN_LOGIN = "admin";
	private final static String ADMIN_PASS = "klon00";

	public static boolean checkLogin(String enterLogin, String enterPass) {
		return ADMIN_LOGIN.equals(enterLogin) && ADMIN_PASS.equals(enterPass);
	}

}
