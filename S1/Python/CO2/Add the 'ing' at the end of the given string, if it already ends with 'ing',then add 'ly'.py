str = input("Enter a string: ")
if str.endswith("ing"):
    str = str + "ly"
else:
    str = str + "ing"
print("Modified string is:", str)