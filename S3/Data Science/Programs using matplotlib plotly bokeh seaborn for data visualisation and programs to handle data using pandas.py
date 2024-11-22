import pandas as pd
import matplotlib.pyplot as plt
data=pd.read_csv('iris.csv')
print(data)

data=pd.read_csv('iris.csv')
plt.plot(data["sepal.length"],"r--")
plt.show

import pandas as pd
import matplotlib.pyplot as plt

data=pd.read_csv('iris.csv')
data.plot(kind='scatter',x='sepal.length',y='petal.length')
plt.grid()
plt.show()

import pandas as pd
import matplotlib.pyplot as plt

data=pd.read_csv('iris.csv')
plt.figure(figsize=(10,3))
x=data["sepal.length"]
plt.hist(x,bins=30,color='green')
plt.xlabel('Sepal length in cm')
plt.ylabel('count')
plt.show()

import pandas as pd
import matplotlib.pyplot as plt

data=pd.read_csv('iris.csv')
plt.figure(figsize=(10,3))
data.boxplot()
plt.title("Boxplot of Iris Dataset Features")
plt.ylabel("Measurement (cm)")
plt.xlabel("Features")
plt.show()
