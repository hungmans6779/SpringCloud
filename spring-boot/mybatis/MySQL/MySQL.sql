
-- 建立資料庫
CREATE DATABASE springboot;


use springboot;
CREATE TABLE products (  # 新增產品資料表
  id INT NOT NULL AUTO_INCREMENT, # 產品 ID
  name varchar(50) NOT NULL,  # 名稱
  descr varchar(200),  # 說明
  price INT NOT NULL,  # 價格
  PRIMARY KEY(id)      # 主要索引
);

use springboot;
INSERT INTO products (name, descr, price)
  VALUES ("葵花寶典", "蓋世武功密集", 990);
INSERT INTO products (name, descr, price)
  VALUES ("獨孤九劍", "劍魔獨孤求敗所創劍法", 890);
  

use springboot;  
SELECT * FROM products;


;