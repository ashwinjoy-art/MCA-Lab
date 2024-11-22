import pandas as pd
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn import tree
import matplotlib.pyplot as plt

# Load the dataset
data = pd.read_csv('iris.csv')
print(data.head())
print()

# Prepare features and target
x = data.iloc[:, :4]
print(x.head())
print()

y = data.iloc[:, -1]
print(y.head())
print()

# Split the data into training and testing sets
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.20)

# Create and train the Decision Tree Classifier
classifier = DecisionTreeClassifier()
print(classifier)
classifier.fit(x_train, y_train)

# Make predictions
y_pred = classifier.predict(x_test)
print()

# Calculate accuracy
ac = accuracy_score(y_test, y_pred)
print(f"Accuracy: ",ac)

# Plot the decision tree
plt.figure(figsize=(12, 8))  # Set figure size for better visibility
tree.plot_tree(classifier)
plt.title("Decision Tree for Iris Dataset")
plt.show()  # Display the plot