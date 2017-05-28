package com.epam.elena_stepuro.epm_cas.controller.command;

import com.epam.elena_stepuro.epm_cas.controller.command.add.AddCandidate;
import com.epam.elena_stepuro.epm_cas.controller.command.add.AddDirection;
import com.epam.elena_stepuro.epm_cas.controller.command.add.AddPerson;
import com.epam.elena_stepuro.epm_cas.controller.command.add.AddRDM;
import com.epam.elena_stepuro.epm_cas.controller.command.add.AddRequisition;
import com.epam.elena_stepuro.epm_cas.controller.command.login.LoginCommand;
import com.epam.elena_stepuro.epm_cas.controller.command.logout.LogoutCommand;
import com.epam.elena_stepuro.epm_cas.controller.command.show.ShowAnalisys;
import com.epam.elena_stepuro.epm_cas.controller.command.show.ShowDirection;
import com.epam.elena_stepuro.epm_cas.controller.command.show.ShowPerson;
import com.epam.elena_stepuro.epm_cas.controller.command.show.ShowRDM;
import com.epam.elena_stepuro.epm_cas.controller.command.show.ShowRequisition;

public enum CommandEnum {

	LOGIN {
		{
			this.command = new LoginCommand();
		}
	},
	LOGOUT {
		{
			this.command = new LogoutCommand();
		}
	},
	SHOW_DIRECTION {
		{
			this.command = new ShowDirection();
		}
	},
	SHOW_PERSON {
		{
			this.command = new ShowPerson();
		}
	},
	SHOW_RDM {
		{
			this.command = new ShowRDM();
		}
	},
	SHOW_REQUISITION {
		{
			this.command = new ShowRequisition();
		}
	},
	SHOW_ANALYS {
		{
			this.command = new ShowAnalisys();
		}
	},
	ADD_DIRECTION {
		{
			this.command = new AddDirection();
		}
	},
	ADD_CANDIDATE {
		{
			this.command = new AddCandidate();
		}
	},
	ADD_PERSON {
		{
			this.command = new AddPerson();
		}
	},
	ADD_RDM {
		{
			this.command = new AddRDM();
		}
	},
	ADD_REQUISITION {
		{
			this.command = new AddRequisition();
		}
	};
	ActionCommand command;

	public ActionCommand getCurrentCommand() {
		return command;
	}
}
