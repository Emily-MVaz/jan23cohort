package com.vazquez.zookeeper;

public class Mammal {

	// member variables
	protected int energyLevel = 100;

	// getters
	public int getEnergyLevel() {
		return energyLevel;
	}

	// setters
	public void setEnergyLevel(int energyLevel) {
		this.energyLevel = energyLevel;
	}

	// display energy method
	public int displayEnergy() {
		System.out.printf("Current energy level is ", energyLevel);
		return this.energyLevel;
	}
}
