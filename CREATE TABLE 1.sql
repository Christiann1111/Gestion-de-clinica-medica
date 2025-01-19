CREATE DATABASE Clinica ;

Use Clinica;

CREATE TABLE Pacientes (
	dni INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	direction VARCHAR(100),
	date_of_birth DATE)

CREATE TABLE Medicos (
	dni INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	direction VARCHAR(100),
	especiality VARCHAR(100))

CREATE TABLE Turnos(
	turno INT IDENTITY(1,1) PRIMARY KEY,
	fecha_turno DATE,
	paciente_dni INT FOREIGN KEY REFERENCES Pacientes(dni),
	medico_dni INT FOREIGN KEY REFERENCES Medicos(dni),)

CREATE TABLE HistoriasClinicas (
	 
	observacion VARCHAR(1500),
	dni_paciente INT FOREIGN KEY REFERENCES Pacientes(dni),
	turno INT FOREIGN KEY REFERENCES  Turnos(turno)
	)

CREATE TABLE Pagos(
	id_pago INT IDENTITY(1,1) PRIMARY KEY,
	fecha_pago DATE,
	paciente_dni INT FOREIGN KEY REFERENCES Pacientes(dni),
	turno INT FOREIGN KEY REFERENCES Turnos(turno)
	 )


	

