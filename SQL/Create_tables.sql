-- Patient Table
CREATE TABLE Patient
(
	UR_Number INT Primary Key,
	PName VARCHAR(50),
	PAddress TEXT,
	Age INT,
	Phone VARCHAR(20),
	Email VARCHAR(50),
	Medicare_Card_Number VARCHAR(20) UNIQUE
);
-- Doctor Table
CREATE TABLE Doctor
(
	Doc_ID INT PRIMARY KEY,
	DName VARCHAR(50),
	Phone VARCHAR(30),
	Email VARCHAR(50),
	Specialty VARCHAR(30),
	Years_Of_Experience INT
);
-- Patient-Doctor Table
CREATE TABLE Patient_Doctor
(
	UR_Number INT,
	Doc_ID INT,
	CONSTRAINT PK_Patient_Doctor PRIMARY KEY (UR_Number, Doc_ID),
	CONSTRAINT FK_Patient FOREIGN KEY (UR_Number) REFERENCES Patient(UR_Number)
	ON DELETE CASCADE,
	CONSTRAINT FK_Doctor FOREIGN KEY (Doc_ID) REFERENCES Doctor(Doc_ID)
	ON DELETE CASCADE
);
-- Prescription Table
CREATE TABLE Prescription
(
	Prescription_ID INT IDENTITY(1,1) PRIMARY KEY,
	Date DATE DEFAULT GETDATE(),
	Quantity INT,
	UR_Number INT,
	CONSTRAINT FK_Patient_Prescription FOREIGN KEY (UR_Number) REFERENCES Patient(UR_Number)
	ON DELETE CASCADE
);
-- Doctor-Prescription Table
CREATE TABLE Doctor_Prescription
(	
	Doc_ID INT,
	Prescription_ID INT,
	CONSTRAINT PK_Doctor_Prescription PRIMARY KEY (Doc_ID, Prescription_ID),
	CONSTRAINT FK_Doctor_Prescription FOREIGN KEY (Doc_ID) REFERENCES Doctor(Doc_ID)
	ON DELETE CASCADE,
	CONSTRAINT FK_Prescription_Doctor FOREIGN KEY (Prescription_ID) REFERENCES Prescription(Prescription_ID)
	ON DELETE CASCADE
);
-- Drug Table
CREATE TABLE Drugs
(
	Drug_ID INT PRIMARY KEY IDENTITY(1, 1),
	Trade_Name VARCHAR(50),
	Strength VARCHAR(50)
);
-- Prescription-Drugs Table
CREATE TABLE Prescription_Drugs
(
	Drug_ID INT,
	Prescription_ID INT,
	CONSTRAINT PK_Prescription_Drug PRIMARY KEY (Drug_ID, Prescription_ID),
	CONSTRAINT FK_Drug FOREIGN KEY (Drug_ID) REFERENCES Drugs(Drug_ID)
	ON DELETE CASCADE,
	CONSTRAINT FK_Prescription FOREIGN KEY (Prescription_ID) REFERENCES Prescription(Prescription_ID)
	ON DELETE CASCADE
);
-- Pharamacutical_Company
CREATE TABLE Pharmaceutical_Company 
(
	Company_Name VARCHAR(100) PRIMARY KEY,
	Address VARCHAR(150),
	Phone VARCHAR(50)
);
-- Drug-Company
CREATE TABLE Drug_Company
(
	Drug_ID INT,
	Company_Name VARCHAR(100),
	CONSTRAINT PK_Drug_Company PRIMARY KEY (Drug_ID, Company_Name),
	CONSTRAINT FK_Drug_Company FOREIGN KEY (Drug_ID) REFERENCES Drugs(Drug_ID)
	ON DELETE CASCADE,
	CONSTRAINT FK_Company FOREIGN KEY (Company_Name) REFERENCES Pharmaceutical_Company(Company_Name)
	ON DELETE CASCADE
);