import matplotlib.pyplot as plt

# Data for plotting
x = [1, 2, 3, 4]
y1 = [1, 4, 9, 16]
y2 = [1, 3, 5, 7]

# Create subplots
plt.subplot(2, 1, 1)
plt.plot(x, y1, color='green')
plt.title('Plot 1')

plt.subplot(2, 1, 2)
plt.plot(x, y2, color='orange')
plt.title('Plot 2')

plt.tight_layout()
plt.show()
