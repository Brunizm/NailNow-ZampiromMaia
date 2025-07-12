-- entrega2_datos.sql

-- Inserir cliente
INSERT INTO Client (FirstName, LastName, CPF, Email, Address, City, Password)
VALUES ('Bruna', 'Maia', '123.456.789-00', 'bruna@email.com', 'Rua das Flores, 123', 'São Paulo', 'senha123');

-- Inserir manicurista
INSERT INTO Manicurist (FirstName, LastName, CPF, Email, Address, City, Password)
VALUES ('Camila', 'Santos', '321.654.987-00', 'camila@email.com', 'Rua Bela Vista, 99', 'São Paulo', 'senha789');

-- Inserir serviços
INSERT INTO Service (Name, Description, Price)
VALUES 
  ('Manicure', 'Fazer mãos', 60.00),
  ('Alongamento', 'Unha alongada', 150.00);

-- Inserir agendamento
INSERT INTO Appointment (IdClient, IdManicurist, DateTime, Status, Location)
VALUES (1, 1, '2025-07-11 15:00:00', 'Confirmado', 'Sala 03');

-- Vincular serviços ao agendamento
INSERT INTO AppointmentService (IdAppointment, IdService)
VALUES 
  (1, 1),
  (1, 2);
