class Rectangle:
    def __init__(self, length, breadth):
        self.length = length
        self.breadth = breadth
    def area(self):
        return (self.length * self.breadth)
    def periemeter(self):
        return (2 * (self.length + self.breadth))
l1 = int(input("Enter length 1:"))
b1 = int(input("Enter breadth 1:"))
r1 = Rectangle(l1, b1)
print("Area of rectangle 1:", r1.area())
print("Periemeter of rectangle 1:", r1.periemeter())
l2 = int(input("Enter length 2:"))
b2 = int(input("Enter breadth 2:"))
r2 = Rectangle(l2, b2)
print("Area of rectangle 2:", r2.area())
print("Periemeter of rectangle 2:", r2.periemeter())
a1 = r1.area()
a2 = r2.area()
if a1 > a2:
    print("Area of rectangle 1 is high")
elif a1 == a2:
    print("Area are equal")
else:
    print("Area of rectangle 2 is high")