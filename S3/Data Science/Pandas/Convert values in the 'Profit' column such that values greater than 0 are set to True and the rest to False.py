import pandas as pd

data = {'cname': ['Company1', 'Company2', 'Company3'], 'profit': [200, -100, 300]}
df = pd.DataFrame(data)
df['profit'] = df['profit'] > 0
print(df)
