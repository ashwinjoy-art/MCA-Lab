mylist = [12, 13, 20, 45, 43, 23, 36]
for i in mylist:
    if(i % 2 == 0):
        mylist.remove(i)
print(mylist)