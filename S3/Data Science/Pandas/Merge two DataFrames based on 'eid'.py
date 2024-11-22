import pandas as pd

df1 = pd.DataFrame({'eid': [1, 2, 3], 'ename': ['Alice', 'Bob', 'Charlie'], 'stipend': [1000, 1200, 1100]})
df2 = pd.DataFrame({'eid': [1, 2, 3], 'designation': ['Manager', 'Developer', 'Analyst']})

merged_df = pd.merge(df1, df2, on='eid')
print(merged_df)
