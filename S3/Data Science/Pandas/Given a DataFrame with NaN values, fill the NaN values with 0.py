import pandas as pd

data = {'A': [1, 2, None], 'B': [4, None, 6], 'C': [7, 8, 9]}
df = pd.DataFrame(data)
df_filled = df.fillna(0)
print(df_filled)
