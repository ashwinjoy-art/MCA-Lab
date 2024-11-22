import numpy as np

vector = np.arange(0, 21)
vector[9:16] *= -1  # Change sign of elements from 9 to 15
print("Modified vector:", vector)
