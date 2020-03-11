
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'AUCIND'  or creditor_master_code = 'Auckland Independently qualified person' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'AIQP'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'PBCONT' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'E & E Technologies'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'All Pumps Ltd ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ALLPUMPS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'GREENZHICHAO'  or creditor_master_code = 'Green Acres -  Zhichao Wang '  or creditor_master_code = 'ZHICHAO' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Green Acres - Zhichao Wang'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Andrews Property Services Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ANDPRO'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'NGATWHAT' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Whai Rawa'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'G/ACRES - JK Gardeners' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'GREENJK'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Manukau Medical Assoc.' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'MANUKAUMED'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'NOVENE' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Nova'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Bunnings Warehouse' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Bunnings Ltd'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ST Ground Services' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'STGROUND'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Watertight Plumbing Ltd.' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Watertight Plumbing'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'TOPMAR-ELECTRICAL' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Topmark Electrical Ltd'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Drain Surgeons Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'DRAINSURG'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Cannon - Rentokil'  or creditor_master_code = 'FLYANT'  or creditor_master_code = 'Rentokil' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Rentokil Initial Ltd'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'National Fire Protection' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'NATFIR'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'SILLAN' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'SLS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Guardian Alarms' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Guardian House'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'The Ledge Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Off The Ledge'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ENERGYON'  or creditor_master_code = 'Energy Online' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ENEONL'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'GE'  or creditor_master_code = 'GENENE' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Genesis Energy'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Fire Sys'  or creditor_master_code = 'Fire System Maintenance' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'FIRSYS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'North Shore Swimming Centre'  or creditor_master_code = 'POOLDR' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'NORSHOS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Airco' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Airco Service'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'CHEMWASH Auckland Reumera ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Chemwash Remuera '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Supercity Property' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'SuperCity'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ATYOURR'  or creditor_master_code = 'Lawn Scene Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Lawnscene'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Quality cleaning services' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'QUALCLEAN'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'PALMTRAD' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'PALTRA'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Vista Landscaping Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'VISTALAWN'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Abolish Pest Control' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ABOPEST'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Garden Magic ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'GARMAJ'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Pumpland New Zealand' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Fun Spas & Pool Shop'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'AUCPOOL' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'AUCKPOOL'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Ampertaine Garden' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Jims Mowing'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Vista Landscaping Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'VISTALAWN'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Free Flow Drainage' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'FREEFLOW'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Apex General Limited'  or creditor_master_code = 'Apex Ins'  or creditor_master_code = 'Apex Insurance' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Apex Insurance Ltd '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'YOURNEIGH' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Hamish Alexander'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'LASER - EAST TAMAKI' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'LASER PLUMBING '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Prentis Ltd.' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'VELOBUI'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ADryden' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ADT '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Humphreys Landscaping' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'HUMLAN'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'NZ Detector Services'  or creditor_master_code = 'New Zealand Detector Dog Service Ltd ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'NZ Detector Dog '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Switch Utilities Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Switch'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Sumich P & D' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Sumich'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Mr L & G' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'MRLAWNS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'RTALLEN' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Bam Boo '

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ELICAR' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Elite'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'FG Fire Group consulting '  or creditor_master_code = 'Fire Group Consulting ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'FIREGROUP'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'JA Fire Limited' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'JW Fire Equipment Services'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Shamrock Reroofing ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'SHARER'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Fire Corp Industries' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'FIRCORIND'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Jims Mowing- H Singh ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'JIMSSINGH'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Du Plessis Contractors Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'DPC'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Men In Vans Group' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'MENINV'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'VIPLAWNKAR' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'VIP Lawns'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Hempleman Hotmix' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'HEMHOT'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'G/ACRES - JK Gardeners' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'GREENJK'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Advantage Door Services ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'ADS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'WHARFBRO' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'WHABRO'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Coopers Window' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'COOPWIND'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Wormald' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'TYCONZ'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'North Shore Swimming Centre'  or creditor_master_code = 'POOLDR' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'NORSHOS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Watercare Ltd ' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Watercare'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'SHARPPROP'  or creditor_master_code = 'Sharper Cleaning Ltd' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'SHAPRO'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'VODFIXED' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'VODANZ'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ME'  or creditor_master_code = 'MERENE' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Mercury'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'Garden Bins'  or creditor_master_code = 'Green Fingers'  or creditor_master_code = 'North Harbour Garden Bags' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'GREFIN'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'The Housewash Company'  or creditor_master_code = 'The house and building wash company' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'THEHOU&BUIWASH'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'TFP'  or creditor_master_code = 'TRIFIR' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Triangle'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'SILLAN' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'SLS'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'The gardener' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'THEGARD'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'SLACON' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'Slapt Consultants'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        
drop TEMPORARY TABLE IF EXISTS to_be_deleted_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS to_be_deleted_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE 
 creditor_master_code = 'ATEAM' 

);
drop TEMPORARY TABLE IF EXISTS finalized_creditor_id_12032019;
CREATE TEMPORARY TABLE IF NOT EXISTS finalized_creditor_id_12032019 AS (SELECT creditor_master_id FROM creditor_master WHERE creditor_master_code = 
'A Team Trees'

);
UPDATE cinvoices SET cinvoice_num = concat(cinvoice_num,'_',cinvoice_creditor_id), cinvoice_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cinvoice_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
UPDATE cpayments SET cpayment_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) WHERE cpayment_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
update creditor_comms set creditor_comm_creditor_id = 26041 where creditor_comm_creditor_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019);
update gl_transactions set gl_transaction_creditor_id = (SELECT creditor_master_id FROM finalized_creditor_id_12032019) where gl_transaction_creditor_id IN (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
delete from creditor_master where creditor_master_id in (SELECT creditor_master_id FROM to_be_deleted_creditor_id_12032019 );
                                                        