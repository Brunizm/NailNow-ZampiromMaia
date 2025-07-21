CREATE TABLE Client (
    IdClient INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CPF VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    Password VARCHAR(100)
);

CREATE TABLE Manicurist (
    IdManicurist INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CPF VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    Password VARCHAR(100)
);

CREATE TABLE Service (
    IdService INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE Appointment (
    IdAppointment INT AUTO_INCREMENT PRIMARY KEY,
    IdClient INT,
    IdManicurist INT,
    DateTime DATETIME,
    Status VARCHAR(50),
    Location VARCHAR(100),
    FOREIGN KEY (IdClient) REFERENCES Client(IdClient),
    FOREIGN KEY (IdManicurist) REFERENCES Manicurist(IdManicurist)
);

CREATE TABLE AppointmentService (
    IdAppointment INT,
    IdService INT,
    PRIMARY KEY (IdAppointment, IdService),
    FOREIGN KEY (IdAppointment) REFERENCES Appointment(IdAppointment),
    FOREIGN KEY (IdService) REFERENCES Service(IdService)
);

CREATE TABLE Review (
    IdReview INT AUTO_INCREMENT PRIMARY KEY,
    IdAppointment INT,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (IdAppointment) REFERENCES Appointment(IdAppointment)
);

-- VIEW
CREATE VIEW vw_clientes_com_agendamentos AS
SELECT 
    c.FirstName, c.LastName, a.DateTime, s.Name AS ServiceName
FROM Client c
JOIN Appointment a ON c.IdClient = a.IdClient
JOIN AppointmentService aps ON a.IdAppointment = aps.IdAppointment
JOIN Service s ON aps.IdService = s.IdService;

-- FUNÇÃO
DELIMITER //
CREATE FUNCTION fn_total_agendamentos_cliente(p_IdClient INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Appointment
    WHERE IdClient = p_IdClient;
    RETURN total;
END;
//
DELIMITER ;

-- STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE sp_novo_agendamento(
    IN p_IdClient INT,
    IN p_IdManicurist INT,
    IN p_Data DATETIME,
    IN p_Status VARCHAR(50),
    IN p_Location VARCHAR(100)
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