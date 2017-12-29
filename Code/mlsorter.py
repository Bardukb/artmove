

import pandas as pd
df = pd.read_csv('/Users/duygudurmus/Desktop/mlproject/train_info.csv')
df.sort_values(by=['filename'], inplace=True)
df.to_csv('/Users/duygudurmus/Desktop/mlproject/train_info_sorted.csv', index=False)
print(df)

