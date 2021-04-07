USE test;

-- CREATE TABLES --

-- wmb_no Table Create SQL
CREATE TABLE wmb_no
(
    `ID`      INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`  VARCHAR(300)    NOT NULL, 
    PRIMARY KEY (ID, WMB_NO)
);


-- wmb_no Table Create SQL
CREATE TABLE sample
(
    `WMB_NO`     VARCHAR(300)    NOT NULL, 
    `SAMPLE_ID`  VARCHAR(300)    NOT NULL, 
    PRIMARY KEY (WMB_NO, SAMPLE_ID)
);

ALTER TABLE sample
    ADD CONSTRAINT FK_sample_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE pdx
(
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`        VARCHAR(300)    NOT NULL, 
    `WMB_NO`           VARCHAR(300)    NULL, 
    `FF_ID`            VARCHAR(300)    NULL, 
    `gumche`           VARCHAR(300)    NULL, 
    `gooip_gooknae`    VARCHAR(300)    NULL, 
    `gooip_gookoe`     VARCHAR(300)    NULL, 
    `ethnicity`        VARCHAR(300)    NULL, 
    `tissue`           VARCHAR(300)    NULL, 
    `disease`          VARCHAR(300)    NULL, 
    `ipgo_hyungtae`    VARCHAR(300)    NULL, 
    `insooja`          VARCHAR(300)    NULL, 
    `ipgo_date`        DATETIME       NULL, 
    `location`         VARCHAR(300)    NULL, 
    `tumor_grade`      VARCHAR(300)    NULL, 
    `tumor_stage`      VARCHAR(300)    NULL, 
    `patient_sex`      VARCHAR(300)    NULL, 
    `patient_age`      VARCHAR(300)    NULL, 
    `patient_height`   VARCHAR(300)    NULL, 
    `patient_weight`   VARCHAR(300)    NULL, 
    `patient_smk`      VARCHAR(300)    NULL, 
    `patient_smk_day`  VARCHAR(300)    NULL, 
    `patient_smk_dur`  VARCHAR(300)    NULL, 
    `patient_alc`      VARCHAR(300)    NULL, 
    `patient_alc_day`  VARCHAR(300)    NULL, 
    `patient_alc_dur`  VARCHAR(300)    NULL, 
    `trm_priori`       VARCHAR(300)    NULL, 
    `trm_drug`         VARCHAR(300)    NULL, 
    `passage`          VARCHAR(300)    NULL, 
    `media`            VARCHAR(300)    NULL, 
    `isik_date`        DATETIME       NULL, 
    `isik_dur`         VARCHAR(300)    NULL, 
    `diagnosis`        VARCHAR(300)    NULL, 
    `animal_type`      VARCHAR(300)    NULL, 
    `animal_goomae`    VARCHAR(300)    NULL, 
    `char_resistance`  VARCHAR(300)    NULL, 
    `char_mutation`    VARCHAR(300)    NULL, 
    `char_ron_geno`    VARCHAR(300)    NULL, 
    `char_igsf1_geno`  VARCHAR(300)    NULL, 
    `char_p34_geno`    VARCHAR(300)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE pdx
    ADD CONSTRAINT FK_pdx_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ffpe
(
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`        VARCHAR(300)    NOT NULL, 
    `WMB_NO`           VARCHAR(300)    NULL, 
    `FF_ID`            VARCHAR(300)    NULL, 
    `gooip_gooknae`    VARCHAR(300)    NULL, 
    `gooip_gookoe`     VARCHAR(300)    NULL, 
    `ethnicity`        VARCHAR(300)    NULL, 
    `cancer`           VARCHAR(300)    NULL, 
    `ipgo_hyungtae`    VARCHAR(300)    NULL, 
    `insooja`          VARCHAR(300)    NULL, 
    `ipgo_date`        VARCHAR(300)    NULL, 
    `location`         VARCHAR(300)    NULL, 
    `cancer_type`      VARCHAR(300)    NULL, 
    `tumor_grade`      VARCHAR(300)    NULL, 
    `tumor_stage`      VARCHAR(300)    NULL, 
    `patient_sex`      VARCHAR(300)    NULL, 
    `patient_age`      VARCHAR(300)    NULL, 
    `patient_height`   VARCHAR(300)    NULL, 
    `patient_weight`   VARCHAR(300)    NULL, 
    `patient_smk`      VARCHAR(300)    NULL, 
    `patient_smk_day`  VARCHAR(300)    NULL, 
    `patient_smk_dur`  VARCHAR(300)    NULL, 
    `patient_alc`      VARCHAR(300)    NULL, 
    `patient_alc_day`  VARCHAR(300)    NULL, 
    `patient_alc_dur`  VARCHAR(300)    NULL, 
    `ihc_p53`          VARCHAR(300)    NULL, 
    `ihc_p34`          VARCHAR(300)    NULL, 
    `ihc_mdm2`         VARCHAR(300)    NULL, 
    `ihc_pron`         VARCHAR(300)    NULL, 
    `ihc_ron`          VARCHAR(300)    NULL, 
    `ihc_msp`          VARCHAR(300)    NULL, 
    `ihc_cmyc`         VARCHAR(300)    NULL, 
    `ihc_pdl1`         VARCHAR(300)    NULL, 
    `ihc_igsf1`        VARCHAR(300)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ffpe
    ADD CONSTRAINT FK_ffpe_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE blood
(
    `ID`                           INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`                    VARCHAR(300)    NOT NULL, 
    `WMB_NO`                       VARCHAR(300)    NULL, 
    `gumche`                       VARCHAR(300)    NULL, 
    `gooip_gooknae`                VARCHAR(300)    NULL, 
    `gooip_gookoe`                 VARCHAR(300)    NULL, 
    `ethnicity`                    VARCHAR(300)    NULL, 
    `tissue`                       VARCHAR(300)    NULL, 
    `ipgo_hyungtae`                VARCHAR(300)    NULL, 
    `insooja`                      VARCHAR(300)    NULL, 
    `ipgo_date`                    DATETIME       NULL, 
    `location`                     VARCHAR(300)    NULL, 
    `cancer`                       VARCHAR(300)    NULL, 
    `tumor_grade`                  VARCHAR(300)    NULL, 
    `tumor_stage`                  VARCHAR(300)    NULL, 
    `patient_sex`                  VARCHAR(300)    NULL, 
    `patient_age`                  VARCHAR(300)    NULL, 
    `patient_height`               VARCHAR(300)    NULL, 
    `patient_weight`               VARCHAR(300)    NULL, 
    `patient_smk`                  VARCHAR(300)    NULL, 
    `patient_smk_day`              VARCHAR(300)    NULL, 
    `patient_smk_dur`              VARCHAR(300)    NULL, 
    `patient_alc`                  VARCHAR(300)    NULL, 
    `patient_alc_day`              VARCHAR(300)    NULL, 
    `patient_alc_dur`              VARCHAR(300)    NULL, 
    `trm_priori`                   VARCHAR(300)    NULL, 
    `trm_erbitux_respone`          VARCHAR(300)    NULL, 
    `trm_erbitux_nonresponse`      VARCHAR(300)    NULL, 
    `sigelcell_date`               DATETIME       NULL, 
    `sigelcell_soohangja`          VARCHAR(300)    NULL, 
    `ex_cellpopulation_info`       VARCHAR(300)    NULL, 
    `ex_cellpopulation_soohangja`  VARCHAR(300)    NULL, 
    `ex_cytokine_info`             VARCHAR(300)    NULL, 
    `ex_cytokine_soohangja`        VARCHAR(300)    NULL, 
    `ex_invitro_info`              VARCHAR(300)    NULL, 
    `ex_invitro_soohangja`         VARCHAR(300)    NULL, 
    `ex_tested_drug_info`          VARCHAR(300)    NULL, 
    `ex_tested_drug_soohangja`     VARCHAR(300)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE blood
    ADD CONSTRAINT FK_blood_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ff
(
    `ID`                   INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`            VARCHAR(300)    NOT NULL, 
    `WMB_NO`               VARCHAR(300)    NULL, 
    `FF_ID`                VARCHAR(300)    NULL, 
    `gooip_gooknae`        VARCHAR(300)    NULL, 
    `gooip_gookoe`         VARCHAR(300)    NULL, 
    `ethnicity`            VARCHAR(300)    NULL, 
    `tissue`               VARCHAR(300)    NULL, 
    `insooja`              VARCHAR(300)    NULL, 
    `ipgo_date`            DATETIME       NULL, 
    `tumor_grade`          VARCHAR(300)    NULL, 
    `tumor_stage`          VARCHAR(300)    NULL, 
    `tumor_content`        VARCHAR(300)    NULL, 
    `tumor_size`           VARCHAR(300)    NULL, 
    `tumor_weight`         VARCHAR(300)    NULL, 
    `jozik_date`           DATETIME       NULL, 
    `jozik_count`          VARCHAR(300)    NULL, 
    `patient_sex`          VARCHAR(300)    NULL, 
    `patient_age`          VARCHAR(300)    NULL, 
    `patient_height`       VARCHAR(300)    NULL, 
    `patient_weight`       VARCHAR(300)    NULL, 
    `patient_sugery_date`  VARCHAR(300)    NULL, 
    `patient_metastases`   VARCHAR(300)    NULL, 
    `trm_priori`           VARCHAR(300)    NULL, 
    `trm_drug_response`    VARCHAR(300)    NULL, 
    `diagnosis`            VARCHAR(300)    NULL, 
    `tnm_staging`          VARCHAR(300)    NULL, 
    `msi`                  VARCHAR(300)    NULL, 
    `ihc_p53`              VARCHAR(300)    NULL, 
    `ihc_p34`              VARCHAR(300)    NULL, 
    `ihc_mdm2`             VARCHAR(300)    NULL, 
    `ihc_pron`             VARCHAR(300)    NULL, 
    `ihc_ron`              VARCHAR(300)    NULL, 
    `ihc_msp`              VARCHAR(300)    NULL, 
    `ihc_cmyc`             VARCHAR(300)    NULL, 
    `ihc_pdl1`             VARCHAR(300)    NULL, 
    `ihc_er`               VARCHAR(300)    NULL, 
    `ihc_pr`               VARCHAR(300)    NULL, 
    `ihc_herneu`           VARCHAR(300)    NULL, 
    `ihc_ki67`             VARCHAR(300)    NULL, 
    `rtpcr_ron`            VARCHAR(300)    NULL, 
    `rtpcr_kras`           VARCHAR(300)    NULL, 
    `rtpcr_braf`           VARCHAR(300)    NULL, 
    `rtpcr_egfr`           VARCHAR(300)    NULL, 
    `rtpcr_igsf1`          VARCHAR(300)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ff
    ADD CONSTRAINT FK_ff_WMB_NO_sample_WMB_NO FOREIGN KEY (WMB_NO, SAMPLE_ID)
        REFERENCES sample (WMB_NO, SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE plasmid
(
    `ID`                INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`            VARCHAR(300)    NULL, 
    `insert`            VARCHAR(300)    NULL, 
    `backbone_vector`   VARCHAR(300)    NULL, 
    `tnm_staging`       VARCHAR(300)    NULL, 
    `sequencing_check`  VARCHAR(300)    NULL, 
    `antibiotics`       VARCHAR(300)    NULL, 
    `selection_marker`  VARCHAR(300)    NULL, 
    `map`               VARCHAR(300)           NULL, 
    `ecoli_stock`       VARCHAR(300)    NULL, 
    `dna_stored`        VARCHAR(300)    NULL, 
    `box_no`            VARCHAR(300)    NULL, 
    `manager`           VARCHAR(300)    NULL, 
    `issue`             VARCHAR(300)    NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE plasmid
    ADD CONSTRAINT FK_plasmid_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE ecoli
(
    `ID`               INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`           VARCHAR(300)    NULL, 
    `insert`           VARCHAR(300)    NULL, 
    `backbone_vector`  VARCHAR(300)    NULL, 
    `tag`              VARCHAR(300)    NULL, 
    `box_no`           VARCHAR(300)    NULL, 
    `manager`          VARCHAR(300)    NULL, 
    `issue`            VARCHAR(300)    NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE ecoli
    ADD CONSTRAINT FK_ecoli_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE antibody
(
    `ID`                  INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`              VARCHAR(300)    NULL, 
    `antibody`            VARCHAR(300)    NULL, 
    `cat_no`              VARCHAR(300)    NULL, 
    `lot_no`              VARCHAR(300)    NULL, 
    `conc`                VARCHAR(300)    NULL, 
    `host`                VARCHAR(300)    NULL, 
    `species_reactivity`  VARCHAR(300)    NULL, 
    `application`         VARCHAR(300)    NULL, 
    `used_titer`          VARCHAR(300)    NULL, 
    `blocking_buffer`     VARCHAR(300)    NULL, 
    `protein_size`        VARCHAR(300)    NULL, 
    `vial`                VARCHAR(300)    NULL, 
    `ipgo_date`           DATETIME       NULL, 
    `location`            VARCHAR(300)    NULL, 
    `manager`             VARCHAR(300)    NULL, 
    `manufacturer`        VARCHAR(300)    NULL, 
    `issue`               VARCHAR(300)    NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE antibody
    ADD CONSTRAINT FK_antibody_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE celline
(
    `ID`                                INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`                            VARCHAR(300)    NULL, 
    `cell_line`                         VARCHAR(300)    NULL, 
    `organism`                          VARCHAR(300)    NULL, 
    `disease`                           VARCHAR(300)    NULL, 
    `image_path`                        VARCHAR(300)           NULL, 
    `characterization_chemoresistance`  VARCHAR(300)           NULL, 
    `characterization_mutation`         VARCHAR(300)           NULL, 
    `characterization_ron_genotype`     VARCHAR(300)           NULL, 
    `characterization_igsf1_genotype`   VARCHAR(300)           NULL, 
    `characterization_p34_genotype`     VARCHAR(300)           NULL, 
    `media_condition`                   VARCHAR(300)           NULL, 
    `growth_pattern`                    VARCHAR(300)           NULL, 
    `passage_ratio`                     VARCHAR(300)           NULL, 
    `manufacturer`                      VARCHAR(300)    NULL, 
    `issue`                             VARCHAR(300)    NULL, 
    `rtpcr_ron`                         VARCHAR(300)    NULL, 
    `rtpcr_kras`                        VARCHAR(300)    NULL, 
    `rtpcr_braf`                        VARCHAR(300)    NULL, 
    `rtpcr_egfr`                        VARCHAR(300)    NULL, 
    `wb_ron`                            VARCHAR(300)    NULL, 
    `wb_braf`                           VARCHAR(300)    NULL, 
    `wb_egfr`                           VARCHAR(300)    NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE celline
    ADD CONSTRAINT FK_celline_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE drug
(
    `ID`            INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`        VARCHAR(300)    NULL, 
    `name`          VARCHAR(300)    NULL, 
    `manufacturer`  VARCHAR(300)    NULL, 
    `protein_size`  VARCHAR(300)    NULL, 
    `target`        VARCHAR(300)    NULL, 
    `cat_no`        VARCHAR(300)    NULL, 
    `goomae_date`   DATETIME       NULL, 
    `location`      VARCHAR(300)    NULL, 
    `manager`       VARCHAR(300)    NULL, 
    `issue`         VARCHAR(300)    NULL, 
    `data_path`     VARCHAR(300)           NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE drug
    ADD CONSTRAINT FK_drug_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE protein
(
    `ID`            INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`        VARCHAR(300)    NULL, 
    `reagent_name`  VARCHAR(300)           NULL, 
    `manufacturer`  VARCHAR(300)    NULL, 
    `cat_no`        VARCHAR(300)    NULL, 
    `lot_no`        VARCHAR(300)    NULL, 
    `remain_size`   VARCHAR(300)    NULL, 
    `location`      VARCHAR(300)    NULL, 
    `data_path`     VARCHAR(300)           NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE protein
    ADD CONSTRAINT FK_protein_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE shrna
(
    `ID`                    INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`                VARCHAR(300)    NULL, 
    `density`               VARCHAR(300)    NULL, 
    `sequence`              VARCHAR(300)           NULL, 
    `stock_vial_ipgo_date`  DATETIME       NULL, 
    `stock_vial_count`      VARCHAR(300)    NULL, 
    `stock_vial_location`   VARCHAR(300)    NULL, 
    `soboon_vial_count`     VARCHAR(300)    NULL, 
    `location`              VARCHAR(300)           NULL, 
    `manager`               VARCHAR(300)    NULL, 
    `data_path`             VARCHAR(300)           NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE shrna
    ADD CONSTRAINT FK_shrna_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE sirna
(
    `ID`                    INT            NOT NULL    AUTO_INCREMENT, 
    `WMB_NO`                VARCHAR(300)    NULL, 
    `name`                  VARCHAR(300)    NULL, 
    `target_gene_name`      VARCHAR(300)    NULL, 
    `species`               VARCHAR(300)    NULL, 
    `type`                  VARCHAR(300)    NULL, 
    `sequence`              VARCHAR(300)           NULL, 
    `manufacturer`          VARCHAR(300)    NULL, 
    `stock_vial_ipgo_date`  DATE           NULL, 
    `stock_vial_count`      VARCHAR(300)    NULL, 
    `stock_vial_location`   VARCHAR(300)    NULL, 
    `soboon_vial_count`     VARCHAR(300)    NULL, 
    `location`              VARCHAR(300)           NULL, 
    `manager`               VARCHAR(300)    NULL, 
    `issue`                 VARCHAR(300)    NULL, 
    `data_path`             VARCHAR(300)           NULL, 
    PRIMARY KEY (ID)
);

ALTER TABLE sirna
    ADD CONSTRAINT FK_sirna_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- wmb_no Table Create SQL
CREATE TABLE pdx_result
(
    `ID`                 INT            NOT NULL    AUTO_INCREMENT, 
    `SAMPLE_ID`          VARCHAR(300)    NOT NULL, 
    `WMB_NO`             VARCHAR(300)    NULL, 
    `FF_ID`              VARCHAR(300)    NULL, 
    `gumche`             VARCHAR(300)    NULL, 
    `tissue_site`        VARCHAR(300)    NULL, 
    `cancer`             VARCHAR(300)    NULL, 
    `tumor_grade`        VARCHAR(300)    NULL, 
    `tumor_stage`        VARCHAR(300)    NULL, 
    `treatment_history`  VARCHAR(300)    NULL, 
    `drug_resistant`     VARCHAR(300)    NULL, 
    `ex_image_path`      VARCHAR(300)           NULL, 
    `ex_tissue_site`     VARCHAR(300)           NULL, 
    `ex_passage`         VARCHAR(300)           NULL, 
    `ex_issue`           VARCHAR(300)           NULL, 
    `ex_content`         VARCHAR(300)           NULL, 
    `ex_result`          VARCHAR(300)           NULL, 
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
    `SAMPLE_ID`      VARCHAR(300)    NOT NULL, 
    `WMB_NO`         VARCHAR(300)    NULL, 
    `gumche`         VARCHAR(300)    NULL, 
    `method_type`    VARCHAR(300)    NULL, 
    `ex_image_path`  VARCHAR(300)           NULL, 
    `ex_material`    VARCHAR(300)           NULL, 
    `ex_method`      VARCHAR(300)           NULL, 
    `ex_condition`   VARCHAR(300)           NULL, 
    `ex_content`     VARCHAR(300)           NULL, 
    `ex_result`      VARCHAR(300)           NULL, 
    `ex_soohangja`   VARCHAR(300)           NULL, 
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
    `SAMPLE_ID`            VARCHAR(300)    NOT NULL, 
    `WMB_NO`               VARCHAR(300)    NULL, 
    `FF_ID`                VARCHAR(300)    NULL, 
    `tissue_site`          VARCHAR(300)    NULL, 
    `cancer`               VARCHAR(300)    NULL, 
    `tumor_grade`          VARCHAR(300)    NULL, 
    `tumor_stage`          VARCHAR(300)    NULL, 
    `ex_image_path`        VARCHAR(300)           NULL, 
    `ex_antibody_density`  VARCHAR(300)           NULL, 
    `ex_content`           VARCHAR(300)           NULL, 
    `ex_score`             VARCHAR(300)    NULL, 
    `ex_result`            VARCHAR(300)           NULL, 
    `ex_soohangja`         VARCHAR(300)           NULL, 
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
    `SAMPLE_ID`          VARCHAR(150)    NOT NULL, 
    `WMB_NO`             VARCHAR(150)    NULL, 
    `FF_ID`              VARCHAR(150)    NULL, 
    `tissue_site`        VARCHAR(150)    NULL, 
    `tissue`             VARCHAR(150)    NULL, 
    `tumor_grade`        VARCHAR(150)    NULL, 
    `tumor_stage`        VARCHAR(150)    NULL, 
    `trm_priori`         VARCHAR(150)    NULL, 
    `trm_drug_response`  VARCHAR(150)    NULL, 
    `ihc_pron_rokone`    VARCHAR(150)    NULL, 
    `ihc_pron_wmbio`     VARCHAR(150)    NULL, 
    `ihc_pron_score`     VARCHAR(150)    NULL, 
    `ihc_pron_path`      VARCHAR(150)           NULL, 
    `ihc_ron_rokone`     VARCHAR(150)    NULL, 
    `ihc_ron_wmbio`      VARCHAR(150)    NULL, 
    `ihc_ron_score`      VARCHAR(150)    NULL, 
    `ihc_ron_path`       VARCHAR(150)           NULL, 
    `ihc_msp_rokone`     VARCHAR(150)    NULL, 
    `ihc_msp_wmbio`      VARCHAR(150)    NULL, 
    `ihc_msp_score`      VARCHAR(150)    NULL, 
    `ihc_msp_path`       VARCHAR(150)           NULL, 
    `ihc_cmyc_rokone`    VARCHAR(150)    NULL, 
    `ihc_cmyc_wmbio`     VARCHAR(150)    NULL, 
    `ihc_cmyc_score`     VARCHAR(150)    NULL, 
    `ihc_cmyc_path`      VARCHAR(150)           NULL, 
    `ihc_pdl1_rokone`    VARCHAR(150)    NULL, 
    `ihc_pdl1_wmbio`     VARCHAR(150)    NULL, 
    `ihc_pdl1_score`     VARCHAR(150)    NULL, 
    `ihc_pdl1_path`      VARCHAR(150)           NULL, 
    `ihc_er_rokone`      VARCHAR(150)    NULL, 
    `ihc_er_wmbio`       VARCHAR(150)    NULL, 
    `ihc_er_score`       VARCHAR(150)    NULL, 
    `ihc_er_path`        VARCHAR(150)           NULL, 
    `ihc_pr_rokone`      VARCHAR(150)    NULL, 
    `ihc_pr_wmbio`       VARCHAR(150)    NULL, 
    `ihc_pr_score`       VARCHAR(150)    NULL, 
    `ihc_pr_path`        VARCHAR(150)           NULL, 
    `ihc_her2_rokone`    VARCHAR(150)    NULL, 
    `ihc_her2_wmbio`     VARCHAR(150)    NULL, 
    `ihc_her2_score`     VARCHAR(150)    NULL, 
    `ihc_her2_path`      VARCHAR(150)           NULL, 
    `ihc_ki67_rokone`    VARCHAR(150)    NULL, 
    `ihc_ki67_wmbio`     VARCHAR(150)    NULL, 
    `ihc_ki67_score`     VARCHAR(150)    NULL, 
    `ihc_ki67_path`      VARCHAR(150)           NULL, 
    `ihc_p53_rokone`     VARCHAR(150)    NULL, 
    `ihc_p53_wmbio`      VARCHAR(150)    NULL, 
    `ihc_p53_score`      VARCHAR(150)    NULL, 
    `ihc_p53_path`       VARCHAR(150)           NULL, 
    `ihc_mdm2_rokone`    VARCHAR(150)    NULL, 
    `ihc_mdm2_wmbio`     VARCHAR(150)    NULL, 
    `ihc_mdm2_score`     VARCHAR(150)    NULL, 
    `ihc_mdm2_path`      VARCHAR(150)           NULL, 
    `ihc_p34_rokone`     VARCHAR(150)    NULL, 
    `ihc_p34_wmbio`      VARCHAR(150)    NULL, 
    `ihc_p34_score`      VARCHAR(150)    NULL, 
    `ihc_p34_path`       VARCHAR(150)           NULL, 
    `ihc_pd1_rokone`     VARCHAR(150)    NULL, 
    `ihc_pd1_wmbio`      VARCHAR(150)    NULL, 
    `ihc_pd1_score`      VARCHAR(150)    NULL, 
    `ihc_pd1_path`       VARCHAR(150)           NULL, 
    `ihc_cd48_rokone`    VARCHAR(150)    NULL, 
    `ihc_cd48_wmbio`     VARCHAR(150)    NULL, 
    `ihc_cd48_score`     VARCHAR(150)    NULL, 
    `ihc_cd48_path`      VARCHAR(150)           NULL, 
    `ihc_igsf1_rokone`   VARCHAR(150)    NULL, 
    `ihc_igsf1_wmbio`    VARCHAR(150)    NULL, 
    `ihc_igsf1_score`    VARCHAR(150)    NULL, 
    `ihc_igsf1_path`     VARCHAR(150)           NULL, 
    `rtpcr_ron`          VARCHAR(150)    NULL, 
    `rtpcr_kras`         VARCHAR(150)    NULL, 
    `rtpcr_braf`         VARCHAR(150)    NULL, 
    `rtpcr_egfr`         VARCHAR(150)    NULL, 
    `rtpcr_igsf1`        VARCHAR(150)    NULL, 
    `wb_ron`             VARCHAR(150)    NULL, 
    `wb_braf`            VARCHAR(150)    NULL, 
    `wb_egfr`            VARCHAR(150)    NULL, 
    PRIMARY KEY (ID, SAMPLE_ID)
);

ALTER TABLE ff_result
    ADD CONSTRAINT FK_ff_result_SAMPLE_ID_ff_SAMPLE_ID FOREIGN KEY (SAMPLE_ID)
        REFERENCES ff (SAMPLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ff_result
    ADD CONSTRAINT FK_ff_result_WMB_NO_wmb_no_WMB_NO FOREIGN KEY (WMB_NO)
        REFERENCES wmb_no (WMB_NO) ON DELETE RESTRICT ON UPDATE RESTRICT;


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
