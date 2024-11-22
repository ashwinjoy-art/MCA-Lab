import pandas as pd

data = {'Name': ['Alice', 'Bob', 'Charlie'], 'Age': [25, 30, 35], 'Salary': [50000, 60000, 55000]}
df = pd.DataFrame(data)
sorted_df = df.sort_values(by=['Age', 'Salary'], ascending=[True, False])
print(sorted_df)
