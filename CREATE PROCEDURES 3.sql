CREATE PROCEDURE HistorialDePaciente
@dni_paciente INT
AS 
BEGIN
SELECT * FROM HistoriasClinicas
WHERE dni_paciente=@dni_paciente
END;


EXEC HistorialDePaciente 40900900;