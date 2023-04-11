package com.vazquez.zookeeper;

public class Bat extends Mammal {

	Bat() {
//		super();
		this.energyLevel = 300;
	}

	// fly
	public void fly() {
		this.energyLevel -= 50;
		System.out.printf(
				"EEEEEEEEEEE! You hear a loud screech above you! A giant bat flies over you, decreasing its energy to "
						+ this.energyLevel + "\n");
	}

	// eat
	public void eatHuman() {
		this.energyLevel += 25;
		System.out.printf("Watch out!! The giant bat ate the person next to you. It's energy increased to "
				+ this.energyLevel + "\n");
	}

	// attack
	public void attackTown() {
		this.energyLevel -= 100;
		System.out.printf(
				"RUN!! The giant bat attacks a town leaving it in flames. That was a lot of work! It's energy level is now "
						+ this.energyLevel + "\n");

	}
}
