
        -- !!!!!
        -- !!!!!
        -- change 26041 to a temperary testing creditor master id before execute
        -- !!!!!
        -- !!!!!
        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25473' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25474'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23809' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22814'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4225' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5075'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25770' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25802'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22621'  or creditor_master_id = '22948' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23022'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24179' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'423'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22778' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22720'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25961' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25088'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25204' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25690'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '507' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22436'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25799' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25800'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Lawnstar Garden Services ' where creditor_master_id = 25800;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23314' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23256'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22678' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25165'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22900' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24012'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25032' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24961'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23102' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22917'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'SPECYARD Pratt' where creditor_master_id = 22917;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '276' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22438'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23218' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23103'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Whistler' where creditor_master_id = 23103;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23982' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'493'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '395' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4848'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5070' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'277'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Crombie Lockwood' where creditor_master_id = 277;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '197'  or creditor_master_id = '23980'  or creditor_master_id = '24184' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24249'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22597' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'196'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22958' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24129'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24177' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'358'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26019' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'460'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22725' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23895'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25771' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24726'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24448' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23801'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23186' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24340'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23073' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23072'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22771' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24267'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24564'  or creditor_master_id = '24146' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22832'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Grove Hardware' where creditor_master_id = 22832;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24859' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24225'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Asset Managers ltd' where creditor_master_id = 24225;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '11747' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25545'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23780' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22870'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23217' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22634'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22382' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24401'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22770' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24872'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24624' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'602'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25796' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25824'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24396' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25401'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'BIG TREE North' where creditor_master_id = 25401;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22490' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23308'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24748' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24133'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25963' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24009'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22682'  or creditor_master_id = '25325' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25627'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23556' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25490'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9344' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'77'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23162' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24439'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22804' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24644'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24265' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23984'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23417'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22589' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22914'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Shore Garden' where creditor_master_id = 22914;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '140' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'6309'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24832' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23815'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25085' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22848'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'J R Howley ltd' where creditor_master_id = 22848;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4238'  or creditor_master_id = '22862' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24080'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20479' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26079'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22713' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22820'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25875' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25876'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24282' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22665'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25432' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25434'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23767' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23293'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22998' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23251'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'16887'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25030' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25029'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Dave and Maria Potter' where creditor_master_id = 25029;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20431' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24554'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '7388' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4258'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'82'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23183'  or creditor_master_id = '26050' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23665'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22435'  or creditor_master_id = '22443' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24260'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26048' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'544'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25192' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4643'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '9429' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23087'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22798' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23655'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Crewcut Franchise Tony' where creditor_master_id = 23655;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4230' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25169'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22901' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23263'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '158' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26015'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25456' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4619'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22396'  or creditor_master_id = '23592' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25475'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4321' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23071'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22426'  or creditor_master_id = '23555' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22855'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24048' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23695'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23181' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25574'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23101' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'37'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Morley & Associates Ltd' where creditor_master_id = 37;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23516'  or creditor_master_id = '25224'  or creditor_master_id = '25663' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24088'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24221' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23249'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Paresh Vekriya' where creditor_master_id = 23249;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24057' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24040'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '341' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'342'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22808' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23497'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23246' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22887'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24842' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24062'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '53' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'109'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22601' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24342'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22964' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22965'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'metropest' where creditor_master_id = 22965;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23184' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22782'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25752' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22355'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '520' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24904'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25447' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25167'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23129' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22951'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24003'  or creditor_master_id = '25347' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22947'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '562'  or creditor_master_id = '22563' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'5434'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24031' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22930'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22550' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24793'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22953' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'7682'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24921' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25200'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23328' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24767'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22780' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24975'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20432' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23990'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22494' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24242'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24407' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22877'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'NZ Height Services' where creditor_master_id = 22877;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22764' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23863'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '20477'  or creditor_master_id = '23318' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25214'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24331'  or creditor_master_id = '25764' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25237'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25261' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25368'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25166' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25377'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23928' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24918'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23272' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26003'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25934' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25935'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25060' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22991'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'SC Hyland' where creditor_master_id = 22991;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '5073' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22381'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Debbi Sapsford' where creditor_master_id = 22381;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24410' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24519'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22822' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25322'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25126' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23182'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22758' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26071'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23532' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22889'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'GARDENGUARD/evans' where creditor_master_id = 22889;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23608' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4276'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25577' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25576'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Shore Pool Service' where creditor_master_id = 25576;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '1874' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26036'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22881' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24640'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23534'  or creditor_master_id = '25268' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25941'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24558' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22981'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Coastwide Pest Control Limited' where creditor_master_id = 22981;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24182' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'323'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22577' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23456'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Curveys Cuts/Irwin' where creditor_master_id = 23456;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22666' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22956'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24765' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22610'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22963' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24806'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24456' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23833'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Tony Wilson - peter clasby' where creditor_master_id = 23833;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '263'  or creditor_master_id = '22800' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22733'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Crewcut Bishop brown' where creditor_master_id = 22733;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25067' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25904'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24739' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25595'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23254' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23206'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8802' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22368'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23361' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'9887'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25534' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25535'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23577'  or creditor_master_id = '23862' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25467'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23188' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25652'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24528' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'563'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Blast Off Services Ltd' where creditor_master_id = 563;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4297' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23952'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Garden Maintenance Professiona' where creditor_master_id = 23952;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '26031' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26020'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Active Property' where creditor_master_id = 26020;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '4751' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'20711'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25154' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23174'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'BrokerWeb' where creditor_master_id = 23174;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24366' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23966'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24112' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23999'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25005' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23680'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22442' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23283'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22365' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25209'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23362' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25274'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25515' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'26082'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25267' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'4327'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '202' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25694'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24993' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24932'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23707' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24847'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25747' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25973'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Brighter Gardeners/Green' where creditor_master_id = 25973;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23402' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25280'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23040' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23848'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Grasshopper PM' where creditor_master_id = 23848;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23003' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24412'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25843' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25712'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23247' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23814'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = ' C & G Moss - Chemwash' where creditor_master_id = 23814;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22643' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'534'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24913' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'410'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25195' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'542'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25896' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25890'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24014' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24121'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24849' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22813'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24399' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25460'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22662' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24371'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22858' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23122'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25926' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'494'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22934' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23567'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24217' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22629'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25571' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25669'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24092' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25399'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23231' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22868'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Maximum cleaning' where creditor_master_id = 22868;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22772' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24494'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25146' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22879'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23606' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25504'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '8987' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22515'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24134' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24136'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Jim Morrogh' where creditor_master_id = 24136;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23057' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22357'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23152' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'201'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '23528' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22940'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'V J Cleaning' where creditor_master_id = 22940;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '25913' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'25911'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
update creditor_master set creditor_master_code = 'Mike Farquhor' where creditor_master_id = 25911;
                                                
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22659' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'22834'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '24374' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'24617'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_id = '22897' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_id = 
'23500'

);
UPDATE cinvoices SET cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        