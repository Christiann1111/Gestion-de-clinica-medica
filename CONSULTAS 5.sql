USE Clinica;

CREATE VIEW turnos_entre_fechas
AS
SELECT *  FROM Turnos
WHERE fecha_turno BETWEEN '2023-01-01' AND '2024-12-31' AND paciente_dni=40900900;


CREATE VIEW cantidad_pagos_por_paciente
AS
SELECT  count(id_pago) AS cantidad_de_pagos FROM Pagos
WHERE paciente_dni = 40900900;

CREATE VIEW especialidad_medico
AS
SELECT especiality FROM Medicos
WHERE first_name='Gustavo' AND last_name='Garay';

CREATE VIEW clientes_no_pagaron
AS
SELECT * FROM Pagos
WHERE fecha_pago IS NULL;

