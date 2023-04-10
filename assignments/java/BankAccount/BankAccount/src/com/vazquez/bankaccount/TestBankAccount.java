package com.vazquez.bankaccount;

public class TestBankAccount {

	public static void main(String[] args) {
		BankAccount account1 = new BankAccount();
		BankAccount account2 = new BankAccount();

		// test deposit method
		System.out.println("Account 1 ---------------");
		account1.makeDeposit("checking", 250);
		account1.makeDeposit("savings", 50);
		account1.makeDeposit("checking", 500);
		account1.makeDeposit("savings", 250);

		System.out.println("\nAccount 2 ---------------");
		account2.makeDeposit("checking", 100);
		account2.makeDeposit("savings", 25);
		account2.makeDeposit("checking", 900);
		account2.makeDeposit("savings", 375);

		System.out.println("---------------");

		// test get checking and savings
		System.out.println(account1.getCheckingBalance());
		System.out.println(account2.getCheckingBalance());
		System.out.println("---------------");
		System.out.println(account1.getSavingsBalance());
		System.out.println(account2.getSavingsBalance());

		System.out.println("---------------");

		// test withdrawal
		account1.makeWithdrawal("checking", 50);
		account1.makeWithdrawal("savings", 100);
		System.out.println("\n---------------");
		account2.makeWithdrawal("checking", 200);
		account2.makeWithdrawal("savings", 100);

		System.out.println("\n---------------");

		// test display balance
		System.out.println(account1.displayBothBalances());
		System.out.println(account2.displayBothBalances());

		System.out.println("---------------");

		// test display all total balance
		BankAccount.allAccountsBalance();

		System.out.println("---------------");

		// test number of accounts
		BankAccount.totalAccounts();
		
//		//test account number
//		System.out.println("This is your account number: " + );
	}
}
