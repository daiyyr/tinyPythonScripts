
drop TEMPORARY TABLE IF EXISTS duplicate_cinvoice_temp;
CREATE TEMPORARY TABLE IF NOT EXISTS duplicate_cinvoice_temp AS 
(SELECT ''as group_id, '' as cinvoice_id, cinvoice_num, '' as creditor_master_name, '' as bodycorp_code FROM cinvoices WHERE 1=2);
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15806' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15797'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 1 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13556' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13606'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 2 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14746' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6283'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 3 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6405'  or creditor_master_id = '17026' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'349'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 4 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23741' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11034'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 5 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22975' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21021'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 6 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5215' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5219'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 7 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11672' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11668'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 8 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15667' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15687'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 9 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13094' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13102'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 10 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12285'  or creditor_master_id = '23296' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4284'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 11 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6788' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6786'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 12 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12366' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21425'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 13 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24606' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12251'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 14 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5399'  or creditor_master_id = '5400' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23979'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 15 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21485' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21487'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 16 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23287'  or creditor_master_id = '23714' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17727'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 17 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15073' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15072'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 18 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23106' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20680'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 19 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24256' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11113'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 20 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14233' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14232'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 21 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8422' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8406'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 22 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5581'  or creditor_master_id = '11521' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24549'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 23 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '96' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5664'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 24 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11733'  or creditor_master_id = '22273' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23206'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 25 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22731' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20513'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 26 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13200' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13209'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 27 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5095' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5090'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 28 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6154'  or creditor_master_id = '7825' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'198'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 29 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23419' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6745'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 30 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19310' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21920'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 31 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11603' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11611'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 32 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23593' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7593'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 33 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16818' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11421'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 34 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11124' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11125'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 35 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11500' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11430'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 36 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5289'  or creditor_master_id = '6291'  or creditor_master_id = '10928' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22436'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 37 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '541' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5486'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 38 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23062' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20499'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 39 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12665' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17368'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 40 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11157'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 41 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14374' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14387'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 42 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5388' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'33'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 43 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5552'  or creditor_master_id = '7844'  or creditor_master_id = '9330'  or creditor_master_id = '11099'  or creditor_master_id = '12133'  or creditor_master_id = '16669'  or creditor_master_id = '17737' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23166'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 44 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '567'  or creditor_master_id = '22750' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6581'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 45 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '618' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4856'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 46 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23019' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5354'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 47 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24527' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5891'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 48 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9707'  or creditor_master_id = '19894' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23581'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 49 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24437' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22229'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 50 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10696'  or creditor_master_id = '23765' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20437'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 51 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4950'  or creditor_master_id = '7382' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6585'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 52 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5871' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5868'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 53 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4896'  or creditor_master_id = '14077'  or creditor_master_id = '23288' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'59'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 54 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24429' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6297'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 55 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8028' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8014'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 56 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23161' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8643'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 57 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22972' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5347'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 58 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24176' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13610'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 59 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11826'  or creditor_master_id = '11841' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23943'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 60 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9687' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11100'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 61 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7884'  or creditor_master_id = '9857' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'517'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 62 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7718' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7230'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 63 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12532' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12516'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 64 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22506' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19902'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 65 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5746'  or creditor_master_id = '13948' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22478'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 66 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5424'  or creditor_master_id = '5442' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'283'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 67 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7395'  or creditor_master_id = '23790' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22772'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 68 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7782'  or creditor_master_id = '8075' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23812'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 70 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4622' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10132'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 71 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7689'  or creditor_master_id = '21136' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23315'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 72 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21146' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12680'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 73 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9349'  or creditor_master_id = '9364' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7518'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 74 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6322' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6305'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 75 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '99' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12390'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 76 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6787'  or creditor_master_id = '6801' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23414'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 77 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20022'  or creditor_master_id = '24132' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23372'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 78 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9309' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9319'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 79 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13341' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13334'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 80 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16130' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16104'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 81 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16128' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11486'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 82 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18138' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18137'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 83 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7177' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23445'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 84 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5591' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5560'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 85 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17013' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17084'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 86 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7610' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7608'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 87 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7175' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24571'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 88 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21073' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21075'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 89 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19621' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19425'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 90 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20498' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20500'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 91 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24430' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19858'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 92 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '145' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16906'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 93 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22072' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22080'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 94 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23113' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20683'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 95 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11818' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17423'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 96 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10379'  or creditor_master_id = '10385' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24790'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 97 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17331' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17338'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 98 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8296'  or creditor_master_id = '12647' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24203'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 99 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13328' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13309'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 100 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4740' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4745'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 101 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12460' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12500'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 102 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8121'  or creditor_master_id = '10571' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23067'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 103 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10724' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8696'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 104 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15379' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15408'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 105 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11300' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11291'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 106 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4320' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10257'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 107 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20058' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8729'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 108 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7653' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24507'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 109 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24025' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6635'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 110 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15685' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15673'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 111 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23595' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13137'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 112 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13294' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13349'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 113 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '367' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18157'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 114 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11443'  or creditor_master_id = '13499'  or creditor_master_id = '19490' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25719'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 115 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9893' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21308'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 116 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15040' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15045'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 117 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '336' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7669'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 118 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9343' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23381'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 119 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18807' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18442'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 120 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14791' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14792'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 121 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24619' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8990'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 122 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18684' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19001'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 123 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7411' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7442'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 124 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20910' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20963'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 125 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5417' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9533'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 126 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6290' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6293'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 127 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12959' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12937'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 128 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16302' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7233'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 129 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9216' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9196'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 130 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22416'  or creditor_master_id = '22418' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22412'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 131 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12731' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12752'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 132 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14200' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19595'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 133 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16146'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 134 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23347' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19677'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 135 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14917' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14926'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 136 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10251' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14577'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 137 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22534' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21009'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 138 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23038' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12389'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 139 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4897' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7342'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 140 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '232' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12482'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 141 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23303' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21851'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 142 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14747' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14727'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 143 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4631' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7100'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 144 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5575' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9932'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 145 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21233' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21239'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 146 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18049' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18053'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 147 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6153' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6169'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 148 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5246'  or creditor_master_id = '6164'  or creditor_master_id = '8261' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22800'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 149 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7995' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7973'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 150 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17345' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17324'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 151 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10347' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10355'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 152 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9680' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5479'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 153 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6828' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6819'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 154 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24505' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24506'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 155 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12797' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12800'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 156 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5203' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6688'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 157 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23994' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5245'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 158 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12784' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4626'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 159 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19673' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5619'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 160 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4244'  or creditor_master_id = '5594'  or creditor_master_id = '21116'  or creditor_master_id = '22586' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25918'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 161 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6275' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8592'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 162 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13060' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13084'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 163 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11178'  or creditor_master_id = '11258' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11264'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 164 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14341' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14985'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 165 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23357' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19259'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 166 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '498' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8356'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 167 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10337' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10326'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 168 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23352' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9101'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 169 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17227' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17359'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 170 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4826' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4822'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 171 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5650' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14184'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 172 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20844' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20851'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 173 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7580' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15550'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 174 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12185' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21173'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 175 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16113' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16126'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 176 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10403'  or creditor_master_id = '25686' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'203'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 178 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21357'  or creditor_master_id = '21371' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22741'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 179 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9186' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9468'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 180 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12526' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'87'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 181 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23412' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5615'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 182 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18890' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22291'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 183 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12970' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13050'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 184 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22025' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22029'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 185 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15133' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23194'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 186 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17601' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'273'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 187 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6295'  or creditor_master_id = '12785' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'411'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 188 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10756' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4860'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 189 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6428'  or creditor_master_id = '13004' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12955'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 191 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12621' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12601'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 192 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10807' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'384'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 193 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20428' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24173'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 194 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19360' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19364'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 196 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13947' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20770'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 197 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14992' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15004'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 198 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15098'  or creditor_master_id = '15100' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25466'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 199 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14240' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14239'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 200 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15223' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15239'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 201 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5920'  or creditor_master_id = '5921' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22662'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 202 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23913' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17406'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 203 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21802' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23335'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 204 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18000' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18027'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 205 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6395'  or creditor_master_id = '17887' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17913'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 206 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14078' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14140'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 207 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19115'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 208 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7062'  or creditor_master_id = '7108' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24274'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 209 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14123' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14126'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 210 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7510' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4983'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 211 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24'  or creditor_master_id = '6645' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24920'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 212 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7462' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19867'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 213 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5712' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'241'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 215 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8374' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12354'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 216 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6384'  or creditor_master_id = '7619' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23376'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 217 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13508' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16084'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 218 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '199' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4232'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 219 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8728' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8732'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 220 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4966' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19662'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 221 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10489' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10491'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 222 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8240' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8917'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 223 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '2039' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12356'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 224 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16392' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16393'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 225 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14320' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14338'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 226 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14066' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'522'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 227 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10722' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20434'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 228 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21593' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21607'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 229 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18708' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18733'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 230 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6037' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'293'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 231 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6933' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7555'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 232 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19811' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19772'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 233 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8027' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22101'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 234 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '2883'  or creditor_master_id = '5233' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'521'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 235 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18491'  or creditor_master_id = '18492'  or creditor_master_id = '18839' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'197'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 236 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13430'  or creditor_master_id = '13434' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13435'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 237 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9356' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'1869'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 240 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8236'  or creditor_master_id = '10309' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5455'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 244 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10352'  or creditor_master_id = '10358' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10296'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 245 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7086'  or creditor_master_id = '23367' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24747'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 246 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19715'  or creditor_master_id = '19716'  or creditor_master_id = '21202' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25946'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 247 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7413' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7417'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 248 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9960' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9968'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 249 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '391' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6855'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 250 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11184' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11242'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 251 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5392'  or creditor_master_id = '6191' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23128'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 252 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9049' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23379'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 253 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15804'  or creditor_master_id = '24323' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23024'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 254 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12137'  or creditor_master_id = '12162' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12190'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 255 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10477' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10506'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 256 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22598' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22600'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 257 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11973' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13657'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 258 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10264' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10274'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 259 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11362' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11363'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 260 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25277' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21480'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 261 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17347' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21179'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 262 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21993' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21994'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 263 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17055' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20461'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 264 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12203' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12552'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 265 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24497' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24511'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 266 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16759' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16764'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 267 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '237' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7479'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 268 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18485' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18477'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 269 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16920' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'152'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 270 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14925'  or creditor_master_id = '14930' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24543'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 271 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4752' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4870'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 272 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11277'  or creditor_master_id = '18879' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13131'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 273 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4299' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11574'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 274 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23828' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8241'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 275 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4749' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 276 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7838' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23628'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 277 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23719' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12583'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 278 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9523' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9528'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 279 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22124' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22186'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 280 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12246' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12249'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 281 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11024' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11033'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 282 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19309'  or creditor_master_id = '19325' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19315'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 283 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10747'  or creditor_master_id = '20091'  or creditor_master_id = '24551' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23689'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 284 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17889' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17739'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 285 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13643' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13609'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 286 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22169'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 287 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10875' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10877'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 288 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16406' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16476'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 289 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15775' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15793'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 290 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20653'  or creditor_master_id = '20665' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22983'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 291 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4291' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6486'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 292 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22130'  or creditor_master_id = '22192' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22190'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 293 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11961' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12098'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 294 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17444' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20636'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 295 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6713' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8903'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 296 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9016' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9028'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 297 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14196'  or creditor_master_id = '14204' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25467'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 298 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9628' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9622'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 299 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8725' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20288'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 300 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19335'  or creditor_master_id = '21959' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23070'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 301 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20104' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20102'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 302 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14744'  or creditor_master_id = '14758' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12945'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 303 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '626'  or creditor_master_id = '16922'  or creditor_master_id = '19123' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22955'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 304 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14745' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12049'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 305 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15500' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15474'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 306 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22667' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6880'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 307 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19326' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19311'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 308 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23623' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4930'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 309 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15697' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4851'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 310 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20239'  or creditor_master_id = '20265' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23203'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 311 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22039' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22045'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 312 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24513' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24516'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 313 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14446' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19258'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 314 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18172' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18259'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 315 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21492' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21494'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 316 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17596' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17605'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 317 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19002' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18965'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 318 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '335'  or creditor_master_id = '7667' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24509'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 319 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5845'  or creditor_master_id = '24226' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5849'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 320 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25312' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11815'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 321 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6235' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6252'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 322 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5606' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18113'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 323 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19376' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13627'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 324 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24190' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8089'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 325 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16221' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16230'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 326 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10822' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13065'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 327 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23409' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16918'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 328 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22205'  or creditor_master_id = '22215' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25396'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 329 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8678' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8688'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 330 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20476' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14663'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 331 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11944' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11936'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 332 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7859'  or creditor_master_id = '7909' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7860'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 333 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17890' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17294'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 334 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22020' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22037'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 335 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21594' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25228'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 336 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16474' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6793'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 337 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15259' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15226'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 338 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13345' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18845'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 339 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8799' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21445'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 340 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '553'  or creditor_master_id = '6606' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23984'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 341 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5700' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5702'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 342 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8141'  or creditor_master_id = '12467' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24802'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 343 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21496'  or creditor_master_id = '21497' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22863'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 344 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8911' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15716'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 345 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15080' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15089'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 346 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5205' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24309'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 347 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23306' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21862'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 348 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9831' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9832'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 349 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14911' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24450'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 350 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10429' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10440'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 351 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14916' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24451'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 352 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18836' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18986'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 353 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15818' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15808'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 354 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9572' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9569'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 355 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10303' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10382'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 356 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25027' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8458'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 357 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18722' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18687'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 358 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19085' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18447'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 359 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16676' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16679'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 360 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19305' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21916'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 361 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18443' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18446'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 362 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12400' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12512'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 363 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22967'  or creditor_master_id = '23337' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9762'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 364 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14026' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18849'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 365 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21815' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21848'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 366 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6854' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8129'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 367 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7759' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11599'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 368 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13141' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13144'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 369 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6701'  or creditor_master_id = '6704' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16219'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 370 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21864' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22344'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 371 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12699' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12705'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 372 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8299' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8313'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 373 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24345' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8415'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 374 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7241'  or creditor_master_id = '9136' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23397'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 375 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13426' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13433'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 376 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '41' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4961'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 377 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11249' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11252'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 378 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12080' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12087'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 379 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17219' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6609'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 380 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19743' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7560'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 381 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18205' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18192'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 382 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19837'  or creditor_master_id = '19848' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24110'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 383 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4301' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9814'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 384 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18866'  or creditor_master_id = '22870'  or creditor_master_id = '23792' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23780'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 385 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4877'  or creditor_master_id = '4884'  or creditor_master_id = '4889' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22957'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 386 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12471'  or creditor_master_id = '12521' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'52'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 387 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '414'  or creditor_master_id = '5405'  or creditor_master_id = '6647' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24243'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 388 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5115' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5116'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 389 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6053'  or creditor_master_id = '9987'  or creditor_master_id = '11945' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25538'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 390 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12009' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9053'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 391 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10216' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10229'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 392 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22206' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22211'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 393 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14942' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21256'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 394 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17833' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17999'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 395 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8866' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8867'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 396 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24089' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10236'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 397 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8540' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8543'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 398 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9403' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'610'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 399 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4928' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22711'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 400 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10544' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10552'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 401 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13348'  or creditor_master_id = '23904' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13377'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 402 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9158' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4998'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 403 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7626' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7579'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 404 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '1878' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10483'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 405 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9096'  or creditor_master_id = '24639' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22875'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 406 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9552'  or creditor_master_id = '9553' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22874'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 407 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8025' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22108'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 408 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25529' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18238'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 409 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '322' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6868'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 410 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9298'  or creditor_master_id = '9311' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24602'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 411 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20562' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20546'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 412 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10019' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10031'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 413 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19758' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19817'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 414 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21269' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21270'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 415 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17213' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18195'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 416 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23692' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18339'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 417 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21283' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21292'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 418 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6302' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6400'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 419 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9102'  or creditor_master_id = '11989' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24640'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 420 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16450' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16466'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 421 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20481' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'462'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 422 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '447' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23242'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 423 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10262' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10984'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 424 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7156' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5657'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 425 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7915' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7939'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 426 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7900'  or creditor_master_id = '23988' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24554'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 427 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22316' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22300'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 428 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6094'  or creditor_master_id = '6096' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24298'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 429 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22125' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22153'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 430 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21896' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21918'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 431 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11968' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11977'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 432 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12688' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12697'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 433 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11541' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14505'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 434 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20524' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20560'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 435 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4821' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4824'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 436 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18191' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18199'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 437 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10866'  or creditor_master_id = '23816' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23818'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 438 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16797' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16805'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 439 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24620' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8965'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 440 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23111' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20681'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 441 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21804'  or creditor_master_id = '25279' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23302'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 442 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7585' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7614'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 443 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14754'  or creditor_master_id = '14773' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24347'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 444 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6687' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16240'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 445 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9227' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9262'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 446 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9982' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9995'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 447 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5338' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5339'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 448 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16822' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'364'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 449 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5963' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8763'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 450 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9899' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22519'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 451 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8515' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'316'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 452 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24666' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14736'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 453 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '1089' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9559'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 454 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23769' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9853'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 455 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24234' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8379'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 456 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10433' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10436'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 457 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8185' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8191'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 458 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13748' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13762'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 459 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6205'  or creditor_master_id = '22612' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22517'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 460 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '120'  or creditor_master_id = '4743'  or creditor_master_id = '21636' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'609'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 461 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20908'  or creditor_master_id = '20990' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22532'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 462 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20074' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20072'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 463 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22525' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16454'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 464 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5937' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25028'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 465 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9165' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'591'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 466 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6904'  or creditor_master_id = '6906' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23385'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 467 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17498' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16448'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 468 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '380' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18030'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 469 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19799' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19812'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 470 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13361'  or creditor_master_id = '23903' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22898'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 471 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7865' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15351'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 472 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24301' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6709'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 473 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8820' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23742'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 474 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16465' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22561'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 475 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19220' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8017'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 476 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11445' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11446'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 477 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14625' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14638'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 478 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10070' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10079'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 479 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13795'  or creditor_master_id = '13807' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24241'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 480 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19751' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19831'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 481 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20221' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19597'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 482 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19941' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24293'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 483 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22966' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9787'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 484 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8352' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8359'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 485 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6072' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4273'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 486 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19330' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19333'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 487 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16335' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16339'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 488 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15036'  or creditor_master_id = '15053' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15054'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 489 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '566' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17407'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 490 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24612' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10553'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 491 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9645' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9643'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 492 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4311' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7988'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 493 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '519'  or creditor_master_id = '5612' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5609'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 494 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14466' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24032'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 495 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13927' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13942'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 496 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11217' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11289'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 497 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15215'  or creditor_master_id = '23416' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26007'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 498 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7961' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7966'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 499 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17078' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17282'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 500 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16312' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16324'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 501 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11487' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24058'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 502 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12317' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12333'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 503 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6929' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6935'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 504 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4994'  or creditor_master_id = '5004' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'122'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 505 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7999' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8000'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 506 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19933' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19935'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 507 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15435'  or creditor_master_id = '15445'  or creditor_master_id = '15446' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22694'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 508 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10652' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10657'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 509 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '604' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9115'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 510 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8131' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24796'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 511 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14138' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14141'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 512 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23149' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10637'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 513 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24135' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12117'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 514 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '39'  or creditor_master_id = '4954'  or creditor_master_id = '5022' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'562'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 515 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7548' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7545'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 516 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17476' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17458'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 517 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24582' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9022'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 518 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5163' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5165'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 519 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8394' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8405'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 520 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22602' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22603'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 521 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14335' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14350'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 522 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23446' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16395'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 523 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '412' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'17344'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 524 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9405' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'110'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 526 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16688' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16670'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 527 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22649' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5357'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 528 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12376' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'60'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 529 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5823' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5822'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 530 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15731' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15741'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 531 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20433' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7899'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 532 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23476' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12562'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 533 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22663' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5919'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 534 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24530' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11806'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 535 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19244'  or creditor_master_id = '19245' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23355'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 536 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20261'  or creditor_master_id = '20264' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20266'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 537 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23157' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10630'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 538 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8484'  or creditor_master_id = '8490' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25095'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 539 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18071' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18123'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 540 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5890' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5889'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 541 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21668' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21675'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 542 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20682' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23112'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 543 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9070' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23713'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 544 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6679' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6681'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 545 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '597' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13596'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 546 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15297' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'15305'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 547 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4646' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16812'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 548 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7760' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7864'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 549 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9740' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9743'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 550 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12926'  or creditor_master_id = '12933' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13052'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 551 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19373' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19412'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 552 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7544' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7553'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 553 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7809' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23686'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 554 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15050' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24756'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 555 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16970' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16974'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 556 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5458' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5469'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 557 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21680' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21687'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 558 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7914' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7927'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 559 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21766' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22935'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 560 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8423' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19164'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 561 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4298'  or creditor_master_id = '13637' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13574'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 562 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5717'  or creditor_master_id = '5723' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'509'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 563 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23740' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11038'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 564 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12041' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12088'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 565 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19057' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24259'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 566 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22527' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'21011'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 567 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5873'  or creditor_master_id = '10887' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5874'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 568 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5221'  or creditor_master_id = '5573'  or creditor_master_id = '25169' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4230'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 569 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9248' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4296'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 570 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5259'  or creditor_master_id = '8659' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'83'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 571 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5991'  or creditor_master_id = '23052' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'529'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 572 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19929' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23211'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 573 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6920'  or creditor_master_id = '7351'  or creditor_master_id = '24129' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22958'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 574 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17872' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18006'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 575 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25016' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25014'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 576 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4253' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19201'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 577 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9358'  or creditor_master_id = '9368' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9372'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 578 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '12258' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'12302'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 579 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '21144' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7700'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 580 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4992' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7735'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 581 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14270' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14381'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 582 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10023'  or creditor_master_id = '10036' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22677'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 583 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8564'  or creditor_master_id = '9856'  or creditor_master_id = '12219' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'549'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 584 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6311'  or creditor_master_id = '12730' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6441'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 585 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5727' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5728'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 586 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11335'  or creditor_master_id = '11544' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'496'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 587 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10294'  or creditor_master_id = '10353' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25524'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 588 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4891'  or creditor_master_id = '19989' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4218'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 589 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18550' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18695'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 590 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5507'  or creditor_master_id = '8710' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'73'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 591 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7535' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8848'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 592 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17978' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25380'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 593 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '15039' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16398'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 594 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '13887' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'13888'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 595 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5364' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5375'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 596 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20600' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20602'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 597 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6269' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24356'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 598 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4876' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8346'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 599 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11700' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11991'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 600 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9684' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9691'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 601 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7416' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8947'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 602 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '19249' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19254'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 603 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '6501' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6502'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 604 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22176' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22171'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 605 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11817' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'11819'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 606 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '16882' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'133'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 607 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17483' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23309'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 608 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5091'  or creditor_master_id = '9884' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24774'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 609 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5725' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10705'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 610 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18579' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18823'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 611 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11480'  or creditor_master_id = '20136' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24667'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 612 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20049'  or creditor_master_id = '20171' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24003'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 613 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17948' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18863'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 614 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '17229' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'19797'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 615 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5352' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9710'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 616 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18701' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18821'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 617 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8836' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8849'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 618 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '10532' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'10512'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 619 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4281' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6671'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 620 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '425' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'8022'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 621 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '14122' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'14132'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 622 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5125' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5147'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 623 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '18512' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'18882'

);
insert into duplicate_cinvoice_temp (
    select group_id,cinvoice_id,cinvoice_num,creditor_master_name,bodycorp_code from (
        select 624 as group_id, 
        group_concat(cinvoice_id SEPARATOR ', ') as cinvoice_id,
        cinvoice_num,
        group_concat(creditor_master_name separator ', ') as creditor_master_name,
        group_concat(bodycorp_code separator ', ') as bodycorp_code,
        count(*) as cc
        from cinvoices
        join bodycorps on bodycorp_id = cinvoice_bodycorp_id
        join creditor_master on creditor_master_id = cinvoice_creditor_id
        where cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) or cinvoice_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 )
        group by cinvoice_num
    ) zzz where cc > 1
);

select * from duplicate_cinvoice_temp;
