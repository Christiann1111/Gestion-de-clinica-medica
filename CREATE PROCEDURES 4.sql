Use Clinica;

CREATE PROCEDURE ActualizarPacientes
	@dni INT ,
	@first_name VARCHAR(50),
	@last_name VARCHAR(50),
	@direction VARCHAR(100),
	@date_of_birth DATE
AS 
BEGIN
UPDATE Pacientes SET dni=@dni,
					 first_name=@first_name,
					 last_name= @last_name,
					 direction= @direction,
					 date_of_birth = @date_of_birth
END;
	
CREATE PROCEDURE ActualizarMedicos
	@dni INT ,
	@first_name VARCHAR(50),
	@last_name VARCHAR(50),
	@direction VARCHAR(100),
	@especiality VARCHAR(100)
AS 
BEGIN
UPDATE Medicos SET dni=@dni,
				   first_name=@first_name,
				   last_name= @last_name,
				   direction= @direction,
				   especiality= @especiality
END;
