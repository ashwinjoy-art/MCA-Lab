s = str(input("Enter line of text: "))
count = dict()
words = s.split()
for x in words:
    if x in count:
        count[x] += 1
    else:
        count[x] = 1
print(count)