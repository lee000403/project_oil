import pandas as pd
import numpy as np
import csv

# data_web = pd.read_csv("주유소_지역별_평균판매가격.csv", encoding="UTF-8-sig")
# df = pd.DataFrame(data_web)
# df = pd.melt(df,id_vars='구분', value_vars=["a-1", "a-2", "a-3", "a-4", "a-5", "a-6", "a-7", "a-8", "a-9", "a-10", "a-11", "a-12", "a-13", "a-14", "a-15", "a-16", "a-17"])
# df['oil_unique'] = 'o-01'
# df.columns = ['date_oil', 'area_unique', 'oil_price', 'oil_unique']
# df['date_oil'] = pd.to_datetime(df['date_oil'])
# df.to_csv("주유 가격(보통휘발유).csv", header="False")
# print(df)

data_web = pd.read_csv("고급휘발유 가격(바꾸기전).csv", encoding="cp949")
df = pd.DataFrame(data_web)
df['구분'] = df['구분'].str.replace('년', '-')
df['구분'] = df['구분'].str.replace('월', '-')
df['구분'] = df['구분'].str.replace('일', '')
print(df['구분'])
df.columns=["구분", "a-1", "a-2", "a-3", "a-4", "a-5", "a-6", "a-7", "a-8", "a-9", "a-10", "a-11", "a-12", "a-13", "a-14", "a-15", "a-16", "a-17"]
df = pd.melt(df,id_vars='구분', value_vars=["a-1", "a-2", "a-3", "a-4", "a-5", "a-6", "a-7", "a-8", "a-9", "a-10", "a-11", "a-12", "a-13", "a-14", "a-15", "a-16", "a-17"])
df['oil_unique'] = 'o-02'
df.columns = ['date_oil', 'area_unique', 'oil_price', 'oil_unique']
df['date_oil'] = pd.to_datetime(df['date_oil'])
df.to_csv("주유 가격(고급휘발유).csv", encoding="UTF-8")
