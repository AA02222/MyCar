-- 创建车辆数据库
-- 设置编码
SET NAMES UTF8;
DROP DATABASE IF EXISTS Car;
CREATE DATABASE Car  CHARSET=UTF8;
USE Car;

-- 创建品牌的数据表
-- 1 法拉利  2 兰博基尼  3 本田  4 大众  5 林肯 6 特斯拉  7 红旗  
CREATE TABLE Car_brand(
  bid INT PRIMARY KEY AUTO_INCREMENT,  
  bname VARCHAR(32)                    -- 品牌名称例如 宝马  本田 大众
);


INSERT INTO Car_brand VALUE
(NULL,"法拉利"),
(NULL,"兰博基尼"),
(NULL,"本田"),
(NULL,"大众"),
(NULL,"林肯"),
(NULL,"特斯拉"),
(NULL,"红旗");


-- 创建车辆数据表，管理员才能操作的数据表，后期添加上一定条件
CREATE TABLE car(
  cid INT PRIMARY KEY AUTO_INCREMENT,  -- 主键自增
  cname VARCHAR(32),                   -- 车辆名称
  price DECIMAL(10,2),                 -- 车辆的价格
  proise VARCHAR(64),                  -- 服务承诺，例如：保障、维修、
  engine VARCHAR(32),                  -- 发动机
  Car_type  VARCHAR(32),               -- 能源类型例如 汽油  纯电
  listed_time   BIGINT,                -- 上市时间
  gearbox VARCHAR(32),                 -- 变速箱
  power VARCHAR(16),                   -- 最大功率
  color VARCHAR(16),                   -- 车身颜色
  is_inventory  BOOLEAN,               -- 1 有货 0 暂时无货
  details VARCHAR(1024),               -- 车辆详情介绍
  brandid INT,                         -- 外建,用于判断属于哪个品牌的车辆
  FOREIGN KEY(brandid)  REFERENCES Car_brand(bid)
);

-- 创建车辆图片
CREATE TABLE Car_brand_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  brandpic INT,                         -- 外建，用于搜索对应车辆的名称
  sm VARCHAR(128),                      -- 车辆小图
  md VARCHAR(128),                      -- 车辆中图
  lg VARCHAR(128),                      -- 车辆大图
  FOREIGN KEY(brandpic)  REFERENCES car(cid)
);





-- 车辆数据
INSERT INTO car VALUE
(NUll,"法拉利F8",3057000,"赠送半年免费洗车","3.9L 720马力 双涡轮增压","汽油",1656744339598,"7档 湿式双离合(DCT)","500KW","红色",1,"无",1),
(NUll,"Huracan",2540000,"赠送半年免费洗车","5.2L 611马力 自然吸气","汽油",1656744699869,"7档 湿式双离合(DCT)","449KW","绿色",1,"无",2);


