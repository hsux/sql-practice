-- 如果test数据库不存在，就创建test数据库：
CREATE DATABASE IF NOT EXISTS test;

-- 切换到test数据库
USE test;

-- 删除classes表和students表（如果存在）：
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS students;

-- 创建classes表：
CREATE TABLE classes (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 创建students表：
CREATE TABLE students (
    id BIGINT NOT NULL AUTO_INCREMENT,
    class_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 插入classes记录：
INSERT INTO classes(id, name) VALUES (1, 'yiban');
INSERT INTO classes(id, name) VALUES (2, 'erban');
INSERT INTO classes(id, name) VALUES (3, 'sanban');
INSERT INTO classes(id, name) VALUES (4, 'siban');

-- 插入students记录：
INSERT INTO students (id, class_id, name, gender, score) VALUES (1, 1, 'xiaoming', 'M', 90);
INSERT INTO students (id, class_id, name, gender, score) VALUES (2, 1, 'xiaohong', 'F', 95);
INSERT INTO students (id, class_id, name, gender, score) VALUES (3, 1, 'xiaojun', 'M', 88);
INSERT INTO students (id, class_id, name, gender, score) VALUES (4, 1, 'xiaomi', 'F', 73);
INSERT INTO students (id, class_id, name, gender, score) VALUES (5, 2, 'xiaobai', 'F', 81);
INSERT INTO students (id, class_id, name, gender, score) VALUES (6, 2, 'xiaobing', 'M', 55);
INSERT INTO students (id, class_id, name, gender, score) VALUES (7, 2, 'xiaolin', 'M', 85);
INSERT INTO students (id, class_id, name, gender, score) VALUES (8, 3, 'xiaoxin', 'F', 91);
INSERT INTO students (id, class_id, name, gender, score) VALUES (9, 3, 'xiaowang', 'M', 89);
INSERT INTO students (id, class_id, name, gender, score) VALUES (10, 3, 'xiaoli', 'F', 85);

-- OK:
SELECT 'ok' as 'result:';