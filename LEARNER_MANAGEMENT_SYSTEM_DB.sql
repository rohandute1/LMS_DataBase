CREATE DATABASE LEARNER_MANAGEMENT_SYSTEM_DB;
USE LEARNER_MANAGEMENT_SYSTEM_DB;

CREATE TABLE UserDetails (
    Id INT PRIMARY KEY,
    email VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    Password VARCHAR(255),
    contact_number VARCHAR(20),
    verified BOOLEAN,
    creator_stamp DATETIME,
    creator_user INT
);
CREATE TABLE HiredCandidate (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255),
    MiddleName VARCHAR(255),
    LastName VARCHAR(255),
    EmailId VARCHAR(255),
    HiredCity VARCHAR(255),
    Degree VARCHAR(255),
    HiredDate DATE,
    MobileNumber VARCHAR(20),
    PermanentPincode VARCHAR(10),
    HiredLab VARCHAR(255),
    Attitude VARCHAR(255),
    CommunicationRemark VARCHAR(255),
    KnowledgeRemark VARCHAR(255),
    AggregateRemark VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT
);
CREATE TABLE FellowshipCandidate (
    Id INT,
    CIC_ID VARCHAR(50) PRIMARY KEY,
    FirstName VARCHAR(255),
    MiddleName VARCHAR(255),
    LastName VARCHAR(255),
    EmailId VARCHAR(255),
    HiredCity VARCHAR(255),
    Degree VARCHAR(255),
    HiredDate DATE,
    MobileNumber VARCHAR(20),
    PermanentPincode VARCHAR(10),
    HiredLab VARCHAR(255),
    Attitude VARCHAR(255),
    CommunicationRemark VARCHAR(255),
    KnowledgeRemark VARCHAR(255),
    AggregateRemark VARCHAR(255),
    CreatorStamp DATETIME,
    CreatorUser INT,
    BirthDate DATE,
    IsBirthDateVerified BOOLEAN,
    ParentName VARCHAR(255),
    ParentOccupation VARCHAR(255),
    ParentsMobileNumber VARCHAR(20),
    ParentsAnnualSalary DECIMAL(10, 2),
    LocalAddress VARCHAR(255),
    PermanentAddress VARCHAR(255),
    PhotoPath VARCHAR(255),
    JoiningDate DATE,
    CandidateStatus VARCHAR(50),
    PersonalInformation TEXT,
    BankInformation TEXT,
    EducationalInformation TEXT,
    DocumentStatus TEXT,
    Remark TEXT,
    FOREIGN KEY (Id) REFERENCES HiredCandidate(Id)
);
CREATE TABLE CandidateBankDetails (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CandidateId VARCHAR(255),
    Name VARCHAR(255),
    AccountNumber VARCHAR(20),
    IsAccountNumVerified BOOLEAN,
    IfscCode VARCHAR(20),
    IsIfscCodeVerified BOOLEAN,
    PanNumber VARCHAR(20),
    IsPanNumberVerified BOOLEAN,
    AadhaarNum VARCHAR(20),
    IsAadhaarNumVerified BOOLEAN,
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CIC_ID)
);
CREATE TABLE CandidateQualification (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CandidateId VARCHAR(255),
    Diploma VARCHAR(255),
    DegreeName VARCHAR(255),
    IsDegreeNameVerified BOOLEAN,
    EmployeeDiscipline VARCHAR(255),
    IsEmployeeDisciplineVerified BOOLEAN,
    PassingYear INT,
    IsPassingYearVerified BOOLEAN,
    AggrPer DECIMAL(5, 2),
    IsFinalYearPerVerified BOOLEAN,
    FinalYearPer DECIMAL(5, 2),
    TrainingInstitute VARCHAR(255),
    IsTrainingInstituteVerified BOOLEAN,
    TrainingDurationMonth INT,
    IsTrainingDurationMonthVerified BOOLEAN,
    OtherTraining VARCHAR(255),
    IsOtherTrainingVerified BOOLEAN,
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CIC_ID)
);
CREATE TABLE CandidateDocuments (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CandidateId VARCHAR(50),
    DocType VARCHAR(50),
    DocPath VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CIC_ID)
);
CREATE TABLE Company (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Location VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT
);
CREATE TABLE AppParameters (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    KeyType VARCHAR(50),
    KeyValue VARCHAR(255),
    KeyText VARCHAR(255),
    CurStatus VARCHAR(50),
    LastupdUser INT,
    LastupdStamp DATETIME,
    CreatorStamp DATETIME,
    CreatorUser INT,
    SeqNum INT
);
CREATE TABLE TechStack (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    TechName VARCHAR(255),
    ImagePath VARCHAR(255),
    Framework VARCHAR(255),
    CurStatus VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT
);
CREATE TABLE TechType (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    TypeName VARCHAR(255),
    CurStatus VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT
);
CREATE TABLE Lab (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Location VARCHAR(255),
    Address VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT
);
CREATE TABLE MakerProgram (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProgramName VARCHAR(255),
    ProgramType VARCHAR(50),
    ProgramLink VARCHAR(255),
    TechStackId INT,
    TechTypeId INT,
    IsProgramApproved BOOLEAN,
    Description TEXT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (TechStackId) REFERENCES TechStack(Id),
    FOREIGN KEY (TechTypeId) REFERENCES TechType(Id)
);
CREATE TABLE LabThreshold (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    LabId INT,
    LabCapacity INT,
    LeadThreshold INT,
    IdeationEnggThreshold INT,
    BuddyEnggThreshold INT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (LabId) REFERENCES Lab(Id)
);
CREATE TABLE Mentor (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    MentorType VARCHAR(50),
    LabId INT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (LabId) REFERENCES Lab(Id)
);
CREATE TABLE MentorIdeationMap (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ParentMentorId INT,
    Mentor_Id INT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (ParentMentorId) REFERENCES Mentor(Id),
    FOREIGN KEY (Mentor_Id) REFERENCES Mentor(Id)
);
CREATE TABLE MentorTechStack (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Mentor_Id INT,
    TechStackId INT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (Mentor_Id) REFERENCES Mentor(Id),
    FOREIGN KEY (TechStackId) REFERENCES TechStack(Id)
);
CREATE TABLE CompanyRequirement (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CompanyId INT,
    RequestedMonth VARCHAR(50),
    City VARCHAR(255),
    IsDocVerification BOOLEAN,
    RequirementDocPath VARCHAR(255),
    NoOfEngg INT,
    TechStackId INT,
    TechTypeId INT,
    MakerProgramId INT,
    LeadId INT,
    IdeationEnggId INT,
    BuddyEnggId INT,
    SpecialRemark TEXT,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (CompanyId) REFERENCES Company(Id),
    FOREIGN KEY (TechStackId) REFERENCES TechStack(Id),
    FOREIGN KEY (TechTypeId) REFERENCES TechType(Id),
    FOREIGN KEY (MakerProgramId) REFERENCES MakerProgram(Id),
    FOREIGN KEY (LeadId) REFERENCES Mentor(Id),
    FOREIGN KEY (IdeationEnggId) REFERENCES Mentor(Id),
    FOREIGN KEY (BuddyEnggId) REFERENCES Mentor(Id)
);
CREATE TABLE CandidateStackAssignment (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    RequirementId INT,
    CandidateId VARCHAR(50),
    AssignDate DATE,
    CompleteDate DATE,
    Status VARCHAR(50),
    CreatorStamp DATETIME,
    CreatorUser INT,
    FOREIGN KEY (RequirementId) REFERENCES CompanyRequirement(Id),
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CIC_ID)
);

