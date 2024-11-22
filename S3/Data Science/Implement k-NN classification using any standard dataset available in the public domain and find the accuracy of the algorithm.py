import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import confusion_matrix, accuracy_score


data = pd.read_csv('iris.csv')
print(data.head())
print()

x = data.iloc[:, :4]
print(x.head())
print()

y = data.iloc[:, -1]
print(y.head())
print()

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.20)
print(x_train.head())
print()
print(x_test.head())
print()

sc = StandardScaler()
x_train = sc.fit_transform(x_train)
x_test = sc.transform(x_test)

classifier = KNeighborsClassifier(n_neighbors=5)
print(classifier.fit(x_train, y_train))
print()

y_pred = classifier.predict(x_test)
print("array",y_pred)
print()
print(y_test)

cm = confusion_matrix(y_test, y_pred)
ac = accuracy_score(y_test, y_pred)

print("\nConfusion Matrix:\n",cm)
print("\nAccuracy: ",ac)

