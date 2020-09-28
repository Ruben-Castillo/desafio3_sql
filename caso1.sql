CREATE DATABASE caso1;
\c caso1;

CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trabajadores (
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(9) NOT NULL,
    direccion VARCHAR NOT NULL,
    departamento_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

CREATE TABLE liquidaciones (
    id SERIAL,
    trabajador_id INT NOT NULL,
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores(id),
    PRIMARY KEY (id)
);