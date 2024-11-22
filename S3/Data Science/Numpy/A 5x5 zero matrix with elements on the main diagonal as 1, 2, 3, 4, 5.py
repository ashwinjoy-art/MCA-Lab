import numpy as np

zero_matrix = np.zeros((5, 5))
np.fill_diagonal(zero_matrix, [1, 2, 3, 4, 5])
print("5x5 Zero Matrix with diagonal elements:\n", zero_matrix)
