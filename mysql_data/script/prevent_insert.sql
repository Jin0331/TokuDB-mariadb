use test;

-- INSER INTO prevent record --
-- PATIENT (RESULT) table --
INSERT INTO pdx (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO pdx_result (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO ff (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO ff_result (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO ffpe (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO ffpe_result (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO blood (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');
INSERT INTO blood_result (WMB_NO, SAMPLE_ID) VALUES ('prevent', 'prevent');

-- MATERIAL talbe --
INSERT INTO antibody (WMB_NO) VALUES ('prevent');
INSERT INTO celline (WMB_NO) VALUES ('prevent');
INSERT INTO ecoli (WMB_NO) VALUES ('prevent');
INSERT INTO drug (WMB_NO) VALUES ('prevent');
INSERT INTO plasmid (WMB_NO) VALUES ('prevent');
INSERT INTO protein (WMB_NO) VALUES ('prevent');
INSERT INTO shrna (WMB_NO) VALUES ('prevent');
INSERT INTO sirna (WMB_NO) VALUES ('prevent');