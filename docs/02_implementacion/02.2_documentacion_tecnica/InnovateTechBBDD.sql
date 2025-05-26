-- Eliminar tablas si existen (evita errores)
DROP TABLE IF EXISTS EVALUACION CASCADE;
DROP TABLE IF EXISTS ASISTENCIA CASCADE;
DROP TABLE IF EXISTS HISTORIAL_SALARIOS CASCADE;
DROP TABLE IF EXISTS EMPLEADO_PROYECTO CASCADE;
DROP TABLE IF EXISTS PROYECTO CASCADE;
DROP TABLE IF EXISTS EMPLEADO CASCADE;
DROP TABLE IF EXISTS GRUPO_NIVEL CASCADE;
DROP TABLE IF EXISTS DEPARTAMENTO CASCADE;

-- ############# CREACIÓN DE TABLAS #############
CREATE TABLE DEPARTAMENTO (
    Codigo VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15)
);

CREATE TABLE GRUPO_NIVEL (
    Codigo VARCHAR(5) PRIMARY KEY,
    Salario_Base_Anual DECIMAL(10,2),
    Salario_Base_Mensual DECIMAL(10,2),
    Periodo_Prueba_Meses INT,
    Dias_Vacaciones INT
);

CREATE TABLE EMPLEADO (
    DNI VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido1 VARCHAR(50) NOT NULL,
    Apellido2 VARCHAR(50),
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Correo VARCHAR(100),
    Fecha_contratación DATE NOT NULL,
    Codigo_Departamento VARCHAR(10),
    Codigo_Grupo_Nivel VARCHAR(5),
    FOREIGN KEY (Codigo_Departamento) REFERENCES DEPARTAMENTO(Codigo),
    FOREIGN KEY (Codigo_Grupo_Nivel) REFERENCES GRUPO_NIVEL(Codigo)
);

CREATE TABLE PROYECTO (
    Id SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Fecha_Inicio DATE,
    Fecha_Fin DATE,
    Codigo_Departamento VARCHAR(10),
    FOREIGN KEY (Codigo_Departamento) REFERENCES DEPARTAMENTO(Codigo)
);

CREATE TABLE EMPLEADO_PROYECTO (
    DNI_Empleado VARCHAR(10),
    Id_Proyecto INT,
    Rol VARCHAR(50),
    Fecha_Asignacion DATE,
    PRIMARY KEY (DNI_Empleado, Id_Proyecto),
    FOREIGN KEY (DNI_Empleado) REFERENCES EMPLEADO(DNI),
    FOREIGN KEY (Id_Proyecto) REFERENCES PROYECTO(Id)
);

CREATE TABLE HISTORIAL_SALARIOS (
    DNI_Empleado VARCHAR(10),
    Fecha DATE,
    Salario DECIMAL(10,2),
    Motivo VARCHAR(100),
    FOREIGN KEY (DNI_Empleado) REFERENCES EMPLEADO(DNI)
);

CREATE TABLE ASISTENCIA (
    Id SERIAL PRIMARY KEY,
    DNI_Empleado VARCHAR(10),
    Fecha DATE,
    Tipo VARCHAR(20), -- 'Presente', 'Vacaciones', 'Baja', etc.
    Comentario TEXT,
    FOREIGN KEY (DNI_Empleado) REFERENCES EMPLEADO(DNI)
);

CREATE TABLE EVALUACION (
    Id SERIAL PRIMARY KEY,
    DNI_Empleado VARCHAR(10),
    Fecha DATE,
    Evaluador VARCHAR(100),
    Nota DECIMAL(3,2),
    Comentarios TEXT,
    FOREIGN KEY (DNI_Empleado) REFERENCES EMPLEADO(DNI)
);

-- ############# INSERTS DE DATOS #############
-- Departamentos
INSERT INTO DEPARTAMENTO (Codigo, Nombre, Telefono) VALUES
('IT', 'Tecnologies de la Informació', '934567890'),
('CONS', 'Consultoria', '934567891'),
('MKT', 'Estudis de Mercat', '934567892'),
('ADM', 'Administració', '934567893'),
('DIR', 'Direcció', '934567894');

