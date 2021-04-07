-- wmb_no Table Create SQL
CREATE TABLE wmb_no
(
    `ID`      INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`  VARCHAR(45)    NOT NULL, 
    PRIMARY KEY (ID, WMB_NO)
);


-- wmb_no Table Create SQL
CREATE TABLE sample
(
    `WMB_NO`     VARCHAR(45)    NOT NULL, 
    `SAMPLE_ID`  VARCHAR(45)    NOT NULL, 
    PRIMARY KEY (WMB_NO, SAMPLE_ID)
);

ALTER TABLE sample
    ADD CONSTRAINT FK_sample_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE pdx
(
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`        VARCHAR(45)    NOT NULL, 
    `WMB_NO`           VARCHAR(45)    NULL, 
    `FF_ID`            VARCHAR(45)    NULL, 
    `gumche`           VARCHAR(45)    NULL, 
    `gooip_gooknae`    VARCHAR(45)    NULL, 
    `gooip_gookoe`     VARCHAR(45)    NULL, 
    `ethnicity`        VARCHAR(45)    NULL, 
    `tissue`           VARCHAR(45)    NULL, 
    `disease`          VARCHAR(45)    NULL, 
    `ipgo_hyungtae`    VARCHAR(45)    NULL, 
    `insooja`          VARCHAR(45)    NULL, 
    `ipgo_date`        DATETIME       NULL, 
    `location`         VARCHAR(45)    NULL, 
    `tumor_grade`      VARCHAR(45)    NULL, 
    `tumor_stage`      VARCHAR(45)    NULL, 
    `patient_sex`      VARCHAR(45)    NULL, 
    `patient_age`      VARCHAR(45)    NULL, 
    `patient_height`   VARCHAR(45)    NULL, 
    `patient_weight`   VARCHAR(45)    NULL, 
    `patient_smk`      VARCHAR(45)    NULL, 
    `patient_smk_day`  VARCHAR(45)    NULL, 
    `patient_smk_dur`  VARCHAR(45)    NULL, 
    `patient_alc`      VARCHAR(45)    NULL, 
    `patient_alc_day`  VARCHAR(45)    NULL, 
    `patient_alc_dur`  VARCHAR(45)    NULL, 
    `trm_priori`       VARCHAR(45)    NULL, 
    `trm_drug`         VARCHAR(45)    NULL, 
    `passage`          VARCHAR(45)    NULL, 
    `media`            VARCHAR(45)    NULL, 
    `isik_date`        DATETIME       NULL, 
    `isik_dur`         VARCHAR(45)    NULL, 
    `diagnosis`        VARCHAR(45)    NULL, 
    `animal_type`      VARCHAR(45)    NULL, 
    `animal_goomae`    VARCHAR(45)    NULL, 
    `char_resistance`  VARCHAR(45)    NULL, 
    `char_mutation`    VARCHAR(45)    NULL, 
    `char_ron_geno`    VARCHAR(45)    NULL, 
    `char_igsf1_geno`  VARCHAR(45)    NULL, 
    `char_p34_geno`    VARCHAR(45)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE pdx
    ADD CONSTRAINT FK_pdx_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ffpe
(
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`        VARCHAR(45)    NOT NULL, 
    `WMB_NO`           VARCHAR(45)    NULL, 
    `FF_ID`            VARCHAR(45)    NULL, 
    `gooip_gooknae`    VARCHAR(45)    NULL, 
    `gooip_gookoe`     VARCHAR(45)    NULL, 
    `ethnicity`        VARCHAR(45)    NULL, 
    `cancer`           VARCHAR(45)    NULL, 
    `ipgo_hyungtae`    VARCHAR(45)    NULL, 
    `insooja`          VARCHAR(45)    NULL, 
    `ipgo_date`        VARCHAR(45)    NULL, 
    `location`         VARCHAR(45)    NULL, 
    `cancer_type`      VARCHAR(45)    NULL, 
    `tumor_grade`      VARCHAR(45)    NULL, 
    `tumor_stage`      VARCHAR(45)    NULL, 
    `patient_sex`      VARCHAR(45)    NULL, 
    `patient_age`      VARCHAR(45)    NULL, 
    `patient_height`   VARCHAR(45)    NULL, 
    `patient_weight`   VARCHAR(45)    NULL, 
    `patient_smk`      VARCHAR(45)    NULL, 
    `patient_smk_day`  VARCHAR(45)    NULL, 
    `patient_smk_dur`  VARCHAR(45)    NULL, 
    `patient_alc`      VARCHAR(45)    NULL, 
    `patient_alc_day`  VARCHAR(45)    NULL, 
    `patient_alc_dur`  VARCHAR(45)    NULL, 
    `ihc_p53`          VARCHAR(45)    NULL, 
    `ihc_p34`          VARCHAR(45)    NULL, 
    `ihc_mdm2`         VARCHAR(45)    NULL, 
    `ihc_pron`         VARCHAR(45)    NULL, 
    `ihc_ron`          VARCHAR(45)    NULL, 
    `ihc_msp`          VARCHAR(45)    NULL, 
    `ihc_cmyc`         VARCHAR(45)    NULL, 
    `ihc_pdl1`         VARCHAR(45)    NULL, 
    `ihc_igsf1`        VARCHAR(45)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ffpe
    ADD CONSTRAINT FK_ffpe_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE blood
(
    `ID`                           INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`                    VARCHAR(45)    NOT NULL, 
    `WMB_NO`                       VARCHAR(45)    NULL, 
    `gumche`                       VARCHAR(45)    NULL, 
    `gooip_gooknae`                VARCHAR(45)    NULL, 
    `gooip_gookoe`                 VARCHAR(45)    NULL, 
    `ethnicity`                    VARCHAR(45)    NULL, 
    `tissue`                       VARCHAR(45)    NULL, 
    `ipgo_hyungtae`                VARCHAR(45)    NULL, 
    `insooja`                      VARCHAR(45)    NULL, 
    `ipgo_date`                    DATETIME       NULL, 
    `location`                     VARCHAR(45)    NULL, 
    `cancer`                       VARCHAR(45)    NULL, 
    `tumor_grade`                  VARCHAR(45)    NULL, 
    `tumor_stage`                  VARCHAR(45)    NULL, 
    `patient_sex`                  VARCHAR(45)    NULL, 
    `patient_age`                  VARCHAR(45)    NULL, 
    `patient_height`               VARCHAR(45)    NULL, 
    `patient_weight`               VARCHAR(45)    NULL, 
    `patient_smk`                  VARCHAR(45)    NULL, 
    `patient_smk_day`              VARCHAR(45)    NULL, 
    `patient_smk_dur`              VARCHAR(45)    NULL, 
    `patient_alc`                  VARCHAR(45)    NULL, 
    `patient_alc_day`              VARCHAR(45)    NULL, 
    `patient_alc_dur`              VARCHAR(45)    NULL, 
    `trm_priori`                   VARCHAR(45)    NULL, 
    `trm_erbitux_respone`          VARCHAR(45)    NULL, 
    `trm_erbitux_nonresponse`      VARCHAR(45)    NULL, 
    `sigelcell_date`               DATETIME       NULL, 
    `sigelcell_soohangja`          VARCHAR(45)    NULL, 
    `ex_cellpopulation_info`       VARCHAR(45)    NULL, 
    `ex_cellpopulation_soohangja`  VARCHAR(45)    NULL, 
    `ex_cytokine_info`             VARCHAR(45)    NULL, 
    `ex_cytokine_soohangja`        VARCHAR(45)    NULL, 
    `ex_invitro_info`              VARCHAR(45)    NULL, 
    `ex_invitro_soohangja`         VARCHAR(45)    NULL, 
    `ex_tested_drug_info`          VARCHAR(45)    NULL, 
    `ex_tested_drug_soohangja`     VARCHAR(45)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE blood
    ADD CONSTRAINT FK_blood_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ff
(
    `ID`                   INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`            VARCHAR(45)    NOT NULL, 
    `WMB_NO`               VARCHAR(45)    NULL, 
    `FF_ID`                VARCHAR(45)    NULL, 
    `gooip_gooknae`        VARCHAR(45)    NULL, 
    `gooip_gookoe`         VARCHAR(45)    NULL, 
    `ethnicity`            VARCHAR(45)    NULL, 
    `tissue`               VARCHAR(45)    NULL, 
    `insooja`              VARCHAR(45)    NULL, 
    `ipgo_date`            DATETIME       NULL, 
    `tumor_grade`          VARCHAR(45)    NULL, 
    `tumor_stage`          VARCHAR(45)    NULL, 
    `tumor_content`        VARCHAR(45)    NULL, 
    `tumor_size`           VARCHAR(45)    NULL, 
    `tumor_weight`         VARCHAR(45)    NULL, 
    `jozik_date`           DATETIME       NULL, 
    `jozik_count`          VARCHAR(45)    NULL, 
    `patient_sex`          VARCHAR(45)    NULL, 
    `patient_age`          VARCHAR(45)    NULL, 
    `patient_height`       VARCHAR(45)    NULL, 
    `patient_weight`       VARCHAR(45)    NULL, 
    `patient_sugery_date`  VARCHAR(45)    NULL, 
    `patient_metastases`   VARCHAR(45)    NULL, 
    `trm_priori`           VARCHAR(45)    NULL, 
    `trm_drug_response`    VARCHAR(45)    NULL, 
    `diagnosis`            VARCHAR(45)    NULL, 
    `tnm_staging`          VARCHAR(45)    NULL, 
    `msi`                  VARCHAR(45)    NULL, 
    `ihc_p53`              VARCHAR(45)    NULL, 
    `ihc_p34`              VARCHAR(45)    NULL, 
    `ihc_mdm2`             VARCHAR(45)    NULL, 
    `ihc_pron`             VARCHAR(45)    NULL, 
    `ihc_ron`              VARCHAR(45)    NULL, 
    `ihc_msp`              VARCHAR(45)    NULL, 
    `ihc_cmyc`             VARCHAR(45)    NULL, 
    `ihc_pdl1`             VARCHAR(45)    NULL, 
    `ihc_er`               VARCHAR(45)    NULL, 
    `ihc_pr`               VARCHAR(45)    NULL, 
    `ihc_herneu`           VARCHAR(45)    NULL, 
    `ihc_ki67`             VARCHAR(45)    NULL, 
    `rtpcr_ron`            VARCHAR(45)    NULL, 
    `rtpcr_kras`           VARCHAR(45)    NULL, 
    `rtpcr_braf`           VARCHAR(45)    NULL, 
    `rtpcr_egfr`           VARCHAR(45)    NULL, 
    `rtpcr_igsf1`          VARCHAR(45)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ff
    ADD CONSTRAINT FK_ff_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE plasmid
(
    `WMB_NO`            VARCHAR(45)    NOT NULL, 
    `ID`                INT            NOT NULL    AUTO_INCREMENT, 
    `insert`            VARCHAR(45)    NULL, 
    `backbone_vector`   VARCHAR(45)    NULL, 
    `tnm_staging`       VARCHAR(45)    NULL, 
    `sequencing_check`  VARCHAR(45)    NULL, 
    `antibiotics`       VARCHAR(45)    NULL, 
    `selection_marker`  VARCHAR(45)    NULL, 
    `map`               TEXT           NULL, 
    `ecoli_stock`       VARCHAR(45)    NULL, 
    `dna_stored`        VARCHAR(45)    NULL, 
    `box_no`            VARCHAR(45)    NULL, 
    `manager`           VARCHAR(45)    NULL, 
    `issue`             VARCHAR(45)    NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE plasmid
    ADD CONSTRAINT FK_plasmid_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ecoli
(
    `WMB_NO`           VARCHAR(45)    NOT NULL, 
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `insert`           VARCHAR(45)    NULL, 
    `backbone_vector`  VARCHAR(45)    NULL, 
    `tag`              VARCHAR(45)    NULL, 
    `box_no`           VARCHAR(45)    NULL, 
    `manager`          VARCHAR(45)    NULL, 
    `issue`            VARCHAR(45)    NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE ecoli
    ADD CONSTRAINT FK_ecoli_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE antibody
(
    `WMB_NO`              VARCHAR(45)    NOT NULL, 
    `ID`                  INT            NOT NULL    AUTO_INCREMENT, 
    `antibody`            VARCHAR(45)    NULL, 
    `cat_no`              VARCHAR(45)    NULL, 
    `lot_no`              VARCHAR(45)    NULL, 
    `conc`                VARCHAR(45)    NULL, 
    `host`                VARCHAR(45)    NULL, 
    `species_reactivity`  VARCHAR(45)    NULL, 
    `application`         VARCHAR(45)    NULL, 
    `used_titer`          VARCHAR(45)    NULL, 
    `blocking_buffer`     VARCHAR(45)    NULL, 
    `protein_size`        VARCHAR(45)    NULL, 
    `vial`                VARCHAR(45)    NULL, 
    `ipgo_date`           DATETIME       NULL, 
    `location`            VARCHAR(45)    NULL, 
    `manager`             VARCHAR(45)    NULL, 
    `manufacturer`        VARCHAR(45)    NULL, 
    `issue`               VARCHAR(45)    NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE antibody
    ADD CONSTRAINT FK_antibody_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE cellline
(
    `WMB_NO`                            VARCHAR(45)    NOT NULL, 
    `ID`                                INT            NOT NULL    AUTO_INCREMENT, 
    `cell_line`                         VARCHAR(45)    NULL, 
    `organism`                          VARCHAR(45)    NULL, 
    `disease`                           VARCHAR(45)    NULL, 
    `image_path`                        TEXT           NULL, 
    `characterization_chemoresistance`  TEXT           NULL, 
    `characterization_mutation`         TEXT           NULL, 
    `characterization_ron_genotype`     TEXT           NULL, 
    `characterization_igsf1_genotype`   TEXT           NULL, 
    `characterization_p34_genotype`     TEXT           NULL, 
    `media_condition`                   TEXT           NULL, 
    `growth_pattern`                    TEXT           NULL, 
    `passage_ratio`                     TEXT           NULL, 
    `manufacturer`                      VARCHAR(45)    NULL, 
    `issue`                             VARCHAR(45)    NULL, 
    `rtpcr_ron`                         VARCHAR(45)    NULL, 
    `rtpcr_kras`                        VARCHAR(45)    NULL, 
    `rtpcr_braf`                        VARCHAR(45)    NULL, 
    `rtpcr_egfr`                        VARCHAR(45)    NULL, 
    `wb_ron`                            VARCHAR(45)    NULL, 
    `wb_braf`                           VARCHAR(45)    NULL, 
    `wb_egfr`                           VARCHAR(45)    NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE cellline
    ADD CONSTRAINT FK_cellline_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE drug
(
    `WMB_NO`        VARCHAR(45)    NOT NULL, 
    `ID`            INT            NOT NULL    AUTO_INCREMENT, 
    `name`          VARCHAR(45)    NULL, 
    `manufacturer`  VARCHAR(45)    NULL, 
    `protein_size`  VARCHAR(45)    NULL, 
    `target`        VARCHAR(45)    NULL, 
    `cat_no`        VARCHAR(45)    NULL, 
    `goomae_date`   DATETIME       NULL, 
    `location`      VARCHAR(45)    NULL, 
    `manager`       VARCHAR(45)    NULL, 
    `issue`         VARCHAR(45)    NULL, 
    `data_path`     TEXT           NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE drug
    ADD CONSTRAINT FK_drug_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE protein
(
    `WMB_NO`        VARCHAR(45)    NOT NULL, 
    `ID`            INT            NOT NULL    AUTO_INCREMENT, 
    `reagent_name`  TEXT           NULL, 
    `manufacturer`  VARCHAR(45)    NULL, 
    `cat_no`        VARCHAR(45)    NULL, 
    `lot_no`        VARCHAR(45)    NULL, 
    `remain_size`   VARCHAR(45)    NULL, 
    `location`      VARCHAR(45)    NULL, 
    `data_path`     TEXT           NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE protein
    ADD CONSTRAINT FK_protein_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE shrna
(
    `WMB_NO`                VARCHAR(45)    NOT NULL, 
    `ID`                    INT            NOT NULL    AUTO_INCREMENT, 
    `density`               VARCHAR(45)    NULL, 
    `sequence`              TEXT           NULL, 
    `stock_vial_ipgo_date`  DATETIME       NULL, 
    `stock_vial_count`      VARCHAR(45)    NULL, 
    `stock_vial_location`   VARCHAR(45)    NULL, 
    `soboon_vial_count`     VARCHAR(45)    NULL, 
    `location`              TEXT           NULL, 
    `manager`               VARCHAR(45)    NULL, 
    `data_path`             TEXT           NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE shrna
    ADD CONSTRAINT FK_shrna_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE sirna
(
    `WMB_NO`                VARCHAR(45)    NOT NULL, 
    `ID`                    INT            NOT NULL    AUTO_INCREMENT, 
    `name`                  VARCHAR(45)    NULL, 
    `target_gene_name`      VARCHAR(45)    NULL, 
    `species`               VARCHAR(45)    NULL, 
    `type`                  VARCHAR(45)    NULL, 
    `sequence`              TEXT           NULL, 
    `manufacturer`          VARCHAR(45)    NULL, 
    `stock_vial_ipgo_date`  DATE           NULL, 
    `stock_vial_count`      VARCHAR(45)    NULL, 
    `stock_vial_location`   VARCHAR(45)    NULL, 
    `soboon_vial_count`     VARCHAR(45)    NULL, 
    `location`              TEXT           NULL, 
    `manager`               VARCHAR(45)    NULL, 
    `issue`                 VARCHAR(45)    NULL, 
    `data_path`             TEXT           NULL, 
    PRIMARY KEY (WMB_NO, ID)
);

ALTER TABLE sirna
    ADD CONSTRAINT FK_sirna_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE pdx_result
(
    `ID`                 INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`          VARCHAR(45)    NOT NULL, 
    `WMB_NO`             VARCHAR(45)    NULL, 
    `FF_ID`              VARCHAR(45)    NULL, 
    `gumche`             VARCHAR(45)    NULL, 
    `tissue_site`        VARCHAR(45)    NULL, 
    `cancer`             VARCHAR(45)    NULL, 
    `tumor_grade`        VARCHAR(45)    NULL, 
    `tumor_stage`        VARCHAR(45)    NULL, 
    `treatment_history`  VARCHAR(45)    NULL, 
    `drug_resistant`     VARCHAR(45)    NULL, 
    `ex_image_path`      TEXT           NULL, 
    `ex_tissue_site`     TEXT           NULL, 
    `ex_passage`         TEXT           NULL, 
    `ex_issue`           TEXT           NULL, 
    `ex_content`         TEXT           NULL, 
    `ex_result`          TEXT           NULL, 
    `ex_soohangja`       DATETIME       NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE pdx_result
    ADD CONSTRAINT FK_pdx_result_SAMPLE_ID_pdx_SAMPLE_ID FOREIGN KEY (SAMPLE_ID)
        REFERENCES pdx (SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE pdx_result
    ADD CONSTRAINT FK_pdx_result_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE blood_result
(
    `ID`             INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`      VARCHAR(45)    NOT NULL, 
    `WMB_NO`         VARCHAR(45)    NULL, 
    `gumche`         VARCHAR(45)    NULL, 
    `method_type`    VARCHAR(45)    NULL, 
    `ex_image_path`  TEXT           NULL, 
    `ex_material`    TEXT           NULL, 
    `ex_method`      TEXT           NULL, 
    `ex_condition`   TEXT           NULL, 
    `ex_content`     TEXT           NULL, 
    `ex_result`      TEXT           NULL, 
    `ex_soohangja`   TEXT           NULL, 
    `ex_date`        DATETIME       NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE blood_result
    ADD CONSTRAINT FK_blood_result_SAMPLE_ID_blood_SAMPLE_ID FOREIGN KEY (SAMPLE_ID)
        REFERENCES blood (SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE blood_result
    ADD CONSTRAINT FK_blood_result_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ffpe_result
(
    `ID`                   INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`            VARCHAR(45)    NOT NULL, 
    `WMB_NO`               VARCHAR(45)    NULL, 
    `FF_ID`                VARCHAR(45)    NULL, 
    `tissue_site`          VARCHAR(45)    NULL, 
    `cancer`               VARCHAR(45)    NULL, 
    `tumor_grade`          VARCHAR(45)    NULL, 
    `tumor_stage`          VARCHAR(45)    NULL, 
    `ex_image_path`        TEXT           NULL, 
    `ex_antibody_density`  TEXT           NULL, 
    `ex_content`           TEXT           NULL, 
    `ex_score`             VARCHAR(45)    NULL, 
    `ex_result`            TEXT           NULL, 
    `ex_soohangja`         TEXT           NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ffpe_result
    ADD CONSTRAINT FK_ffpe_result_SAMPLE_ID_ffpe_SAMPLE_ID FOREIGN KEY (SAMPLE_ID)
        REFERENCES ffpe (SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ffpe_result
    ADD CONSTRAINT FK_ffpe_result_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ff_result
(
    `ID`                 INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`          VARCHAR(45)    NOT NULL, 
    `WMB_NO`             VARCHAR(45)    NULL, 
    `FF_ID`              VARCHAR(45)    NULL, 
    `tissue_site`        VARCHAR(45)    NULL, 
    `tissue`             VARCHAR(45)    NULL, 
    `tumor_grade`        VARCHAR(45)    NULL, 
    `tumor_stage`        VARCHAR(45)    NULL, 
    `trm_priori`         VARCHAR(45)    NULL, 
    `trm_drug_response`  VARCHAR(45)    NULL, 
    `ihc_pron_rokone`    VARCHAR(45)    NULL, 
    `ihc_pron_wmbio`     VARCHAR(45)    NULL, 
    `ihc_pron_score`     VARCHAR(45)    NULL, 
    `ihc_pron_path`      TEXT           NULL, 
    `ihc_ron_rokone`     VARCHAR(45)    NULL, 
    `ihc_ron_wmbio`      VARCHAR(45)    NULL, 
    `ihc_ron_score`      VARCHAR(45)    NULL, 
    `ihc_ron_path`       TEXT           NULL, 
    `ihc_msp_rokone`     VARCHAR(45)    NULL, 
    `ihc_msp_wmbio`      VARCHAR(45)    NULL, 
    `ihc_msp_score`      VARCHAR(45)    NULL, 
    `ihc_msp_path`       TEXT           NULL, 
    `ihc_cmyc_rokone`    VARCHAR(45)    NULL, 
    `ihc_cmyc_wmbio`     VARCHAR(45)    NULL, 
    `ihc_cmyc_score`     VARCHAR(45)    NULL, 
    `ihc_cmyc_path`      TEXT           NULL, 
    `ihc_pdl1_rokone`    VARCHAR(45)    NULL, 
    `ihc_pdl1_wmbio`     VARCHAR(45)    NULL, 
    `ihc_pdl1_score`     VARCHAR(45)    NULL, 
    `ihc_pdl1_path`      TEXT           NULL, 
    `ihc_er_rokone`      VARCHAR(45)    NULL, 
    `ihc_er_wmbio`       VARCHAR(45)    NULL, 
    `ihc_er_score`       VARCHAR(45)    NULL, 
    `ihc_er_path`        TEXT           NULL, 
    `ihc_pr_rokone`      VARCHAR(45)    NULL, 
    `ihc_pr_wmbio`       VARCHAR(45)    NULL, 
    `ihc_pr_score`       VARCHAR(45)    NULL, 
    `ihc_pr_path`        TEXT           NULL, 
    `ihc_her2_rokone`    VARCHAR(45)    NULL, 
    `ihc_her2_wmbio`     VARCHAR(45)    NULL, 
    `ihc_her2_score`     VARCHAR(45)    NULL, 
    `ihc_her2_path`      TEXT           NULL, 
    `ihc_ki67_rokone`    VARCHAR(45)    NULL, 
    `ihc_ki67_wmbio`     VARCHAR(45)    NULL, 
    `ihc_ki67_score`     VARCHAR(45)    NULL, 
    `ihc_ki67_path`      TEXT           NULL, 
    `ihc_p53_rokone`     VARCHAR(45)    NULL, 
    `ihc_p53_wmbio`      VARCHAR(45)    NULL, 
    `ihc_p53_score`      VARCHAR(45)    NULL, 
    `ihc_p53_path`       TEXT           NULL, 
    `ihc_mdm2_rokone`    VARCHAR(45)    NULL, 
    `ihc_mdm2_wmbio`     VARCHAR(45)    NULL, 
    `ihc_mdm2_score`     VARCHAR(45)    NULL, 
    `ihc_mdm2_path`      TEXT           NULL, 
    `ihc_p34_rokone`     VARCHAR(45)    NULL, 
    `ihc_p34_wmbio`      VARCHAR(45)    NULL, 
    `ihc_p34_score`      VARCHAR(45)    NULL, 
    `ihc_p34_path`       TEXT           NULL, 
    `ihc_pd1_rokone`     VARCHAR(45)    NULL, 
    `ihc_pd1_wmbio`      VARCHAR(45)    NULL, 
    `ihc_pd1_score`      VARCHAR(45)    NULL, 
    `ihc_pd1_path`       TEXT           NULL, 
    `ihc_cd48_rokone`    VARCHAR(45)    NULL, 
    `ihc_cd48_wmbio`     VARCHAR(45)    NULL, 
    `ihc_cd48_score`     VARCHAR(45)    NULL, 
    `ihc_cd48_path`      TEXT           NULL, 
    `ihc_igsf1_rokone`   VARCHAR(45)    NULL, 
    `ihc_igsf1_wmbio`    VARCHAR(45)    NULL, 
    `ihc_igsf1_score`    VARCHAR(45)    NULL, 
    `ihc_igsf1_path`     TEXT           NULL, 
    `rtpcr_ron`          VARCHAR(45)    NULL, 
    `rtpcr_kras`         VARCHAR(45)    NULL, 
    `rtpcr_braf`         VARCHAR(45)    NULL, 
    `rtpcr_egfr`         VARCHAR(45)    NULL, 
    `rtpcr_igsf1`        VARCHAR(45)    NULL, 
    `wb_ron`             VARCHAR(45)    NULL, 
    `wb_braf`            VARCHAR(45)    NULL, 
    `wb_egfr`            VARCHAR(45)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ff_result
    ADD CONSTRAINT FK_ff_result_SAMPLE_ID_ff_SAMPLE_ID FOREIGN KEY (SAMPLE_ID)
        REFERENCES ff (SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ff_result
    ADD CONSTRAINT FK_ff_result_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;