-- 创建车辆数据库
-- 设置编码
SET NAMES UTF8;
DROP DATABASE IF EXISTS Car;
CREATE DATABASE Car  CHARSET=UTF8;
USE Car;

-- 创建车辆图片
-- CREATE TABLE Car_brand_pic(
--   pid INT PRIMARY KEY AUTO_INCREMENT,
--   brandpic INT,                         -- 外建，用于搜索对应车辆的名称
--   sm VARCHAR(128),                      -- 车辆小图
--   md VARCHAR(128),                      -- 车辆中图
--   lg VARCHAR(128),                      -- 车辆大图
--   FOREIGN KEY(brandpic)  REFERENCES car(cid)
-- );

-- 创建车辆数据表，管理员才能操作的数据表，后期添加上一定条件
-- 创建宝马数据表
CREATE TABLE Car_BMW(
  cid INT PRIMARY KEY AUTO_INCREMENT,  -- 主键自增
  cname VARCHAR(32),                   -- 车辆名称
  price DECIMAL(10,2),                 -- 车辆的价格
  engine VARCHAR(32),                  -- 发动机
  Car_type  VARCHAR(32),               -- 车辆类型 例如
  listed_time   BIGINT,                -- 上市时间
  gearbox VARCHAR(32),                 -- 变速箱
  power VARCHAR(16),                   -- 最大功率
  color VARCHAR(16),                   -- 车身颜色
  security VARCHAR(32),                -- 质保
  details VARCHAR(1024)                -- 车辆详情介绍
);

-- 创建法拉利数据表

-- 车辆数据
INSERT INTO Car_BMW VALUE
(NUll,"宝马1系 2022款 120i M运动款",154300,"1.5T 140马力 L3","汽油",1656752135505,"7档 湿式双离合(DCT)","103KW/220n・m","宝石青","3年或10万公里","");
(NUll,"宝马1系 2022款 120i M运动曜夜版",170100,"1.5T 140马力 L3","汽油",1656744699869,"7档 湿式双离合(DCT)","103KW/220n・m","雪山白","3年或10万公里",""),
(NUll,"宝马2系 2021款 225i M运动套装",269800,"2.0T 192马力 L4","汽油",1656755225960,"7档 湿式双离合(DCT)","141KW/28n・m","海岸蓝","3年或10万公里",""),
(NUll,"宝马2系 2022款 225i M运动曜夜",298800,"2.0T 184马力 L4","汽油",1656754951180,"8档 手自一体(AT)","135KW/300n・m","波尔蒂芒蓝","3年或10万公里",""),




