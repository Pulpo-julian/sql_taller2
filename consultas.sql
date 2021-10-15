CREATE DATABASE hospital;
USE hospital;

-- TABLA PACIENTE
CREATE TABLE tblpaciente
(
    docid VARCHAR(12) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(60) NOT NULL,
    fechaIngreso DATE NOT NULL,
    hora TIME NOT NULL,
    PRIMARY KEY(docid)
);

INSERT INTO tblpaciente
VALUES
('1234567','jose alberto','barrera gomez',CURRENT_DATE(),TIME(NOW()));