import matplotlib.pyplot as plt
import numpy as np

# Data for men and women
groups = ['G1', 'G2', 'G3', 'G4', 'G5']
men_means = [22, 30, 35, 35, 26]
women_means = [25, 32, 30, 35, 29]

# X values
x = np.arange(len(groups))
width = 0.35  # width of bars

# Plot bars for men and women
fig, ax = plt.subplots()
ax.bar(x - width/2, men_means, width, label='Men')
ax.bar(x + width/2, women_means, width, label='Women')

# Add labels and title
ax.set_xlabel('Groups')
ax.set_ylabel('Scores')
ax.set_title('Scores by group and gender')
ax.set_xticks(x)
ax.set_xticklabels(groups)
ax.legend()

plt.show()
