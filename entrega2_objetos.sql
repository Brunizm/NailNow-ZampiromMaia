-- entrega2_objetos.sql

-- VIEW
CREATE VIEW vw_clientes_com_agendamentos AS
SELECT 
  c.FirstName,
  c.LastName,
  a.DateTime,
  s.Name AS Service
FROM Client c
JOIN Appointment a ON c.IdClient = a.IdClient
JOIN AppointmentService aps ON a.IdAppointment = aps.IdAppointment
JOIN Service s ON aps.IdService = s.IdService;

-- FUNCTION
DELIMITER //
CREATE FUNCTION fn_total_agendamentos_cliente(p_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM Appointment
  WHERE IdClient = p_id;
  RETURN total;
END;
//
DELIMITER ;

-- STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE sp_novo_agendamento (
  IN p_IdClient INT,
  IN p_IdManicurist INT,
  IN p_Data DATETIME,
  IN p_Status VARCHAR(50),
  IN p_Location VARCHAR(255)
)
BEGIN
  IF EXISTS (SELECT 1 FROM Client WHERE IdClient = p_IdClient)
     AND EXISTS (SELECT 1 FROM Manicurist WHERE IdManicurist = p_IdManicurist) THEN
    INSERT INTO Appointment (IdClient, IdManicurist, DateTime, Status, Location)
    VALUES (p_IdClient, p_IdManicurist, p_Data, p_Status, p_Location);
  END IF;
END;
//
DELIMITER ;

-- TRIGGER
DELIMITER //
CREATE TRIGGER trg_log_agendamento
AFTER INSERT ON Appointment
FOR EACH ROW
BEGIN
  INSERT INTO Review (IdAppointment, Rating, Comment)
  VALUES (NEW.IdAppointment, NULL, 'Agendamento registrado. Avaliação pendente.');
END;
//
DELIMITER ;
