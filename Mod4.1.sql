use laboratorio;

create table VARONES select * from nacimientos where SEXO = "Masculino";

create table MUJERES select * from nacimientos where SEXO = "Femenino";

create table INDETERMINADO select * from nacimientos where SEXO = "Indeterminado";
