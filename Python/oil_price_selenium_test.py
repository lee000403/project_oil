from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import chromedriver_autoinstaller
import pandas as pd
import pymysql
from sqlalchemy import create_engine
import datetime

import time 

conn = pymysql.connect(
user='root', 
password='!yojulab*', 
db='db_oil', 
host='localhost',
port=3306
)


engine = create_engine("mysql://{user}:{pw}@localhost/{db}".format(user='root', pw='!yojulab*', db='db_oil'))

conn = engine.connect()


chromedriver_autoinstaller.install()
driver = webdriver.Chrome()
# 오늘 날짜 기름값 페이지
driver.get("https://www.opinet.co.kr/user/dopospdrg/dopOsPdrgAreaView.do")

# 보통휘발유

oil_price = [["area_unique","oil_unique", "oil_price", "date_oil"]]
area_oil = driver.find_elements(By.XPATH, "//*[@id='numbox']/tr")
print(len(area_oil))
for j in range(1,4):
    # 보통 휘발유
    if j == 1:
        for i in range(1, len(area_oil)+1):
            oil_price_list = []
            area_oil_re = driver.find_element(By.XPATH, "//*[@id='numbox']/tr[{}]/td[3]".format(i))
            oil_price_value = area_oil_re.get_attribute("innerText")
            oil_price_list.append("a-{}".format(i))
            oil_price_list.append(oil_price_value)
            oil_price_list.append("o-0{}".format(j))
            oil_price_list.append(datetime.date.today())
            oil_price.append(oil_price_list)
    # 고급 휘발유
    elif j == 2:
        for i in range(1, len(area_oil)+1):
            oil_price_list = []
            area_oil_re = driver.find_element(By.XPATH, "//*[@id='numbox']/tr[{}]/td[2]".format(i))
            oil_price_value = area_oil_re.get_attribute("innerText")
            oil_price_list.append("a-{}".format(i))
            oil_price_list.append(oil_price_value)
            oil_price_list.append("o-0{}".format(j))
            oil_price_list.append(datetime.date.today())
            oil_price.append(oil_price_list)
    # 경유
    else:
        for i in range(1, len(area_oil)+1):
            oil_price_list = []
            area_oil_re = driver.find_element(By.XPATH, "//*[@id='numbox']/tr[{}]/td[4]".format(i))
            oil_price_value = area_oil_re.get_attribute("innerText")
            oil_price_list.append("a-{}".format(i))
            oil_price_list.append(oil_price_value)
            oil_price_list.append("o-0{}".format(j))
            oil_price_list.append(datetime.date.today())
            oil_price.append(oil_price_list)
driver.close()
df = pd.DataFrame(oil_price, columns=["area_unique","oil_price", "oil_unique", "date_oil"])
df.drop(df.index[0], inplace=True)
print(df)
df.to_sql(name="oil_price", con=engine, if_exists='append', index=False)


