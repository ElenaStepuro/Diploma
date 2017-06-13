package com.epam.elena_stepuro.epm_cas.controller.command.delete;

import javax.servlet.http.HttpServletRequest;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

/**
 * Описание: класс команды удаления ресурсного менеджера
 * 
 * @author Елена
 * @date June 10, 2017
 */
public class DeleteCommand implements ActionCommand {

	/**
	 * Описание: получение данных об удаляемом менеджере и их обработка
	 * 
	 * @return страницу, на которую переходит приложение после выполнения
	 *         команды
	 * @author Елена
	 */
	public String execute(HttpServletRequest request) {
		String page = null;

		page = ConfigurationManager.getProperty("path.page.rdm");
		return page;
	}

}
