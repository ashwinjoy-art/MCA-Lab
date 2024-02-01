fact = 1
num = int(input("Enter the number: "))
for i in range(1, num + 1):
    fact = fact * i
print("Factorial of ", num," is: ", fact)