-- Grupos de nivel
INSERT INTO GRUPO_NIVEL (Codigo, Salario_Base_Anual, Salario_Base_Mensual, Periodo_Prueba_Meses, Dias_Vacaciones) VALUES
-- Grup Professional I (Tècnics)
('I-1', 26500.00, 2208.33, 6, 23),
('I-2', 29000.00, 2416.67, 6, 23),
('I-3', 32000.00, 2666.67, 6, 23),
-- Grup Professional II (Analistes/Supervisors)
('II-1', 35500.00, 2958.33, 6, 23),
('II-2', 39000.00, 3250.00, 6, 23),
('II-3', 43000.00, 3583.33, 6, 23),
-- Grup Professional III (Consultors/Managers)
('III-1', 47000.00, 3916.67, 6, 23),
('III-2', 51500.00, 4291.67, 6, 23),
('III-3', 56500.00, 4708.33, 6, 23),
-- Grup Professional IV (Direcció)
('IV-1', 62000.00, 5166.67, 6, 30),
('IV-2', 68000.00, 5666.67, 6, 30),
('IV-3', 75000.00, 6250.00, 6, 30);

-- Empleados
INSERT INTO EMPLEADO (DNI, Nombre, Apellido1, Apellido2, Direccion, Telefono, Correo, Fecha_contratación, Codigo_Departamento, Codigo_Grupo_Nivel) VALUES
-- Grup I
('12345678A', 'Anna', 'Garcia', 'Martí', 'C/Balmes 123, Barcelona', '600111222', 'anna.garcia@empresa.com', '2025-01-15', 'IT', 'I-1'),
('23456789B', 'Pere', 'López', 'Soler', 'Av. Diagonal 456, Barcelona', '600222333', 'pere.lopez@empresa.com', '2024-06-10', 'IT', 'I-2'),
('34567890C', 'Marta', 'Sánchez', NULL, 'C/Muntaner 789, Barcelona', '600333444', 'marta.sanchez@empresa.com', '2024-03-01', 'IT', 'I-3'),
-- Grup II
('45678901D', 'Jordi', 'Martínez', 'Gómez', 'Pg. Gràcia 101, Barcelona', '600444555', 'jordi.martinez@empresa.com', '2023-11-15', 'CONS', 'II-1'),
('56789012E', 'Laura', 'Fernández', 'Pérez', 'C/Aragó 202, Barcelona', '600555666', 'laura.fernandez@empresa.com', '2023-09-20', 'CONS', 'II-2'),
('67890123F', 'David', 'Rodríguez', 'Gutiérrez', 'Av. Meridiana 303, Barcelona', '600666777', 'david.rodriguez@empresa.com', '2023-05-05', 'CONS', 'II-3'),
-- Grup III
('78901234G', 'Sara', 'Gómez', 'Jiménez', 'C/València 404, Barcelona', '600777888', 'sara.gomez@empresa.com', '2022-10-12', 'MKT', 'III-1'),
('89012345H', 'Marc', 'Díaz', 'Ruiz', 'C/Provença 505, Barcelona', '600888999', 'marc.diaz@empresa.com', '2022-07-18', 'MKT', 'III-2'),
('90123456I', 'Elena', 'Hernández', 'Moreno', 'C/Rosselló 606, Barcelona', '600999000', 'elena.hernandez@empresa.com', '2022-02-22', 'MKT', 'III-3'),
-- Grup IV
('01234567J', 'Carles', 'Vázquez', 'Serra', 'Av. Tibidabo 707, Barcelona', '601000111', 'carles.vazquez@empresa.com', '2021-09-30', 'DIR', 'IV-1'),
('11223344K', 'Montserrat', 'Torres', 'Ortega', 'C/Mallorca 808, Barcelona', '601111222', 'montserrat.torres@empresa.com', '2020-12-05', 'DIR', 'IV-2'),
('22334455L', 'Albert', 'Castro', 'Méndez', 'Av. Sarrià 909, Barcelona', '601222333', 'albert.castro@empresa.com', '2020-04-15', 'DIR', 'IV-3');

-- Proyectos
INSERT INTO PROYECTO (Nombre, Descripcion, Fecha_Inicio, Fecha_Fin, Codigo_Departamento) VALUES
('Migració a la núvol', 'Migració de sistemes locals a AWS', '2025-02-01', '2025-08-31', 'IT'),
('ERP Nou', 'Implementació nou sistema ERP', '2025-03-15', NULL, 'CONS'),
('Estudi de Mercat 2025', 'Anàlisi de tendències del sector', '2025-01-10', '2025-06-30', 'MKT'),
('Transformació Digital', 'Projecte estratègic de transformació', '2024-11-01', '2025-12-31', 'DIR'),
('Portal Client', 'Desenvolupament portal web clients', '2025-04-01', '2025-09-15', 'IT');

