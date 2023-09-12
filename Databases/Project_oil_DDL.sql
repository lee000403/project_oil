CREATE SCHEMA `db_oil` ;

CREATE TABLE COMUNITY
(
  write_number INT   NOT NULL AUTO_INCREMENT COMMENT '작성 번호',
  title        VARCHAR(500)  NOT NULL COMMENT '제목',
  body         VARCHAR(5000) NOT NULL COMMENT '내용',
  nickname     VARCHAR(50)   NOT NULL COMMENT '작성자',
  time         DATETIME      NOT NULL COMMENT '작성날짜',
  area_unique  VARCHAR(50)   NOT NULL COMMENT '지역 고유 번호',
  PRIMARY KEY (write_number)
) COMMENT '커뮤니티';

CREATE TABLE OIL
(
  oil_unique VARCHAR(50) NOT NULL COMMENT '기름 고유 번호',
  oil_type   VARCHAR(50) NOT NULL COMMENT '기름 종류',
  PRIMARY KEY (oil_unique)
) COMMENT '기름 종류';

CREATE TABLE OIL_PRICE
(
  area_unique VARCHAR(50) NOT NULL COMMENT '지역 고유 번호',
  oil_price   INTEGER     NOT NULL COMMENT '기름 가격',
  date_oil    DATETIME    NOT NULL COMMENT '해당 날짜',
  oil_unique  VARCHAR(50) NOT NULL COMMENT '기름 고유 번호'
) COMMENT '기름가격';

CREATE TABLE REGION
(
  area_unique VARCHAR(50) NOT NULL COMMENT '지역 고유 번호',
  area        VARCHAR(50) NOT NULL COMMENT '지역 이름',
  PRIMARY KEY (area_unique)
) COMMENT '지역';

CREATE TABLE REVIEW
(
  write_number INT  NOT NULL COMMENT '작성 번호',
  review_name  VARCHAR(50)  NOT NULL COMMENT '댓글 작성자',
  review_body  VARCHAR(500) NOT NULL COMMENT '댓글 내용',
  review_time  DATETIME     NOT NULL COMMENT '댓글 작성날짜'
) COMMENT '댓글';

ALTER TABLE REVIEW
  ADD CONSTRAINT FK_COMUNITY_TO_REVIEW
    FOREIGN KEY (write_number)
    REFERENCES COMUNITY (write_number);

ALTER TABLE OIL_PRICE
  ADD CONSTRAINT FK_REGION_TO_OIL_PRICE
    FOREIGN KEY (area_unique)
    REFERENCES REGION (area_unique);

ALTER TABLE COMUNITY
  ADD CONSTRAINT FK_REGION_TO_COMUNITY
    FOREIGN KEY (area_unique)
    REFERENCES REGION (area_unique);

ALTER TABLE OIL_PRICE
  ADD CONSTRAINT FK_OIL_TO_OIL_PRICE
    FOREIGN KEY (oil_unique)
    REFERENCES OIL (oil_unique);
