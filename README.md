# Gestión de clínica médica

## Explicación:

### Creación de tablas:

Creé distintas tablas, como por ejemplo:  
- **Paciente**  
- **Médico**  
- **Historias Clínicas**  
- **Turnos**  
- **Pagos**  

En estas tablas se almacenarán los datos. Cada una contiene claves primarias y foráneas, con distintos tipos de uniones (de uno a uno o de uno a muchos).

### Procedimientos almacenados:

Creé procedimientos almacenados que gestionan de forma eficiente la carga, actualización y consulta de datos. Por ejemplo, el procedimiento **HistorialDePaciente** imprime el historial del paciente sin necesidad de crear una consulta manual.  
En estos procedimientos se contemplan aspectos como la creación de variables y la correcta asignación de tipos de datos, entre otros detalles importantes.

### Consultas:

Se incluyen consultas que permiten visualizar distintos tipos de información que serán requeridos en el futuro dentro de la misma base de datos. Estas consultas se han convertido en vistas para facilitar su uso.
