component {
	this.name = "includeTestSub";

	if (!structKeyExists(URL, "no")) {
		include "../include1.cfm";
	}

	public boolean function onRequestStart () {
		if (structKeyExists(URL, "no")) {
			include "../include1.cfm";
		}
		return true;
	}

	public void function onError () {
		writeDump(arguments);
	}
}
