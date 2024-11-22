import pandas as pd
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn.preprocessing import StandardScaler

data = pd.read_csv('iris.csv')
print(data.head())
print()

X = data.iloc[:, :4]
print(X.head())
print()

y = data.iloc[:, -1]
print(y.head())
print()

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20)
print(X_train.head())
print()
print(X_test.head())
print()

sc = StandardScaler()
sc.fit(X_train)
X_train = sc.transform(X_train)
X_test = sc.transform(X_test)

classifier = GaussianNB()
classifier.fit(X_train, y_train)

y_pred = classifier.predict(X_test)
print("array",y_pred)
print()
print(y_test)

cm = confusion_matrix(y_test, y_pred)
ac = accuracy_score(y_test, y_pred)

print("\nConfusion Matrix:\n", cm)
print("\nAccuracy Score:", ac)
