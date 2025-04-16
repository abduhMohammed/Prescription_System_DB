-- 1. Patient
INSERT INTO Patient (UR_Number, PName, PAddress, Age, Phone, Email, Medicare_Card_Number) VALUES
(1, 'Ali Hassan', '12 Garden St, Cairo', 28, '01012345678', 'ali.hassan@example.com', '1234-5678-1111'),
(2, 'Sara Adel', '45 Nile Ave, Giza', 34, '01087654321', 'sara.adel@example.com', '2345-6789-2222'),
(3, 'Mohamed Nabil', '78 Tahrir St, Cairo', 41, '01122334455', 'm.nabil@example.com', '3456-7890-3333'),
(4, 'Laila Samir', '90 Zamalek Rd, Cairo', 23, '01233445566', 'laila.samir@example.com', '4567-8901-4444'),
(5, 'Hossam Ehab', '32 October City, Giza', 50, '01099887766', 'hossam.ehab@example.com', '5678-9012-5555'),
(6, 'Nour El-Din', '10 Ring Road, Giza', 31, '01033445566', 'nour.eldin@example.com', '6789-0123-6666'),
(7, 'Salma Zaki', '22 Abbas El Akkad, Nasr City', 26, '01166778899', 'salma.zaki@example.com', '7890-1234-7777'),
(8, 'Khaled Tarek', '11 Maadi Corniche, Cairo', 37, '01011223344', 'khaled.tarek@example.com', '8901-2345-8888'),
(9, 'Rania Wael', '65 Rehab City, New Cairo', 45, '01299887766', 'rania.wael@example.com', '9012-3456-9999'),
(10, 'Omar Lotfy', '77 Dokki St, Giza', 29, '01122334466', 'omar.lotfy@example.com', '0123-4567-0000');

-- 2. Doctor
INSERT INTO Doctor (Doc_ID, DName, Phone, Email, Specialty, Years_Of_Experience) VALUES
(101, 'Dr. Ayman Khaled', '01200112233', 'ayman.khaled@hospital.com', 'Cardiology', 12),
(102, 'Dr. Mona Fathy', '01199887766', 'mona.fathy@hospital.com', 'Neurology', 9),
(103, 'Dr. Ahmed Samy', '01055667788', 'ahmed.samy@hospital.com', 'Pediatrics', 6),
(104, 'Dr. Dina Nassar', '01233445577', 'dina.nassar@hospital.com', 'Dermatology', 15),
(105, 'Dr. Tamer Youssef', '01066554433', 'tamer.youssef@hospital.com', 'Orthopedics', 10),
(106, 'Dr. Yasmine Nabil', '01277788899', 'yasmine.nabil@hospital.com', 'Oncology', 11),
(107, 'Dr. Hany Magdy', '01144556677', 'hany.magdy@hospital.com', 'Endocrinology', 13),
(108, 'Dr. Rana Selim', '01077889900', 'rana.selim@hospital.com', 'Psychiatry', 7),
(109, 'Dr. Walid Gamal', '01255667788', 'walid.gamal@hospital.com', 'ENT', 8),
(110, 'Dr. Samah Helmy', '01133445566', 'samah.helmy@hospital.com', 'Gynecology', 14);

-- 3. Pharmaceutical_Company
INSERT INTO Pharmaceutical_Company (Company_Name, Address, Phone) VALUES
('PharmaLife', '5 Industrial Zone, Cairo', '022334455'),
('MedEgypt', '12 Health Park, Giza', '023456789'),
('CureWell', '78 Sheikh Zayed St.', '01012345670'),
('BioMedica', '3rd Settlement, New Cairo', '01155667788'),
('HealthyFuture', 'Smart Village, 6th October', '01222334455');

-- 4. Patient_Doctor
INSERT INTO Patient_Doctor (UR_Number, Doc_ID) VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110);

SET IDENTITY_INSERT Prescription ON;
-- 5. Prescription
INSERT INTO Prescription (Prescription_ID, Date, Quantity, UR_Number) VALUES
(301, '2025-04-01', 2, 1),
(302, '2025-04-02', 1, 2),
(303, '2025-04-03', 3, 3),
(304, '2025-04-04', 2, 4),
(305, '2025-04-05', 1, 5),
(306, '2025-04-06', 2, 6),
(307, '2025-04-07', 1, 7),
(308, '2025-04-08', 3, 8),
(309, '2025-04-09', 2, 9),
(310, '2025-04-10', 1, 10);
SET IDENTITY_INSERT Prescription OFF;

SET IDENTITY_INSERT Drugs ON;
-- 6. Drugs
INSERT INTO Drugs (Drug_ID, Trade_Name, Strength) VALUES
(201, 'Panadol', '500mg'),
(202, 'Amoxicillin', '250mg'),
(203, 'Zyrtec', '10mg'),
(204, 'Voltaren', '75mg'),
(205, 'Flagyl', '400mg'),
(206, 'Cataflam', '50mg'),
(207, 'Paracetamol', '500mg'),
(208, 'Aspirin', '300mg'),
(209, 'Augmentin', '625mg'),
(210, 'Ibuprofen', '200mg');
SET IDENTITY_INSERT Drugs OFF;

-- 7. Drug_Company
INSERT INTO Drug_Company (Drug_ID, Company_Name) VALUES
(201, 'PharmaLife'),
(202, 'MedEgypt'),
(203, 'CureWell'),
(204, 'BioMedica'),
(205, 'HealthyFuture'),
(206, 'PharmaLife'),
(207, 'MedEgypt'),
(208, 'CureWell'),
(209, 'BioMedica'),
(210, 'HealthyFuture');

-- 8. Prescription_Drugs
INSERT INTO Prescription_Drugs (Drug_ID, Prescription_ID) VALUES
(201, 301),
(202, 302),
(203, 303),
(204, 304),
(205, 305),
(206, 306),
(207, 307),
(208, 308),
(209, 309),
(210, 310);

-- 9. Doctor_Prescription
INSERT INTO Doctor_Prescription (Doc_ID, Prescription_ID) VALUES
(101, 301),
(102, 302),
(103, 303),
(104, 304),
(105, 305),
(106, 306),
(107, 307),
(108, 308),
(109, 309),
(110, 310);