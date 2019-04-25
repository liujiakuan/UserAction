prompt PL/SQL Developer import file
prompt Created on 2016Äê12ÔÂ2ÈÕ by mrLiu
set feedback off
set define off
prompt Creating USERS...
create table USERS
(
  studentidk    CHAR(10) not null,
  namek         VARCHAR2(12) not null,
  sexk          VARCHAR2(2) not null,
  collegek      VARCHAR2(30) not null,
  gradek        VARCHAR2(20) not null,
  lovek         VARCHAR2(2) not null,
  risek         VARCHAR2(30) not null,
  afternoonnapk VARCHAR2(30) not null,
  sleepk        VARCHAR2(30) not null,
  playphonek    VARCHAR2(30) not null,
  playtruantk   VARCHAR2(30) not null,
  libraryk      VARCHAR2(30) not null,
  majortastek   VARCHAR2(30) not null,
  elsestudyk    VARCHAR2(30) not null,
  exercisek     VARCHAR2(30) not null,
  playgamek     VARCHAR2(30) not null,
  scorek        NUMBER not null
)
;
alter table USERS
  add constraint STUDENTIDK primary key (STUDENTIDK)
  disable;

prompt Loading USERS...
prompt Table is empty
set feedback on
set define on
prompt Done.
