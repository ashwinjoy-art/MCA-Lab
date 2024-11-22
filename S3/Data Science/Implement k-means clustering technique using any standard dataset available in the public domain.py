import pandas as pd
from sklearn.cluster import KMeans

data=pd.read_csv('iris.csv')
print(data.head())
print()

x=data.iloc[:,:4]
print(x.head())
print()

km=KMeans(n_clusters=3)
print(km.fit(x))
print()

y=km.predict(x)
print(y)
print()

centroid=km.cluster_centers_
print(centroid)
