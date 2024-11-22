import matplotlib.pyplot as plt

# Data for two lines
x = [0, 2, 4, 6, 8, 10]
y1 = [0, 1, 4, 9, 16, 25]
y2 = [0, 3, 6, 9, 12, 15]

# Plot lines with legends
plt.plot(x, y1, label='Square', color='blue')
plt.plot(x, y2, label='Linear', color='red')

plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Two Line Plot with Legends')
plt.legend()

plt.show()
