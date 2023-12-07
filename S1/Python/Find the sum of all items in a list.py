list = []
sum = 0
limit = int(input("Enter the limit: "))
print("Enter", limit, "numbers: ")
for i in range(limit):
    list2 = int(input())
    list.append(list2)
print(list)
for i in list:
    sum = sum + i
print("Sum of list: ", sum)