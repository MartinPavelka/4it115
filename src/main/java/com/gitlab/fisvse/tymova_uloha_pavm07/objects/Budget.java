package com.gitlab.fisvse.tymova_uloha_pavm07.objects;

import java.util.ArrayList;

import com.gitlab.fisvse.tymova_uloha_pavm07.objects.Donation;
import com.gitlab.fisvse.tymova_uloha_pavm07.users.Donor;

public class Budget {
	int size;
	ArrayList<Donation> resources = new ArrayList<Donation>();
	
	Budget() {
		size = 0;
	}
	
	public void receiveDonation(int amount, String type, Donor owner) {
		resources.add(new Donation(type, amount, owner));
	}
	
	public void useHair() {
		int donation = resources.indexOf("hair");
		resources.remove(donation);
	}
	
	public void useMoney() {
		int donation = resources.indexOf("money");
		resources.remove(donation);
	}
}
