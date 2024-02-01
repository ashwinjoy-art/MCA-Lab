class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age


name1 = input("Enter name for Person 1: ")
age1 = int(input("Enter age for Person 1: "))
person1 = Person(name1, age1)
name2 = input("Enter name for Person 2: ")
age2 = int(input("Enter age for Person 2: "))
person2 = Person(name2, age2)
if person1.age > person2.age:
    print(f"{person1.name} is elder.")
elif person1.age < person2.age:
    print(f"{person2.name} is elder.")
else:
    print("Both persons are of the same age.")