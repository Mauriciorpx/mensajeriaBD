
CREATE TABLE Clientes (
    Identificacion SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(150),
    Ciudad VARCHAR(100),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

CREATE TABLE Sucursales (
    Identificacion SERIAL PRIMARY KEY,
    Cliente_Id INT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(150),
    Telefono VARCHAR(20),
    FOREIGN KEY (Cliente_Id) REFERENCES Clientes (Identificacion)
);


CREATE TABLE Usuarios (
    Login VARCHAR(50) PRIMARY KEY,
    Contrasena VARCHAR(100) NOT NULL,
    Cliente_Id INT NOT NULL,
    Direccion VARCHAR(150),
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    FOREIGN KEY (Cliente_Id) REFERENCES Clientes (Identificacion)
);

CREATE TABLE Mensajeros (
    Identificacion SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(150),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);


CREATE TABLE Servicios (
    Codigo SERIAL PRIMARY KEY,
    Usuario_Login VARCHAR(50) NOT NULL,
    Mensajero_Id INT NOT NULL,
    Fecha_Hora_Solicitud TIMESTAMP NOT NULL,
    Origen VARCHAR(150) NOT NULL,
    Destino VARCHAR(150) NOT NULL,
    Ciudad VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Tipo_Transporte VARCHAR(20) CHECK (Tipo_Transporte IN ('moto', 'carro', 'camion')),
    Numero_Paquetes INTEGER NOT NULL,
    FOREIGN KEY (Usuario_Login) REFERENCES Usuarios (Login),
    FOREIGN KEY (Mensajero_Id) REFERENCES Mensajeros (Identificacion)
);


CREATE TABLE Estados_Servicio (
    Id SERIAL PRIMARY KEY,
    Servicio_Codigo INTEGER NOT NULL,
    Estado VARCHAR(50) CHECK (Estado IN ('solicitado', 'recogido por el mensajero', 'entregado')),
    Fecha_Hora TIMESTAMP NOT NULL,
    Foto BYTEA,
    FOREIGN KEY (Servicio_Codigo) REFERENCES Servicios (Codigo)
);


CREATE TABLE Mensajeros_Clientes (
    Mensajero_Id INT NOT NULL,
    Cliente_Id INT NOT NULL,
    PRIMARY KEY (Mensajero_Id, Cliente_Id),
    FOREIGN KEY (Mensajero_Id) REFERENCES Mensajeros (Identificacion),
    FOREIGN KEY (Cliente_Id) REFERENCES Clientes (Identificacion)
);