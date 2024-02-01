class Time:
    def __init__(self, hour, minute, second):
        self.__hour = hour
        self.__minute = minute
        self.__second = second
    def __add__(self, other):
        second = self.__second + other.__second
        minute = self.__minute + other.__minute
        hour = self.__hour + other.__hour
        if second > 60:
            minute += int(minute/60)
            second = second % 60
        if minute > 60:
            hour += int(minute / 60)
            minute = (minute / 60)
            time = "{0} hours:{1} minutes:{2} seconds".format(hour, minute, second)
            return time
h1 = int(input("Enter the hour of first time: "))
m1 = int(input("Enter the minute of first time: "))
s1 = int(input("Enter the second of first time: "))
h2 = int(input("Enter the hour of second time: "))
m2 = int(input("Enter the minute of second time: "))
s2 = int(input("Enter the second of second time: "))
time1 = Time(h1, m1, s1)
time2 = Time(h2, m2, s2)
print("Sum of time:",time1 + time2)