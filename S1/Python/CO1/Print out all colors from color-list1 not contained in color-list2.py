col1 = ['red', 'blue', 'yellow']
col2 = ['green', 'blue']
print(col1)
print(col2)
for i in range(len(col1)):
    if col1[i] not in col2:
        print("The colour is:", col1[i])