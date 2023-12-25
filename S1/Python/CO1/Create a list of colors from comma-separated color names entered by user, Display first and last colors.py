n = int(input("Enter the no of colours: "))
list = []
for i in range(n):
    a = input("Enter the colour: ")
    list.append(a)
print(list)
print("The first colour is:", list[0])
print("The last colour is:", list[-1])