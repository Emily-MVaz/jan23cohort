package com.vazquez.zookeeper;

public class BatTest {

	public static void main(String[] args) {
		Bat bat = new Bat();
		
		//Bat tests
		System.out.println("------Giant Bat------");
		System.out.println(bat.displayEnergy());
		bat.fly();
		bat.eatHuman();
		bat.attackTown();
		bat.attackTown();
		bat.fly();
		bat.eatHuman();
		bat.attackTown();
		System.out.println(bat.displayEnergy());
		System.out.println("---------------------");
		
	}
}
