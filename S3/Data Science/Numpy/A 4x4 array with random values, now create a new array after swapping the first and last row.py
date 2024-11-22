import numpy as np

array = np.random.rand(4, 4)
print("Original array:\n", array)

# Swap the first and last row
array[[0, -1]] = array[[-1, 0]]
print("Array after swapping first and last rows:\n", array)
