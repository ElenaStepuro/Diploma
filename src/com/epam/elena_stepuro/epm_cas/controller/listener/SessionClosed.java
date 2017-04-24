package com.epam.elena_stepuro.epm_cas.controller.listener;

import java.sql.Timestamp;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionClosed
 *
 */
public class SessionClosed implements HttpSessionListener {

	/**
	 * Default constructor.
	 */
	public SessionClosed() {
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent arg0) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		System.out.println("[" + time.toString() + "]" + arg0.getSession().getId() + " created.");
	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent arg0) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		System.out.println("[" + time.toString() + "]" + arg0.getSession().getId() + " destroyed.");
	}

}
