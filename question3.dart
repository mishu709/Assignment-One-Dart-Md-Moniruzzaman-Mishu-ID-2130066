// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
 * Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
 * Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
 * Insufficient funds for withdrawal of 1000.0 from account 67890
 */

// Create a BankAccount class with the following specifications:
class BankAccount {
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TODO: Implement the constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  // TODO: Implement the deposit method
  void deposit(double amount) {
    // TODO: Add the amount to balance
    balance += amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TODO: Implement the withdraw method
  void withdraw(double amount) {
    // TODO: Check for sufficient funds and subtract amount
    if (amount <= balance) {
      balance -= amount;
    }
    // TODO: Print error message if insufficient funds
    else {
      print(
          "Insufficient funds for withdrawal 0f $amount from account $accountNumber");
    }
    // Expected error format: "Insufficient funds for withdrawal of <amount> from account <accountNumber>"
  }

  //    - getBalance(): Return current balance
  // TODO: Implement the getBalance method
  double getBalance() {
    // TODO: Return the current balance
    return balance;
  }

  //    - displayAccountInfo(): Show account details
  // TODO: Implement the displayAccountInfo method
  void displayAccountInfo() {
    // TODO: Display account information
    print(
        "Account Number: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
    // Expected format: "Account: <number>, Holder: <name>, Type: <type>, Balance: <balance>"
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  // TODO: Create 3 bank accounts:
  // 1. Account: 12345, Holder: Alice, Type: Savings
  // 2. Account: 67890, Holder: Bob, Type: Checking
  // 3. Account: 11111, Holder: Charlie, Type: Savings
  BankAccount Account1 = BankAccount("12345", "Alice", "Saving");
  BankAccount Account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount Account3 = BankAccount("111111", "Charlie", "Saving");
  // TODO: Demonstrate depositing money:
  // Account 1: 1000.0, Account 2: 500.0, Account 3: 2000.0
  Account1.deposit(1000.0);
  Account2.deposit(500.0);
  Account3.deposit(2000.0);
  // TODO: Demonstrate withdrawing money:
  // Account 1: 200.0, Account 2: 100.0
  Account1.withdraw(200.0);
  Account2.withdraw(100.0);
  // TODO: Display account information for all accounts
  Account1.displayAccountInfo();
  Account2.displayAccountInfo();
  Account3.displayAccountInfo();
  // TODO: Demonstrate insufficient funds scenario:
  // Withdraw 1000.0 from Account 2
  Account2.withdraw(1000.0);
}
