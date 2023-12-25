first = 0
second = 1
limit = int(input("Enter the limit: "))
print("The fibonacci series upto ",limit," terms are:")
print(first)
print(second)
for i in range(limit - 2):
    third = first + second
    first = second
    second = third
    print(third)