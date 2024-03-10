Operaciones con **Bases de datos**:
	- Crear base de datos: `CREATE DATABASE empleados;`
	- Borrar una base de datos: `DROP DATABASE empleados;`

Operaciones con **Tablas**:
	- Crear tablas: `CREATE TABLE IF NOT EXISTS empleados(...);`
	- Borrar tablas: `DROP TABLE IF EXISTS employees;`
	- Cambiar nombre de una tabla:  `ALTER TABLE IF EXISTS empleados RENAME TO empleados_2`
	- Agregar columnas a una tabla: `ALTER TABLE empleados ADD COLUMN email VARCHAR(255)`
	- Borrar columnas de una tabla: `ALTER TABLE empleados DROP COLUMN IF EXISTS salary;`

Tipos de datos en **Tablas**:
**INT**: Se utiliza para almacenar números enteros. Puede ser de tamaño variable, como INT, TINYINT, SMALLINT, MEDIUMINT, BIGINT.
**FLOAT y DOUBLE**: Almacena números enteros decimales. FLOAT se utiliza para números de precisión simple y DOUBLE para números de precisión doble.
**DECIMAL**: Almacena números decimales exactos. `DECIMAL(10, 2)` indicaría un numero con hasta 10 dígitos en total y 2 dígitos después del punto decimal.
**CHAR** y **VARCHAR**: Almacena cadenas de caracteres de longitud. **CHAR** almacena una longitud fija de caracteres y **VARCHAR** almacena una longitud variable de caracteres.
**TEXT**: Almacena cadenas de caracteres de longitud variable. Es útil para almacenas grandes cantidad de texto.
**DATE**, **TIME** y **DATETIME**: Almacenan fechas y/o horas. DATE almacena solo la fecha, TIME almacena solo la hora y DATETIME almacena tanto la fecha como la hora.
**BOOLEAN**: Almacena valores booleanos(TRUE o FALSE). Internamente,  generalmente se almacena como 1 o 0.
**ENUM**: Almacena una lista de valores permitidos. Solo se puede seleccionar uno de los valores de la lista.
**SET**: Es similar a ENUM pero permite seleccionar múltiples valores de la lista.
**BLOB**: Almacena datos binarios grandes, como imágenes o archivos.
**JSON**: Almacena datos en formato JSON.}

#### ***EJEMPLO DE TABLA CON LOS  DATOS ANTERIORES:***

`CREATE TABLE empleados (`
    `id INT AUTO_INCREMENT PRIMARY KEY,`
    `nombre VARCHAR(50),`
    `apellido VARCHAR(50),`
    `edad INT,`
    `salario DECIMAL(10,2),`
    `fecha_contratacion DATE,`
    `hora_entrada TIME,`
    `casado BOOLEAN,`
    `genero ENUM('M', 'F'),`
    `departamento VARCHAR(50),`
    `foto_perfil BLOB,`
    `informacion_adicional JSON`
`);
