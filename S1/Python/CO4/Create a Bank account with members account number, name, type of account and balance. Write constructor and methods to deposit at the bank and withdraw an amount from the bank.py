class Bank:
    def __init__(self, accno, name, type, bal):
        self.accno = accno
        self.name = name
        self.type = type
        self.bal = bal
    def deposit(self, amount):
        self.bal = self.bal + amount
        print("Amount deposited successfully")
        return self.bal
    def withdraw(self, amount):
        if amount > self.bal:
            print("Insufficient balance")
            return self.bal
        else:
            self.bal = self.bal - amount
            print("Amount withdrawed successfully")
            return self.bal
b = Bank(1001,"abhi","savings",3000)
damount = float(input("Enter the amount to be deposited: "))
print("Account balance:", b.deposit(damount))
wamount = float(input("Enter the amount to be withdrwn: "))
print("Account balance:", b.withdraw(wamount))