import pandas as pd
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.svm import SVC
from sklearn.model_selection import train_test_split

data=pd.read_csv('iris.csv')
print(data.head())
print()

x=data.iloc[:,:-4]
y=data.iloc[:,-1]

x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=.20)
classifier=SVC(kernel='linear')

classifier.fit(x_train,y_train)
print(classifier)
print()

y_pred=classifier.predict(x_test)
print("array",y_pred)
print()

cm=confusion_matrix(y_test,y_pred)
print("Confusion Matrix:\n", cm)
print()
ac=accuracy_score(y_test,y_pred)
print("Accuracy Score:", ac)