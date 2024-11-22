import matplotlib.pyplot as plt
import numpy as np

# Load data from text file (example text file should have two columns)
x, y = np.loadtxt('axis_values.txt', delimiter=',', unpack=True)

# Plot data
plt.plot(x, y)

# Labels and title
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Line Plot from Text File')

plt.show()
