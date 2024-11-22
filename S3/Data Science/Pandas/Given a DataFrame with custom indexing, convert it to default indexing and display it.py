import pandas as pd

df = pd.DataFrame({'A': [10, 20, 30], 'B': [40, 50, 60]}, index=['x', 'y', 'z'])
df_reset = df.reset_index(drop=True)
print(df_reset)