INSERT INTO UserDetails (Id, email, first_name, last_name, Password, contact_number, verified, creator_stamp)
VALUES
(1, 'ganesh.bhide@gmail.com', 'Ganesh', 'Bhide', 'password123', '9876543210', True, '2023-12-08 12:00:00'),
(2, 'ritvik.Daitya@gmail.com', 'Ritvik', 'Daitya', 'securepwd456', '9876543220', False, '2023-12-08 12:15:00'),
(3, 'rahul.sharma@yahoo.com', 'Rahul', 'Sharma', 'strongpass789', '9876543230', True, '2023-12-08 12:30:00'),
(4, 'priya.jain@hotmail.com', 'Priya', 'Jain', 'safe1234', '9876543240', False, '2023-12-08 12:45:00'),
(5, 'vikram.singh@gmail.com', 'Vikram', 'Singh', 'secret5678', '9876543250', True, '2023-12-08 13:00:00'),
(6, 'ananya.mishra@gmail.com', 'Ananya', 'Mishra', 'protected4321', '9876543260', True, '2023-12-08 13:15:00'),
(7, 'suresh.kumar@gmail.com', 'Suresh', 'Kumar', 'confidential876', '9876543270', True, '2023-12-08 13:30:00'),
(8, 'neha.verma@gmail.com', 'Neha', 'Verma', 'hidden7890', '9876543280', False, '2023-12-08 13:45:00'),
(9, 'akash.shah@gmail.com', 'Akash', 'Shah', 'securepass123', '9876543290', True, '2023-12-08 14:00:00'),
(10, 'anika.mittal@gmail.com', 'Anika', 'Mittal', 'strongpwd456', '9876543300', True, '2023-12-08 14:15:00'),
(11, 'manoj.patel@gmail.com', 'Manoj', 'Patel', 'safe7890', '9876543310', True, '2023-12-08 14:30:00'),
(12, 'divya.singh@gmail.com', 'Divya', 'Singh', 'secret1234', '9876543320', False, '2023-12-08 14:45:00'),
(13, 'swati.mishra@gmail.com', 'Swati', 'Mishra', 'protected5678', '9876543330', True, '2023-12-08 15:00:00'),
(14, 'arjun.gupta@gmail.com', 'Arjun', 'Gupta', 'confidential4321', '9876543340', True, '2023-12-08 15:15:00'),
(15, 'pooja.sharma@gmail.com', 'Pooja', 'Sharma', 'hidden876', '9876543350', True, '2023-12-08 15:30:00'),
(16, 'vikas.yadav@gmail.com', 'Vikas', 'Yadav', 'securepass789', '9876543360', False, '2023-12-08 15:45:00'),
(17, 'sneha.singh@gmail.com', 'Sneha', 'Singh', 'strongpwd123', '9876543370', True, '2023-12-08 16:00:00'),
(18, 'rohit.malik@gmail.com', 'Rohit', 'Malik', 'safe4567', '9876543380', True, '2023-12-08 16:15:00'),
(19, 'neetu.verma@gmail.com', 'Neetu', 'Verma', 'secret8901', '9876543390', True, '2023-12-08 16:30:00'),
(20, 'ankit.agarwal@gmail.com', 'Ankit', 'Agarwal', 'protected2345', '9876543400', False, '2023-12-08 16:45:00');

