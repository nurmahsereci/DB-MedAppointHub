-- Create the 'project' database
CREATE DATABASE project;

-- Create the 'Specialties' table
CREATE TABLE project.Specialties (
    SpecialtyID INT PRIMARY KEY AUTO_INCREMENT,
    SpecialtyName VARCHAR(255) NOT NULL
);

-- Create the 'Doctors' table
CREATE TABLE project.Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorName VARCHAR(255) NOT NULL,
    SpecialtyID INT,
    FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID)
);

-- Create the 'DoctorAvailability' table
CREATE TABLE project.DoctorAvailability (
    AvailabilityID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorID INT,
    AvailableDateTime DATETIME,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create the 'Appointments' table
CREATE TABLE project.Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientName VARCHAR(255) NOT NULL,
    PatientEmail VARCHAR(255) NOT NULL,
    PatientPhone VARCHAR(255) NOT NULL,
    AppointmentDateTime DATETIME NOT NULL,
    DoctorID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);