-- Asignaciones a proyectos
INSERT INTO EMPLEADO_PROYECTO (DNI_Empleado, Id_Proyecto, Rol, Fecha_Asignacion) VALUES
('12345678A', 1, 'Tècnic de Sistemes', '2025-01-20'),
('23456789B', 1, 'Administrador Cloud', '2025-01-20'),
('45678901D', 2, 'Consultor Funcional', '2025-03-01'),
('56789012E', 2, 'Líder d''Equip', '2025-03-01'),
('78901234G', 3, 'Analista de Mercat', '2025-01-05'),
('89012345H', 3, 'Director d''Estudi', '2025-01-05'),
('01234567J', 4, 'Director de Projecte', '2024-10-15'),
('11223344K', 4, 'Sponsor Executiu', '2024-10-15');

-- Historial salarial
INSERT INTO HISTORIAL_SALARIOS (DNI_Empleado, Fecha, Salario, Motivo) VALUES
('12345678A', '2025-01-15', 2208.33, 'Contractació inicial'),
('23456789B', '2024-06-10', 2416.67, 'Contractació inicial'),
('23456789B', '2025-01-01', 2500.00, 'Ajust salarial'),
('34567890C', '2024-03-01', 2666.67, 'Contractació inicial'),
('45678901D', '2023-11-15', 2958.33, 'Contractació inicial'),
('56789012E', '2023-09-20', 3250.00, 'Contractació inicial'),
('67890123F', '2023-05-05', 3583.33, 'Contractació inicial'),
('78901234G', '2022-10-12', 3916.67, 'Contractació inicial'),
('89012345H', '2022-07-18', 4291.67, 'Contractació inicial'),
('90123456I', '2022-02-22', 4708.33, 'Contractació inicial'),
('01234567J', '2021-09-30', 5166.67, 'Contractació inicial'),
('11223344K', '2020-12-05', 5666.67, 'Contractació inicial'),
('22334455L', '2020-04-15', 6250.00, 'Contractació inicial');

-- Asistencias
INSERT INTO ASISTENCIA (DNI_Empleado, Fecha, Tipo, Comentario) VALUES
('12345678A', '2025-04-01', 'Presente', NULL),
('12345678A', '2025-04-02', 'Presente', NULL),
('12345678A', '2025-04-03', 'Presente', 'Reunió amb client'),
('12345678A', '2025-04-04', 'Presente', NULL),
('12345678A', '2025-04-05', 'Vacaciones', 'Pont festiu'),
('23456789B', '2025-04-01', 'Presente', NULL),
('23456789B', '2025-04-02', 'Baja', 'Baixa mèdica'),
('23456789B', '2025-04-03', 'Baja', 'Baixa mèdica'),
('34567890C', '2025-04-01', 'Presente', 'Teletreball'),
('45678901D', '2025-04-01', 'Presente', NULL);

-- Evaluaciones
INSERT INTO EVALUACION (DNI_Empleado, Fecha, Evaluador, Nota, Comentarios) VALUES
('12345678A', '2024-12-15', 'Director IT', 7.5, 'Bona capacitat tècnica'),
('23456789B', '2024-12-15', 'Director IT', 8.2, 'Excel·lent treball en equip'),
('34567890C', '2024-12-20', 'Director IT', 8.8, 'Altament proactiu'),
('45678901D', '2024-12-10', 'Director Consultoria', 9.0, 'Gran capacitat analítica'),
('56789012E', '2024-12-10', 'Director Consultoria', 8.5, 'Bons resultats en projectes complexos'),
('67890123F', '2024-12-10', 'Director Consultoria', 9.2, 'Lideratge natural'),
('78901234G', '2024-12-05', 'Director MKT', 8.7, 'Creativitat destacada'),
('89012345H', '2024-12-05', 'Director MKT', 9.1, 'Estratègia innovadora'),
('90123456I', '2024-12-05', 'Director MKT', 8.9, 'Resultats excel·lents'),
('01234567J', '2024-12-01', 'CEO', 9.5, 'Gestió excepcional'),
('11223344K', '2024-12-01', 'CEO', 9.7, 'Visió estratègica'),
('22334455L', '2024-12-01', 'CEO', 9.8, 'Lideratge inspirador');
