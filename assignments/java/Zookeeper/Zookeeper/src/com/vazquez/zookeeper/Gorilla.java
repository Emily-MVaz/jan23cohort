package com.vazquez.zookeeper;

public class Gorilla extends Mammal {

	Gorilla() {
		super();
	}

	// throw
	public void throwSomething() {
		this.energyLevel -= 5;
		System.out.printf("The Gorilla just threw something! It's energy level is now " + this.energyLevel + "\n");
	}

	// eat
	public void eatBananas() {
		this.energyLevel += 10;
		System.out.printf("The Gorilla ate a banana and is pleased. It's energy level has increased to "
				+ this.energyLevel + "\n");
	}

	// climb
	public void climb() {
		this.energyLevel -= 10;
		System.out.printf("The Gorilla climbed up a tree. Its energy decreased to " + this.energyLevel + "\n");
	}
}
