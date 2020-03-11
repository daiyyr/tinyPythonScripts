
drop TEMPORARY TABLE IF EXISTS duplicate_cinvoice_temp;
CREATE TEMPORARY TABLE IF NOT EXISTS duplicate_cinvoice_temp AS 
(SELECT ''as group_id, '' as cinvoice_id, cinvoice_num, '' as creditor_master_name, '' as bodycorp_code FROM cinvoices WHERE 1=2);
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25473' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25474'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 1 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23902' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22815'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 2 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23809' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22814'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 3 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25272'  or creditor_master_id = '26024' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4267'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 4 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4225' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5075'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 5 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25770' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25802'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 6 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22621'  or creditor_master_id = '22948' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23022'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 7 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24179' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'423'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 8 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22778' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22720'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 9 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25961' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25088'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 11 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25204' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25690'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 12 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '507' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22436'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 13 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25799' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25800'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 14 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23314' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23256'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 15 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22678' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25165'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 16 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22900' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24012'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 17 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25032' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24961'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 18 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23102' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22917'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 19 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '276' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22438'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 20 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23218' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23103'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 21 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23207' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22903'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 22 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23982' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'493'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 23 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '395' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4848'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 24 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5070' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'277'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 25 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '197'  or creditor_master_id = '23980'  or creditor_master_id = '24184' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24249'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 27 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22597' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'196'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 28 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22958' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24129'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 29 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24177' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'358'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 30 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26019' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'460'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 31 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22725' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23895'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 32 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25771' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24726'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 33 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24448' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23801'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 34 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23186' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24340'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 35 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23073' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23072'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 36 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22771' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24267'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 37 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24146' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22832'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 38 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24859' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24225'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 39 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11747' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25545'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 40 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23780' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22870'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 41 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23217' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22634'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 42 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22382' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24401'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 43 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22770' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24872'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 44 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24624' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'602'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 45 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25796' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25824'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 46 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24396' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25401'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 47 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22490' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23308'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 48 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24748' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24133'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 49 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25963' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24009'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 50 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22682'  or creditor_master_id = '25325' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25627'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 51 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23556' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25490'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 52 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9344' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'77'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 53 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23162' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24439'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 54 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22804' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24644'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 55 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24265' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23984'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 56 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23417'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 57 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22589' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22914'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 58 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '140' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6309'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 59 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24832' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23815'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 60 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25085' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22848'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 61 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4238'  or creditor_master_id = '22862' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24080'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 62 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20479' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26079'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 63 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22713' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22820'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 64 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25875' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25876'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 65 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24282' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22665'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 66 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25432' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25434'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 67 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23767' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23293'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 68 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22998' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23251'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 69 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16887'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 70 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20431' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24554'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 73 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7388' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4258'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 74 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'82'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 75 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23183'  or creditor_master_id = '26050' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23665'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 76 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22435'  or creditor_master_id = '22443' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24260'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 77 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26048' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'544'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 78 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25192' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4643'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 79 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9429' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23087'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 80 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22798' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23655'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 81 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4230' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25169'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 82 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22901' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23263'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 83 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '158' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26015'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 84 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22396'  or creditor_master_id = '23592' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25475'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 87 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4321' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23071'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 88 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22426'  or creditor_master_id = '23555' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22855'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 89 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24048' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23695'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 90 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23181' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25574'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 91 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23101' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'37'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 92 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23516'  or creditor_master_id = '25224'  or creditor_master_id = '25663' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24088'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 93 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24221' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23249'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 96 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24057' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24040'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 97 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '341' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'342'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 98 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22808' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23497'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 99 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23246' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22887'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 100 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24842' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24062'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 101 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '53' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'109'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 102 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22601' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24342'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 103 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22964' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22965'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 104 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23184' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22782'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 105 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25752' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22355'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 106 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '520' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24904'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 107 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25447' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25167'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 108 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23129' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22951'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 109 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24003'  or creditor_master_id = '25347' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22947'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 110 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '562'  or creditor_master_id = '22563' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5434'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 112 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24031' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22930'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 113 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22550' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24793'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 114 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22953' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7682'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 115 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24921' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25200'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 116 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23328' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24767'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 117 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22780' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24975'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 118 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20432' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23990'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 119 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22494' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24242'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 120 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24407' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22877'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 121 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22764' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23863'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 122 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20477'  or creditor_master_id = '23318' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25214'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 123 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24331'  or creditor_master_id = '25764' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25237'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 125 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25261' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25368'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 126 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25923' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26043'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 127 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25166' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25377'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 128 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23928' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24918'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 129 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23272' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26003'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 130 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25934' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25935'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 131 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25060' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22991'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 132 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24410' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24519'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 135 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22822' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25322'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 136 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22758' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26071'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 139 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23532' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22889'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 140 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23608' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4276'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 141 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25577' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25576'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 142 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '539' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23128'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 143 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '1874' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26036'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 144 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22881' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24640'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 145 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23534'  or creditor_master_id = '25268' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25941'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 146 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24182' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'323'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 149 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22577' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23456'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 150 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22666' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22956'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 151 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24765' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22610'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 152 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22963' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24806'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 153 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24456' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23833'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 154 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '263'  or creditor_master_id = '22800' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22733'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 155 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25067' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25904'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 156 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24739' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25595'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 157 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23254' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23206'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 158 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8802' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22368'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 159 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23361' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9887'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 160 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25534' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25535'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 161 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23577'  or creditor_master_id = '23862' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25467'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 162 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23188' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25652'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 163 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24528' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'563'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 164 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4297' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23952'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 165 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26031' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26020'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 166 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4751' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20711'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 167 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25154' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23174'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 168 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24366' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23966'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 169 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23999'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 170 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25005' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23680'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 171 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22442' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23283'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 172 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22365' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25209'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 173 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23406' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26002'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 174 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23362' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25274'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 175 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25515' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26082'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 176 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25267' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4327'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 177 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '202' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25694'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 178 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24993' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24932'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 181 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23707' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24847'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 182 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25747' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25973'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 183 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23402' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25280'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 184 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23040' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23848'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 185 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23003' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24412'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 186 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25843' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25712'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 187 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23247' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23814'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 188 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22643' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'534'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 189 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24913' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'410'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 190 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25195' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'542'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 191 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25896' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25890'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 192 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24014' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24121'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 193 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24849' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22813'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 194 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24399' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25460'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 195 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22662' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24371'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 196 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22858' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23122'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 197 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25588' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25922'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 198 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25926' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'494'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 199 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24217' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22629'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 202 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25571' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25669'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 203 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24092' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25399'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 204 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23231' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22868'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 205 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22772' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24494'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 206 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25146' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22879'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 207 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23606' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25504'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 208 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8987' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22515'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 209 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24136'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 210 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23057' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22357'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 211 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23528' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22940'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 214 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25913' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25911'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 215 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22659' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22834'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 216 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24374' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24617'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 217 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22615'  or creditor_master_id = '207'  or creditor_master_id = '25722' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23899'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 218 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22897' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23500'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 219 as group_id, 
        group_concat(cinvoice_id SEPARATOR ',') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ',') as creditor_master_name,
        group_concat(bodycorp_code separator ',') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num) zzz 
    where cc > 1
);

select * from duplicate_cinvoice_temp;
