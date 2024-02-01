print("Enter 3 numbers: ")
a = int(input())
b = int(input())
c = int(input())
if a > b and a > c:
    print("Largest number is : ", a)
elif b > a and b > c:
    print("Largest number is : ", b)
else:
     print("Largest number is : ", c)