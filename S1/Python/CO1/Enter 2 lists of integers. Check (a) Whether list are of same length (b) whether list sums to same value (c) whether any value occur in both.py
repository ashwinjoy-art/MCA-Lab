list1=[1, 2, 3, 4, 5]
list2=[2, 4, 6, 8]
print("Elements in list one is: ", list1)
print("Elements in list two is: ", list2)
s1 = 0
s2 = 0
if(len(list1) == len(list2)):
    print("List have same length")
else:
    print("List have different length")
for i in range(len(list1)):
    s1 = s1 + list1[i]
    print("The sum of first list is", s1)
for i in range(len(list2)):
    s2 = s2 + list2[i]
    print("The sum of list2 is", s2)
if(s1 == s2):
    print("Sum of lists is same")
else:
    print("The sum of lists is different")
    print("The common element in list is: ")
for i in list1:
    for j in list2:
        if i == j:
            print(i)