INSERT INTO HiredCandidate (Id, FirstName, MiddleName, LastName, EmailId, HiredCity, Degree, HiredDate, MobileNumber, PermanentPincode, HiredLab, Attitude, CommunicationRemark, KnowledgeRemark, AggregateRemark, Status, CreatorStamp)
VALUES
(1, 'Amit', 'Rajat', 'Sharma', 'amit.sharma@gmail.com', 'Mumbai', 'B.Tech', '2023-11-15', '9876543210', '400001', 'Lab1', 'Positive', 'Excellent', 'Strong technical knowledge', 'Top performer', 'Hired', '2023-12-08 12:00:00'),
(2, 'Deepika', 'Rajesh', 'Chauhan', 'deepika.chauhan@gmail.com', 'Pune', 'MCA', '2023-11-20', '9876543220', '110001', 'Lab2', 'Positive', 'Good', 'In-depth domain knowledge', 'Highly skilled', 'Hired', '2023-12-08 12:15:00'),
(3, 'Rahul', 'Arjun', 'Verma', 'rahul.verma@yahoo.com', 'Mumbai', 'B.E', '2023-11-25', '9876543230', '226001', 'Lab3', 'Adaptable', 'Good', 'Solid technical understanding', 'Top performer', 'Hired', '2023-12-08 12:30:00'),
(4, 'Sakshi', 'Rohit', 'Mishra', 'sakshi.mishra@hotmail.com', 'Bangalore', 'B.Sc', '2023-12-01', '9876543240', '560001', 'Lab4', 'Energetic', 'Good', 'Sound technical skills', 'Highly skilled', 'Hired', '2023-12-08 12:45:00'),
(5, 'Vijay', 'Amit', 'Negi', 'vijay.negi@gmail.com', 'Pune', 'M.Tech', '2023-12-05', '9876543250', '600001', 'Lab5', 'Proactive', 'Excellent', 'Extensive knowledge in the field', 'Outstanding', 'Hired', '2023-12-08 13:00:00'),
(6, 'Shweta', 'Ankit', 'Yadav', 'shweta.yadav@gmail.com', 'Bangalore', 'BCA', '2023-12-10', '9876543260', '500001', 'Lab6', 'Positive', 'Excellent', 'Good', 'Highly skilled', 'Hired', '2023-12-08 13:15:00'),
(7, 'Rajesh', 'Rohit', 'Gupta', 'rajesh.gupta@gmail.com', 'Bangalore', 'B.E', '2023-12-15', '9876543270', '700001', 'Lab7', 'Flexible', 'Average', 'Good', 'Highly skilled', 'Hired', '2023-12-08 13:30:00'),
(8, 'Anjali', 'Rahul', 'Singh', 'anjali.singh@gmail.com', 'Pune', 'MCA', '2023-12-20', '9876543280', '411001', 'Lab8', 'Positive', 'Good', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 13:45:00'),
(9, 'Rajat', 'Amit', 'Yadav', 'rajat.shah@gmail.com', 'Mumbai', 'B.Tech', '2023-12-25', '9876543290', '380001', 'Lab9', 'Adaptable', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 14:00:00'),
(10, 'Ananya', 'Vikas', 'Sharma', 'ananya.sharma@gmail.com', 'Pune', 'MCA', '2023-12-30', '9876543300', '302001', 'Lab10', 'Optimistic', 'Average', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 14:15:00'),
(11, 'Rohit', 'Vijay', 'Yadav', 'rohit.yadav@gmail.com', 'Bangalore', 'B.Sc', '2024-01-05', '9876543310', '452001', 'Lab11', 'Energetic', 'Good', 'Poor', 'Top-notch', 'Not UptoMark', '2023-12-08 14:30:00'),
(12, 'Divya', 'Amit', 'Mishra', 'divya.mishra@gmail.com', 'Mumbai', 'BCA', '2024-01-10', '9876543320', '462001', 'Lab12', 'Proactive', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 14:45:00'),
(13, 'Swati', 'Arjun', 'Gupta', 'swati.gupta@gmail.com', 'Bangalore', 'B.Tech', '2024-01-15', '9876543330', '440001', 'Lab13', 'Assertive', 'Good', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 15:00:00'),
(14, 'Arjun', 'Rajat', 'Sharma', 'arjun.sharma@gmail.com', 'Pune', 'M.Tech', '2024-01-20', '9876543340', '641001', 'Lab14', 'Flexible', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 15:15:00'),
(15, 'Pooja', 'Rajesh', 'Verma', 'pooja.verma@gmail.com', 'Pune', 'BCA', '2024-01-25', '9876543350', '530001', 'Lab15', 'Positive', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 15:30:00'),
(16, 'Vikas', 'Vijay', 'Singh', 'vikas.singh@gmail.com', 'Bangalore', 'B.E', '2024-01-30', '9876543360', '800001', 'Lab16', 'Adaptable', 'Average', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 15:45:00'),
(17, 'Sneha', 'Ankit', 'Verma', 'sneha.verma@gmail.com', 'Mumbai', 'MCA', '2024-02-05', '9876543370', '695001', 'Lab17', 'Positive', 'Good', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 16:00:00'),
(18, 'Rohit', 'Rahul', 'Yadav', 'rohit.yadav@gmail.com', 'Bangalore', 'B.Sc', '2024-02-10', '9876543380', '682001', 'Lab18', 'Energetic', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 16:15:00'),
(19, 'Neetu', 'Rahul', 'Sharma', 'neetu.sharma@gmail.com', 'Mumbai', 'B.Tech', '2024-02-15', '9876543390', '781001', 'Lab19', 'Proactive', 'Good', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 16:30:00'),
(20, 'Ankit', 'Rajat', 'Yadav', 'ankit.yadav@gmail.com', 'Pune', 'BCA', '2024-02-20', '9876543400', '793001', 'Lab20', 'Positive', 'Excellent', 'Poor', 'Not UptoMark', 'Not-Hired', '2023-12-08 16:45:00');
Update HiredCandidate Set HiredLab = 'PuneLab' Where Id = 2;
Update HiredCandidate Set HiredLab = 'MumbaiLab' Where Id = 3;
Update HiredCandidate Set HiredLab = 'BangloreLab' Where Id = 4;
Update HiredCandidate Set HiredLab = 'PuneLab' Where Id = 5;
Update HiredCandidate Set HiredLab = 'MumbaiLab' Where Id = 1;
Update HiredCandidate Set HiredLab = 'BangloreLab' Where Id = 6;
Update HiredCandidate Set HiredLab = 'BangloreLab' Where Id = 7;
select * from HiredCandidate;

INSERT INTO AppParameters (KeyType, KeyValue, KeyText, CurStatus, LastupdUser, LastupdStamp, CreatorStamp, SeqNum)
VALUES
('DOC_STATUS', 'PND', 'Pending', 'Active', 1, NOW(), NOW(), 1),
('DOC_STATUS', 'RCEVD', 'Received', 'Active', 1, NOW(), NOW(), 2),
('CUR_STATUS', 'ACTV', 'Active', 'Active', 1, NOW(), NOW(), 1),
('CUR_STATUS', 'IACTV', 'Inactive', 'Active', 1, NOW(), NOW(), 1),
('BATCH_STATUS', 'INPROCESS', 'In Process', 'Active', 1, NOW(), NOW(), 1),
('BATCH_STATUS', 'HOLD', 'Hold', 'Active', 1, NOW(), NOW(), 2),
('BATCH_STATUS', 'COMPL', 'Completed', 'Active', 1, NOW(), NOW(), 3);
select * from AppParameters;
 
 	
SELECT * FROM AppParameters WHERE KeyType = "CUR_STATUS" ORDER BY SeqNum;

INSERT INTO TechStack (TechName, ImagePath, Framework, CurStatus, CreatorStamp)
VALUES
('Java', '/images/java.png', 'Spring Boot', 'Active', NOW()),
('C#', '/images/java.png', '.NET', 'Active', NOW()),
('Web-Developmant', '/images/python.png', 'React', 'Active', NOW());
  Select * from TechStack;

INSERT INTO TechType (Id, TypeName, CurStatus, CreatorStamp)
VALUES
(1, 'Backend', 'Active', NOW()),
(2, 'Frontend', 'Active', NOW());
Select * from TechType;

INSERT INTO Lab (Id, Name, Location, Address, Status, CreatorStamp)
VALUES
(1, 'MumbaiLab', 'Mumbai', 'Malhotra chembers', 'Active', NOW()),
(2, 'PuneLab', 'Pune', 'Shivaji nagar', 'Active', NOW()),
(3, 'BangloreLab', 'Banglore', '5, 14th A Main Rd', 'Active', NOW());
Select * from Lab;

 select * from FellowshipCandidate;
 ------ 1 ---------
INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '1999-04-10' AS BirthDate,
    True AS IsBirthDateVerified,
    'Rajat' AS ParentName,
    'Govt Servent' AS ParentOccupation,
    '789654123' AS ParentsMobileNumber,
    350000 AS ParentsAnnualSalary,
    'Dadar' AS LocalAddress,
    'Dadar-Mumbai' AS PermanentAddress,
    '/.amit.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'B.Tech in Mechanical' AS PersonalInformation,
    'Bank of Maharashtra' AS BankInformation,
    'Passing year 2021' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 1;
select * from FellowshipCandidate;
 ------ 2 -------- 
INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    2 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '2000-01-05' AS BirthDate,
    True AS IsBirthDateVerified,
    'Rajesh' AS ParentName,
    'Engineer' AS ParentOccupation,
    '987456321' AS ParentsMobileNumber,
    800000 AS ParentsAnnualSalary,
    'Sambhajinagar' AS LocalAddress,
    'Sambhajinagar' AS PermanentAddress,
    '/.abc.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'Na' AS PersonalInformation,
    'Bank of Badoda' AS BankInformation,
    'Passing year 2022' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 2;
 ------ 3 --------
   INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    3 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '1998-08-17' AS BirthDate,
    True AS IsBirthDateVerified,
    'Arjun' AS ParentName,
    'Farmer' AS ParentOccupation,
    '879456123' AS ParentsMobileNumber,
    250000 AS ParentsAnnualSalary,
    'Nashik' AS LocalAddress,
    'Nashik' AS PermanentAddress,
    '/.rahul.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'BE in E&TC' AS PersonalInformation,
    'Central Bank Of India' AS BankInformation,
    'Passing year 2020' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 3;
 ------ 4 -------
  INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    4 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '2000-02-14' AS BirthDate,
    True AS IsBirthDateVerified,
    'Rohit' AS ParentName,
    'Pvt.Servent' AS ParentOccupation,
    '978456123' AS ParentsMobileNumber,
    500000 AS ParentsAnnualSalary,
    'Banglore' AS LocalAddress,
    'Banglore' AS PermanentAddress,
    '/.akshi.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'B.Sc' AS PersonalInformation,
    'Bank of Maharashtra' AS BankInformation,
    'Passing year 2023' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 4;
------- 5 -------
 INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    5 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '1997-10-14' AS BirthDate,
    True AS IsBirthDateVerified,
    'Amit' AS ParentName,
    'Business' AS ParentOccupation,
    '9865321470' AS ParentsMobileNumber,
    750000 AS ParentsAnnualSalary,
    'Pune' AS LocalAddress,
    'Pune' AS PermanentAddress,
    '/.vijay.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'M.Tech' AS PersonalInformation,
    'HDFC' AS BankInformation,
    'Passing year 2023' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 5;
------- 6 -------
 INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    6 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '2001-07-14' AS BirthDate,
    True AS IsBirthDateVerified,
    'Ankit' AS ParentName,
    'Engineer' AS ParentOccupation,
    '7895462330' AS ParentsMobileNumber,
    600000 AS ParentsAnnualSalary,
    'Banglore' AS LocalAddress,
    'Banglore' AS PermanentAddress,
    '/.shweta.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'BCA' AS PersonalInformation,
    'Bank of Maharashtra' AS BankInformation,
    'Passing year 2022' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 6;
-------- 7 ------
 INSERT INTO FellowshipCandidate (
    Id,
    CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    BirthDate,
    IsBirthDateVerified,
    ParentName,
    ParentOccupation,
    ParentsMobileNumber,
    ParentsAnnualSalary,
    LocalAddress,
    PermanentAddress,
    PhotoPath,
    JoiningDate,
    CandidateStatus,
    PersonalInformation,
    BankInformation,
    EducationalInformation,
    DocumentStatus,
    Remark
)
SELECT
    7 AS Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CIC_ID,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    NOW() AS CreatorStamp,
    '1999-05-24' AS BirthDate,
    True AS IsBirthDateVerified,
    'Rohit' AS ParentName,
    'Pvt.Servent' AS ParentOccupation,
    '8889452136' AS ParentsMobileNumber,
    3750000 AS ParentsAnnualSalary,
    'Banglore' AS LocalAddress,
    'Banglore' AS PermanentAddress,
    '/.raiesh.jpg' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'BE in CS' AS PersonalInformation,
    'ICICI' AS BankInformation,
    'Passing year 2021' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Hired' AND Id = 7;
select * from FellowshipCandidate;

-- Insert data into CandidateBankDetails table with auto-filled CandidateId
INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Amit Sharma', '123456789012', true,
    'ABC123456', true, 'ABCDE1234F', true,
    '987654321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 1;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Deepika Chauhan', '4445852569', true,
    'ABC857056', true, 'ABCDE4444F', true,
    '987654321147', true, NOW()
FROM FellowshipCandidate
WHERE Id = 2;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Rahul Verma', '9632584710', true,
    'POC873456', true, 'ABCDE3364F', true,
    '777654321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 3;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Sakshi Mishra', '555456789012', true,
    'AWU123456', true, 'ABCD259234C', true,
    '875654321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 4;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Vijay Negi', '898956789012', true,
    'CBI13556', true, 'PWCDE1234F', true,
    '854794321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 5;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Shweta Yadav', '784756789012', true,
    'GEF123456', true, 'QRODE1234F', true,
    '55854321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 6;

INSERT INTO CandidateBankDetails (
    CandidateId, Name, AccountNumber, IsAccountNumVerified,
    IfscCode, IsIfscCodeVerified, PanNumber, IsPanNumberVerified,
    AadhaarNum, IsAadhaarNumVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Rajesh Gupta', '145247896321', true,
    'CCC123456', true, 'MNOP1234F', true,
    '658745321012', true, NOW()
FROM FellowshipCandidate
WHERE Id = 7;
select * from CandidateBankDetails;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Diploma In Mech', 'B.Tech', TRUE, 
    'Mechanical Industry', TRUE, 2021, TRUE, 75.50, TRUE, 78.00, 
    'RSCOE', TRUE, 12, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 1;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, '12th CS', 'MCA', TRUE, 
    'IT Field', TRUE, 2022, TRUE, 68.25, TRUE, 87.21, 
    'MIT', TRUE, 24, TRUE, 'Yes', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 2;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Diploma In E&TC', 'BE', TRUE, 
    'No Experience', TRUE, 2020, TRUE, 69.50, TRUE, 75.40, 
    'SKH', TRUE, 36, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 3;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, '12th', 'B.Sc', TRUE, 
    'Fresher', TRUE, 2023, TRUE, 68.50, TRUE, 75.00, 
    'KJC', TRUE, 24, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 4;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'BE', 'M.Tech', TRUE, 
    'Fresher', TRUE, 2023, TRUE, 77.50, TRUE, 84.00, 
    'DYPCOE', TRUE, 24, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 5;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, '12th Comp', 'BCA', TRUE, 
    'Fresher', TRUE, 2023, TRUE, 80.50, TRUE, 88.00, 
    'AMC', TRUE, 24, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 6;

INSERT INTO CandidateQualification (
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified,
    EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, 
    AggrPer, IsFinalYearPerVerified, FinalYearPer, TrainingInstitute, IsTrainingInstituteVerified, 
    TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining, IsOtherTrainingVerified, CreatorStamp
) 
SELECT
    CIC_ID, 'Dipolma in CS', 'BE', TRUE, 
    'IT Company', TRUE, 2021, TRUE, 68.50, TRUE, 75.00, 
    'RVCE', TRUE, 36, TRUE, 'No', TRUE,  NOW()
FROM FellowshipCandidate
WHERE Id = 7;

select * from CandidateQualification;
select * from CandidateDocuments;
Select * from FellowshipCandidate;
INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 1), 'Pancard', '/docs/resume_amit_sharma.pdf', 'Received', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 2), 'AdharCard', '/docs/resume_deepika_chauhan.pdf', 'Received', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 3), 'Pancard', '/docs/resume_rahul_verma.pdf', 'Received', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 4), 'Adharcard', '/docs/resume_sakshi_mishra.pdf', 'Pending', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 5), 'Pancard', '/docs/resume_vijay_negi.pdf', 'Received', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 6), 'AdharCard', '/docs/resume_shweta_yadav.pdf', 'Received', NOW()
);

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status, CreatorStamp
) VALUES (
    (SELECT CIC_ID FROM FellowshipCandidate WHERE Id = 7), 'Voting Id', '/docs/resume_rajesh_gupta.pdf', 'Received', NOW()
);

INSERT INTO MakerProgram (ProgramName, ProgramType, ProgramLink, TechStackId, TechTypeId, IsProgramApproved, Description, Status, CreatorStamp)
VALUES('Java', 'Backend', 'www.java.com', 1, 1, True, 'Description', 'Active', NOW());

INSERT INTO MakerProgram (ProgramName, ProgramType, ProgramLink, TechStackId, TechTypeId, IsProgramApproved, Description, Status, CreatorStamp)
VALUES('C#', 'Backend', 'www.csharp.com', 2, 1, True, 'Description', 'Active', NOW());

INSERT INTO MakerProgram (ProgramName, ProgramType, ProgramLink, TechStackId, TechTypeId, IsProgramApproved, Description, Status, CreatorStamp)
VALUES('Web-Developmant', 'Frontend', 'www.webdevelopment.com', 3, 2, True, 'Description', 'Active', NOW());

select * from Mentor;

INSERT INTO Mentor (Name, MentorType, LabId, Status, CreatorStamp)
VALUES ('Sunil', 'Lead', 1, 'Active', NOW());

INSERT INTO Mentor (Name, MentorType, LabId, Status, CreatorStamp)
VALUES
('venkat', 'ideation', 1, 'Active', NOW()),
('pooja', 'ideation', 3, 'Active', NOW()),
('aishwarya', 'buddy', 1, 'Active', NOW()),
('Gunjan', 'Lead', 1, 'Active', NOW()),
('Nagendra', 'Lead', 1, 'Active', NOW()),
('Roshni', 'Ideation', 3, 'Active', NOW());

Select * from MentorIdeationMap;
INSERT INTO MentorIdeationMap (ParentMentorId, Mentor_Id, Status, CreatorStamp)
VALUES
(1, 2, 'Active', NOW()),
(1, 3, 'Active', NOW()),
(5, 7, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES( 1, 1, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES(2, 1, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES(3, 1, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES(5, 2, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES(6, 3, 'Active', NOW());

INSERT INTO MentorTechStack (Mentor_Id, TechStackId, Status, CreatorStamp)
VALUES(7, 2, 'Active', NOW());
select * from MentorTechStack;
select * from MakerProgram;

INSERT INTO Company (Name, Address, Location, Status, CreatorStamp)
VALUES
  ('Vinuculam', 'First Floor, Tower 1', 'Noida', 'Active', NOW());
  
INSERT INTO CompanyRequirement (CompanyId, RequestedMonth, City, IsDocVerification, RequirementDocPath, NoOfEngg, TechStackId, TechTypeId, MakerProgramId, LeadId, IdeationEnggId, BuddyEnggId, SpecialRemark, Status, CreatorStamp)
VALUES(1, 'January', 'Noida', True, 'Path/To/RequirementDoc.pdf', 2, 1, 1, 1, 1, 2, 4, 'SpecialRemark', 'Active', NOW());

INSERT INTO CandidateStackAssignment (RequirementId, CandidateId, AssignDate, CompleteDate, Status, CreatorStamp)
VALUES (1, 'CIC00001', '2023-10-16', '2024-01-15', 'Assigned', NOW());

INSERT INTO CandidateStackAssignment (RequirementId, CandidateId, AssignDate, CompleteDate, Status, CreatorStamp)
VALUES (
    1, (SELECT CIC_ID FROM FellowshipCandidate ORDER BY Id LIMIT 1 OFFSET 1), 
    '2023-09-20', '2024-01-15', 'Assigned', NOW());

select * from CandidateStackAssignment;