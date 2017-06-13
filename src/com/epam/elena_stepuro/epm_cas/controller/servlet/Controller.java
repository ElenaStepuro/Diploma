package com.epam.elena_stepuro.epm_cas.controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epam.elena_stepuro.epm_cas.controller.command.ActionCommand;
import com.epam.elena_stepuro.epm_cas.controller.command.ActionFactory;
import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;
import com.epam.elena_stepuro.epm_cas.controller.manager.MessageManager;

/**
 * Описание: класс контроллер для взаимодействия сервера и интерфейса
 * пользователя
 * 
 * Servlet implementation class FrontController
 * 
 * @author Елена
 * @date June 10, 2017
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Описание: контруктор по умолчанию
	 * 
	 * @see HttpServlet#HttpServlet()
	 * @author Елена
	 */
	public Controller() {
		super();
	}

	/**
	 * Описание: получение и обработка запроса клиента
	 * 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * @author Елена
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Описание: 
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * @author Елена
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Описание:
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 * @author Елена
	 */
	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = null;
		// определение команды, пришедшей из JSP
		ActionFactory client = new ActionFactory();
		ActionCommand command = client.defineCommand(request);
		/*
		 * вызов реализованного метода execute() и передача параметров
		 * классу-обработчику конкретной команды
		 */
		page = command.execute(request);
		// метод возвращает страницу ответа
		// page = null; // поэксперементировать!
		if (page != null) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page);
			// вызов страницы ответа на запрос
			dispatcher.forward(request, response);
		} else {
			// установка страницы c cообщением об ошибке
			page = ConfigurationManager.getProperty("path.page.index");
			request.getSession().setAttribute("nullPage", MessageManager.getProperty("message.nullpage"));
			response.sendRedirect(request.getContextPath() + page);
		}
	}

}
