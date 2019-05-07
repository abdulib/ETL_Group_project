CREATE TABLE debt (
    id INT NOT NULL AUTO_INCREMENT,
    state_po VARCHAR(2) NOT NULL,
    debt_auto INT,
    pct_auto_delinq DOUBLE
    debt_cc INT
    pct_cc_delinq DOUBLE
	debt_mortg INT
    pct_mortg_delinq DOUBLE
    debt_stloan INT
    pct_stloan_delinq DOUBLE
    PRIMARY KEY (id)
);