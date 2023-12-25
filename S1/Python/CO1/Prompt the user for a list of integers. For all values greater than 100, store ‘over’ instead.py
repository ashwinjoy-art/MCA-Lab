n = int(input("Enter the number of numbers: "))
list = []
for x in range(n):
    x = int(input("Enter the number: "))
    if x < 100:
        list.append(x)
    else:
        list.append('over')
print(list)