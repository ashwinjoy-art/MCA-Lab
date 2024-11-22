import matplotlib.pyplot as plt

# Data
temperature = [12, 14, 16, 18, 20, 22, 24]
sales = [100, 200, 250, 400, 300, 450, 500]

# Plot
plt.plot(temperature, sales, marker='o', color='blue')
plt.xlabel('Temperature (°C)')
plt.ylabel('Sales')
plt.title('Temperature vs. Sales')
plt.show()
