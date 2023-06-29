CREATE TABLE
  Personas (
    id int IDENTITY(1, 1) NOT NULL,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    dni bigint NOT NULL,
    fecha_nac datetime NOT NULL,
    created_at datetime NOT NULL DEFAULT (sysutcdatetime()),
  )
ALTER TABLE
  Personas
ADD
  CONSTRAINT PK__Personas__3213E83F8DD3701C PRIMARY KEY (id)
  
INSERT INTO Personas (nombre, apellido, dni, fecha_nac) VALUES 
('Persona1', 'Apellido1', '11111111', '1981-01-01 00:00:00'),
('Persona2', 'Apellido2', '22222222', '1982-01-01 00:00:00'),
('Persona3', 'Apellido3', '33333333', '1983-01-01 00:00:00'),
('Persona4', 'Apellido4', '44444444', '1984-01-01 00:00:00'),
('Persona5', 'Apellido5', '55555555', '1985-01-01 00:00:00'),
('Persona6', 'Apellido6', '66666666', '1986-01-01 00:00:00'),
('Persona7', 'Apellido7', '77777777', '1987-01-01 00:00:00'),
('Persona8', 'Apellido8', '88888888', '1988-01-01 00:00:00');
