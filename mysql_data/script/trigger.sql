-- PATIENT MATERIAL TABLE TRIGGER
-- pdx trigger, BEFORE INSERT ON pdx to sample
DELIMITER |
CREATE TRIGGER pdx_wmb_update BEFORE INSERT ON pdx 
FOR EACH ROW 
BEGIN
	SET @table = "PDX";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- pdx trigger, AFTER INSERT on pdx to sample
DELIMITER |
CREATE TRIGGER pdx_wmb_import AFTER INSERT ON pdx 
FOR EACH ROW 
BEGIN
	INSERT INTO sample (WMB_NO, SAMPLE_ID) VALUES (NEW.WMB_NO, NEW.SAMPLE_ID) ;
END;
|
DELIMITER ;

-- --
-- ff trigger, BEFORE INSERT ON ff to sample
DELIMITER |
CREATE TRIGGER ff_wmb_update BEFORE INSERT ON ff 
FOR EACH ROW 
BEGIN
	SET @table = "FF";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- pdx trigger, AFTER INSERT on ff to sample
DELIMITER |
CREATE TRIGGER ff_wmb_import AFTER INSERT ON ff 
FOR EACH ROW 
BEGIN
	INSERT INTO sample (WMB_NO, SAMPLE_ID) VALUES (NEW.WMB_NO, NEW.SAMPLE_ID) ;
END;
|
DELIMITER ;

-- --
-- ffpe trigger, BEFORE INSERT ON ffpe to sample
DELIMITER |
CREATE TRIGGER ffpe_wmb_update BEFORE INSERT ON ffpe 
FOR EACH ROW 
BEGIN
	SET @table = "FFPE";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- ffpe trigger, AFTER INSERT on ffpe to sample
DELIMITER |
CREATE TRIGGER ffpe_wmb_import AFTER INSERT ON ffpe 
FOR EACH ROW 
BEGIN
	INSERT INTO sample (WMB_NO, SAMPLE_ID) VALUES (NEW.WMB_NO, NEW.SAMPLE_ID) ;
END;
|
DELIMITER ;

-- --
-- blood trigger, BEFORE INSERT ON blood to sample
DELIMITER |
CREATE TRIGGER blood_wmb_update BEFORE INSERT ON blood 
FOR EACH ROW 
BEGIN
	SET @table = "BLOOD";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- blood trigger, AFTER INSERT on blood to sample
DELIMITER |
CREATE TRIGGER blood_wmb_import AFTER INSERT ON blood 
FOR EACH ROW 
BEGIN
	INSERT INTO sample (WMB_NO, SAMPLE_ID) VALUES (NEW.WMB_NO, NEW.SAMPLE_ID) ;
END;
|
DELIMITER ;

-- --
-- sample trigger, AFTER INSERT on sample to wmb_no
DELIMITER |
CREATE TRIGGER sample_wmb_import AFTER INSERT ON sample
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- PATIENT RESULT TABLE / MATERIAL TABLE TRIGGER --
-- PATIENT RESULT TABLE --
-- pdx result trigger, BEFORE INSERT on pdx to wmb_no
DELIMITER |
CREATE TRIGGER pdx_result_wmb_update BEFORE INSERT ON pdx_result 
FOR EACH ROW 
BEGIN
	SET @table = "PDXRESULT";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- pdx result trigger, AFTER INSERT on pdx to wmb_no
DELIMITER |
CREATE TRIGGER pdx_result_wmb_import AFTER INSERT ON pdx_result
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- --
-- ff result trigger, BEFORE INSERT on ff to wmb_no
DELIMITER |
CREATE TRIGGER ff_result_wmb_update BEFORE INSERT ON ff_result 
FOR EACH ROW 
BEGIN
	SET @table = "FFRESULT";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- ff result trigger, AFTER INSERT on ff to wmb_no
DELIMITER |
CREATE TRIGGER ff_result_wmb_import AFTER INSERT ON ff_result
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- --
-- ffpe result trigger, BEFORE INSERT on ffpe to wmb_no
DELIMITER |
CREATE TRIGGER ffpe_result_wmb_update BEFORE INSERT ON ffpe_result 
FOR EACH ROW 
BEGIN
	SET @table = "FFPERESULT";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- ffpe result trigger, AFTER INSERT on ffpe to wmb_no
