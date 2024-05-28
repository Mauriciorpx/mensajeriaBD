INSERT INTO Clientes (Nombre, Direccion, Ciudad, Email, Telefono) VALUES
  ('Juan Perez', 'Calle 123 #45-67', 'Medellín', 'juan.perez@email.com', '310 1234567'),
  ('Maria Gómez', 'Carrera 54 #32-10', 'Cali', 'maria.gomez@email.com', '311 7654321'),
  ('Pedro Lopez', 'Avenida 78 #90-12', 'Bogotá', 'pedro.lopez@email.com', '312 4567890');

  INSERT INTO Sucursales (Cliente_Id, Nombre, Direccion, Telefono) VALUES
  ('1', 'Sucursal Medellin', 'Calle 60 #78-90', '310 1234567'),
  ('1', 'Sucursal Cali', 'Carrera 40 #56-78', '311 7654321'),
  ('2', 'Sucursal Bogotá', 'Avenida 30 #45-67', '312 4567890');

INSERT INTO Usuarios (Login, Contrasena, Cliente_Id, Direccion, Email, Telefono) VALUES
  ('j.perez', 'password123', '1', 'Calle 123 #45-67', 'juan.perez@email.com', '310 1234567'),
  ('m.gomez', 'password456', '2', 'Carrera 54 #32-10', 'maria.gomez@email.com', '311 7654321'),
  ('p.lopez', 'password789', '3', 'Avenida 78 #90-12', 'pedro.lopez@email.com', '312 4567890'),
  ('mensajero1', 'password123', '1', 'Calle 10 #20-30', 'mensajero1@email.com', '313 9876543');

INSERT INTO Mensajeros (Nombre, Direccion, Email, Telefono) VALUES
  ('Diego Martinez', 'Calle 10 #20-30', 'mensajero1@email.com', '313 9876543'),
  ('Ana Rodriguez', 'Carrera 20 #30-40', 'mensajero2@email.com', '314 8765432'),
  ('Carlos Lopez', 'Avenida 30 #40-50', 'mensajero3@email.com', '315 7654321');

INSERT INTO Servicios (Usuario_Login, Mensajero_Id, Fecha_Hora_Solicitud, Origen, Destino, Ciudad, Descripcion, Tipo_Transporte, Numero_Paquetes) VALUES
  ('j.perez', '1', '2024-05-25 10:00:00', 'Calle 123 #45-67, Medellín', 'Carrera 54 #32-10, Cali', 'Medellín', 'Paquete de documentos importantes', 'moto', 1),
  ('m.gomez', '2', '2024-05-25 11:00:00', 'Carrera 54 #32-10, Cali', 'Avenida 78 #90-12, Bogotá', 'Cali', 'Caja de regalo', 'carro', 2),
  ('p.lopez', '1', '2024-05-25 12:00:00', 'Avenida 78 #90-12, Bogotá', 'Calle 123 #45-67, Medellín', 'Bogotá', 'Muestras médicas', 'moto', 3);

INSERT INTO Estados_Servicio (Servicio_Codigo, Estado, Fecha_Hora, Foto) VALUES
  (1, 'solicitado', '2024-05-25 10:00:00', NULL),
  (2, 'solicitado', '2024-05-25 11:00:00', NULL),
  (3, 'solicitado', '2024-05-25 11:00:00', NULL);

INSERT INTO Mensajeros_Clientes (Mensajero_Id, Cliente_Id) VALUES
  (1, 1),
  (2, 2),
  (3, 3);

