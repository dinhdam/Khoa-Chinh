CREATE DATABASE fisrtdata;
use fisrtdata;
CREATE TABLE  user(
  user_id INT AUTO_INCREMENT PRIMARY KEY ,
  username varchar(56),
  password varchar(225),
  email varchar(225)

);
CREATE TABLE roles(
  role_id int auto_increment,
  role_name varchar(60),
 PRIMARY KEY (role_id)
);
  CREATE  TABLE userroles(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY(user_id,role_id),
    FOREIGN KEY(user_id) REFERENCES user(user_id),
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
  );