DELIMITER |
CREATE TRIGGER ffpe_result_wmb_import AFTER INSERT ON ffpe_result
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- --
-- blood result trigger, BEFORE INSERT on blood to wmb_no
DELIMITER |
CREATE TRIGGER blood_result_wmb_update BEFORE INSERT ON blood_result 
FOR EACH ROW 
BEGIN
	SET @table = "BLOODRESULT";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", NEW.SAMPLE_ID, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- blood result trigger, AFTER INSERT on blood to wmb_no
DELIMITER |
CREATE TRIGGER blood_result_wmb_import AFTER INSERT ON blood_result
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- MATERIAL TABLE --
-- --
-- drug result trigger, BEFORE INSERT on drug to wmb_no
DELIMITER |
CREATE TRIGGER drug_wmb_update BEFORE INSERT ON drug
FOR EACH ROW 
BEGIN
	SET @table = "DRUG";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- drug result trigger, AFTER INSERT on drug to wmb_no
DELIMITER |
CREATE TRIGGER drug_wmb_import AFTER INSERT ON drug
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- antibody result trigger, BEFORE INSERT on antibody to wmb_no
DELIMITER |
CREATE TRIGGER antibody_wmb_update BEFORE INSERT ON antibody
FOR EACH ROW 
BEGIN
	SET @table = "ANTIBODY";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- antibody result trigger, AFTER INSERT on antibody to wmb_no
DELIMITER |
CREATE TRIGGER antibody_wmb_import AFTER INSERT ON antibody
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- celline result trigger, BEFORE INSERT on celline to wmb_no
DELIMITER |
CREATE TRIGGER celline_wmb_update BEFORE INSERT ON celline
FOR EACH ROW 
BEGIN
	SET @table = "CELLINE";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- celline result trigger, AFTER INSERT on celline to wmb_no
DELIMITER |
CREATE TRIGGER celline_wmb_import AFTER INSERT ON celline
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- protein result trigger, BEFORE INSERT on protein to wmb_no
DELIMITER |
CREATE TRIGGER protein_wmb_update BEFORE INSERT ON protein
FOR EACH ROW 
BEGIN
	SET @table = "PROTEIN";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- protein result trigger, AFTER INSERT on protein to wmb_no
DELIMITER |
CREATE TRIGGER protein_wmb_import AFTER INSERT ON protein
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- plasmid result trigger, BEFORE INSERT on plasmid to wmb_no
DELIMITER |
CREATE TRIGGER plasmid_wmb_update BEFORE INSERT ON plasmid
FOR EACH ROW 
BEGIN
	SET @table = "PLASMID";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- plasmid result trigger, AFTER INSERT on plasmid to wmb_no
DELIMITER |
CREATE TRIGGER plasmid_wmb_import AFTER INSERT ON plasmid
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- ecoli result trigger, BEFORE INSERT on ecoli to wmb_no
DELIMITER |
CREATE TRIGGER ecoli_wmb_update BEFORE INSERT ON ecoli
FOR EACH ROW 
BEGIN
	SET @table = "ECOLI";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- ecoli result trigger, AFTER INSERT on ecoli to wmb_no
DELIMITER |
CREATE TRIGGER ecoli_wmb_import AFTER INSERT ON ecoli
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- sirna result trigger, BEFORE INSERT on sirna to wmb_no
DELIMITER |
CREATE TRIGGER sirna_wmb_update BEFORE INSERT ON sirna
FOR EACH ROW 
BEGIN
	SET @table = "SIRNA";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- sirna result trigger, AFTER INSERT on sirna to wmb_no
DELIMITER |
CREATE TRIGGER sirna_wmb_import AFTER INSERT ON sirna
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;

-- shrna result trigger, BEFORE INSERT on shrna to wmb_no
DELIMITER |
CREATE TRIGGER shrna_wmb_update BEFORE INSERT ON shrna
FOR EACH ROW 
BEGIN
	SET @table = "SHRNA";
	SET New.WMB_NO = CONCAT("WM-", @table, "-", LAST_INSERT_ID()) ; 
END;
|
DELIMITER ;

-- shrna result trigger, AFTER INSERT on shrna to wmb_no
DELIMITER |
CREATE TRIGGER shrna_wmb_import AFTER INSERT ON shrna
FOR EACH ROW 
BEGIN
	INSERT INTO wmb_no (WMB_NO) VALUES (NEW.WMB_NO) ;
END;
|
DELIMITER ;
