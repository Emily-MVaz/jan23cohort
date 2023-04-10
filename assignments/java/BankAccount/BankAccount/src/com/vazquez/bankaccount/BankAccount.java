package com.vazquez.bankaccount;

public class BankAccount {

	// member variables
	private double checkingBalance;
	private double savingsBalance;
//	private long accountNumber;

	// static variables
	private static int accountsCreated;
	private static double totalMoneyStored;

	// constructor
	public BankAccount() {
		this.checkingBalance = 0.0;
		this.savingsBalance = 0.0;
//		this.accountNumber = BankAccount.generateAccountNumber();
		accountsCreated += 1;
	}

	// loaded constructor
	public BankAccount(double checkingBalance, double savingsBalance, long accountNumber) {
		this.checkingBalance = checkingBalance;
		this.savingsBalance = savingsBalance;
//		this.accountNumber = accountNumber;
		accountsCreated += 1;
	}

	// getters
	public double getCheckingBalance() {
		return checkingBalance;
	}

	public double getSavingsBalance() {
		return savingsBalance;
	}

	// method for deposits
	public void makeDeposit(String account, double amount) {
		if (account == "checking") {
			this.checkingBalance += amount;
			totalMoneyStored += amount;
			System.out.println("Succesfully deposited to checking account");
		} else if (account == "savings") {
			this.savingsBalance += amount;
			totalMoneyStored += amount;
			System.out.println("Succesfully deposited to savings account");
		} else {
			System.out.println("Please choose an account");
		}
	}

	// method for withdrawals
	public void makeWithdrawal(String account, double amount) {
		if (account == "checking") {
			if (this.checkingBalance >= amount) {
				this.checkingBalance -= amount;
				System.out.printf("Withdrawal from Checkings successful. Remaining Balance: $%s", this.checkingBalance);
				totalMoneyStored -= amount;
			} else {
				System.out.println("Insufficent Funds");
			}
		} else if (account == "savings") {
			if (this.savingsBalance >= amount) {
				this.savingsBalance -= amount;
				System.out.printf("Withdrawal from Savings successful. Remaining Balance: $%s", this.savingsBalance);;
				totalMoneyStored -= amount;
			} else {
				System.out.println("Please choose an account");
			}
		}
	}
	
	// display balance of both checking and savings
	public String displayBothBalances() {
		return String.format("Remaining balances\nCheckings: $%s\nSavings: $%s", this.checkingBalance, this.savingsBalance);
	}
	
	// display total balance of all accounts
	public static void allAccountsBalance() {
		System.out.println(totalMoneyStored);
	}
	
	// display number of accounts 
	public static void totalAccounts() {
		System.out.println(accountsCreated);
	}
	
//	// method for account number
//	private static long generateAccountNumber() {
//		long accountNumber = (long) Math.floor(Math.random() * 9_000_000_000L) + 1_000_000_000L;
//		return accountNumber;
//	}
}