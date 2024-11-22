import matplotlib.pyplot as plt

# Data for programming languages
languages = ['Java', 'Python', 'PHP', 'JavaScript', 'C#', 'C++']
popularity = [22.2, 17.6, 8.8, 8.0, 7.7, 6.7]

# (i) Bar chart
plt.bar(languages, popularity)
plt.xlabel('Languages')
plt.ylabel('Popularity')
plt.title('Popularity of Programming Languages')
plt.show()

# (ii) Horizontal bar chart with red bars
plt.barh(languages, popularity, color='red')
plt.xlabel('Popularity')
plt.title('Popularity of Programming Languages (Horizontal)')
plt.show()

# (iii) Bar chart with different colors for each bar
colors = ['blue', 'green', 'orange', 'purple', 'brown', 'pink']
plt.bar(languages, popularity, color=colors)
plt.xlabel('Languages')
plt.ylabel('Popularity')
plt.title('Popularity of Programming Languages (Colored Bars)')
plt.show()

# (iv) Pie chart
plt.pie(popularity, labels=languages, autopct='%1.1f%%', startangle=140)
plt.title('Popularity of Programming Languages (Pie Chart)')
plt.show()
