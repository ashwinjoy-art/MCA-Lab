import numpy as np

array = np.array([1, 2, 3, 4, 5])

# Save the array to a text file
np.savetxt('array.txt', array)

# Load the array from the text file
loaded_array = np.loadtxt('array.txt')
print("Loaded array from file:", loaded_array)
