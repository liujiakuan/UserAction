prompt PL/SQL Developer import file
prompt Created on 2016Äê12ÔÂ2ÈÕ by mrLiu
set feedback off
set define off
prompt Creating PRIZELIST...
create table PRIZELIST
(
  prizename  VARCHAR2(20) not null,
  prizecount NUMBER not null
)
;
alter table PRIZELIST
  add constraint PRIZENAME primary key (PRIZENAME);

prompt Loading PRIZELIST...
insert into PRIZELIST (prizename, prizecount)
values ('yellowBean', 30);
commit;
prompt 1 records loaded
set feedback on
set define on
prompt Done.
