import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

total_sum = np.sum(array)
sum_rows = np.sum(array, axis=1)
sum_columns = np.sum(array, axis=0)

print("Sum of all elements:", total_sum)
print("Sum of each row:", sum_rows)
print("Sum of each column:", sum_columns)
