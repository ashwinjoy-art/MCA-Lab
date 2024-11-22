import pandas as pd

data = {'Name': ['Alice', 'Bob', 'Charlie', 'David'],
        'Occupation': ['Engineer', 'Doctor', 'Engineer', 'Doctor'],
        'Salary': [50000, 60000, 55000, 65000]}
df = pd.DataFrame(data)
avg_salary = df.groupby('Occupation')['Salary'].mean()
print(avg_salary)
