package com.vazquez.zookeeper;

public class GorillaTest {

	public static void main(String[] args) {
		Gorilla gorilla = new Gorilla();
		
		// Gorilla tests
		System.out.println("------Gorilla------");
		System.out.println(gorilla.displayEnergy());
		gorilla.throwSomething();
		gorilla.throwSomething();
		gorilla.throwSomething();
		gorilla.eatBananas();
		gorilla.eatBananas();
		gorilla.climb();
		System.out.println(gorilla.displayEnergy());
		System.out.println("-------------------");
		
		
	}
}
