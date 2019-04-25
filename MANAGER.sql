prompt PL/SQL Developer import file
prompt Created on 2016Äê12ÔÂ2ÈÕ by mrLiu
set feedback off
set define off
prompt Creating MANAGER...
create table MANAGER
(
  managername     VARCHAR2(20) not null,
  managerpassword VARCHAR2(20) not null,
  manageronline   NUMBER default 0 not null
)
;
alter table MANAGER
  add constraint MANAGERNAME primary key (MANAGERNAME);

prompt Loading MANAGER...
prompt Table is empty
set feedback on
set define on
prompt Done.
