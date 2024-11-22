import numpy as np

arr1 = np.array([1, 2, 3])
arr2 = np.array([1, 2, 3])

equal = np.array_equal(arr1, arr2)
print("Are arrays equal (element-wise)?", equal)
