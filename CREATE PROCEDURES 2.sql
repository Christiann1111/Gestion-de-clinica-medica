
Use Clinica

CREATE PROCEDURE InsertarPacientes
	@dni INT ,
	@first_name VARCHAR(50),
	@last_name VARCHAR(50),
	@direction VARCHAR(100),
	@date_of_birth DATE
AS 
BEGIN
INSERT INTO Pacientes(dni,first_name ,last_name ,direction ,date_of_birth )
Values(@dni,@first_name ,@last_name ,@direction ,@date_of_birth);
END
	
CREATE PROCEDURE InsertarMedicos
	@dni INT ,
	@first_name VARCHAR(50),
	@last_name VARCHAR(50),
	@direction VARCHAR(100),
	@especiality VARCHAR(100)
AS 
BEGIN
INSERT INTO Medicos(dni,first_name ,last_name ,direction ,especiality )
Values(@dni,@first_name ,@last_name ,@direction ,@especiality);
END

CREATE PROCEDURE InsertarTurnos
	@fecha_turno DATE,
	@paciente_dni INT,
	@medico_dni INT 
AS
BEGIN
	INSERT INTO Turnos(fecha_turno,paciente_dni,medico_dni )
	Values(@fecha_turno, @paciente_dni, @medico_dni);
END


CREATE PROCEDURE InsertarHistoriasClinicas 
	 
	@observacion VARCHAR(1500),
	@dni_paciente INT ,
	@turno INT 
AS
BEGIN
	INSERT INTO HistoriasClinicas(observacion,dni_paciente,turno )
	Values(@observacion, @dni_paciente,@turno);
END



CREATE PROCEDURE InsertarPago
	@fecha_pago DATE,
	@paciente_dni INT,
	@turno INT 
AS 
BEGIN
	INSERT INTO Pagos(fecha_pago,paciente_dni,turno )
	Values(@fecha_pago, @paciente_dni,@turno);
END



EXECUTE InsertarPacientes 40900900,'Maria','Orlanda','Garibaldi 120','2000-12-20';

Execute InsertarMedicos 23409309,'Gustavo','Garay','Av.Libertador 239','Quiropractico';

Execute InsertarTurnos '2024-10-23',40900900,23409309;

Execute InsertarHistoriasClinicas 'Tiene un calambre',40900900,5;

Execute InsertarPago '2024-10-23',40900900,5;




EXECUTE InsertarPacientes 40800800,'Josefina','Lopez','Belgrano 120','2000-10-22';

Execute InsertarMedicos 25410312,'Guillermo','Perez','Av.Madrid 323','Dermatologo';

Execute InsertarTurnos '2022-11-03',40800800,25410312;

Execute InsertarHistoriasClinicas 'Problemas en la piel',40800800,6;

Execute InsertarPago NULL,40800800,6;
	