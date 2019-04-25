prompt PL/SQL Developer import file
prompt Created on 2016Äê12ÔÂ2ÈÕ by mrLiu
set feedback off
set define off
prompt Creating AWARDEE...
create table AWARDEE
(
  username  VARCHAR2(12) not null,
  prizename VARCHAR2(30) not null,
  gettime   DATE not null
)
;
alter table AWARDEE
  add constraint USERNAME primary key (USERNAME);

prompt Loading AWARDEE...
prompt Table is empty
set feedback on
set define on
prompt Done.
