USE [DIPLOM_LIZAa]
GO

INSERT INTO [dbo].[Roles]
           ([Title])
     VALUES
           ('���������'),
		   ('����������')
GO



INSERT INTO [dbo].[Users]
           ([Login]
           ,[Password]
           ,[FirstName]
           ,[LastName]
           ,[RoleId])
     VALUES
           ('User11','User11','�������','����������',1),
		   ('User2','User2','�������','����',2),
		   ('User3','User3','������','��������',2),
		   ('User4','User4','������','����������',2)
GO


INSERT INTO [dbo].[WorkExperiences]
           ([SpaseOfWork]
           ,[HoursWorked])
     VALUES
           ('��� "��� ��������"','1 ��� 3 ������'),
		   ('��� "�������"','9 �������'),
		   ('��� "�������"','1 ��� 5 �������')
GO

INSERT INTO [dbo].[JobVacancys]
           ([Title]
           ,[Earnings]
           ,[Description])
     VALUES
           ('������� ���������','�� 45.560 �� ������ �������','������� ���������� � �������������� �����. ��� �� ���. ������� ��������, ������������. ����������� ����������� �� 10-�� �������.'),
		   ('���������� ����������� ��������� �� ����� (��������)','�� 41 500 �� 51 000 ���. �� ������ �������','�������� �������� � �����, ������������ �� ������� ����������� ��������.��������������� �������� �� ��������� � ������� ��������.����������� ���������� ������� �� �������'),
           ('�������-�����������','�� 30 000 �� 35 000 ���. �� ����','������� � ���������� ������������ �����������; ��������� ����������� ���������� �� �#; ����������� ������������� ����.')
GO

INSERT INTO [dbo].[Educations]
           ([Title])
     VALUES
           ('������� �����'),
		    ('������� ����������������'),
		    ('������� �����'),
			('������� ���������������� ��������'),
		    ('������'),
			('������ ��������')
GO

INSERT INTO [dbo].[PlaceOfStudys]
           ([Title]
           ,[Speciality]
           ,[EducationId])
     VALUES
           ('����','�����������',6),
		   ('����','��������',5),
		   ('�������','������������',2)
GO

INSERT INTO [dbo].[Genders]
           ([Title])
     VALUES
           ('���'),
		   ('���')
GO

INSERT INTO [dbo].[Addresses]
           ([Region]
           ,[City]
           ,[PostalCode]
           ,[Street]
           ,[House]
           ,[Housing]
           ,[Apartament])
     VALUES
           ('���������� �������','����������','347386','����������',12,'-','-'),
		   ('���������� �������','����������','307589','���������',22,'-','4'),
		   ('���������� �������','����������','347956','��������� ����',5,'-','-'),
		   ('���������� �������','����������','365256','�����������',23,'-','-'),
		   ('���������� �������','����������','347386','�����������',53,'�','75'),
		   ('���������� �������','����������','345256','�.������',52,'-','1')
GO

INSERT INTO [dbo].[Passports]
           ([Series]
           ,[Number]
           ,[IssuedBy]
           ,[IssuedByDate]
           ,[Registration])
     VALUES
           ('6017','145236','�� ��� ������ �� ���������� �������','12.01.2023','��. ���������� �. 12'),
		   ('6017','123456','�� ��� ������ �� ���������� �������','21.03.2021','��. ��������� �. 22, ��. 4'),
		   ('6017','789456','�� ��� ������ �� ���������� �������','05.01.2022','��. ��������� ���� �. 5'),
		   ('6017','654123','�� ��� ������ �� ���������� �������','12.08.2019','��. ����������� �. 23'),
		   ('6017','987456','�� ��� ������ �� ���������� �������','12.02.2023','��. ����������� �. 53�, ��. 75'),
		   ('6017','654258','�� ��� ������ �� ���������� �������','15.09.2020','��. ����� ������ �. 52, ��. 1')

GO

INSERT INTO [dbo].[FamilyStatuses]
           ([Title])
     VALUES
           ('�� �������'),
		   ('�� �����'),
		   ('�������'),
		   ('�����'),
		   ('����������� ����')
GO
INSERT INTO [dbo].[SNILSs]
           ([Title])
     VALUES
           ('12547560003'),
		   ('58900360025'),
		   ('80000654789'),
		   ('54445880003'),
		   ('11200065890'),
		   ('58823659855')
GO
INSERT INTO [dbo].[INNs]
           ([Title])
     VALUES
          ('12547560003'),
		   ('58900360025'),
		   ('80000654789'),
		   ('54445880003'),
		   ('11200065890'),
		   ('58823659855')
GO
INSERT INTO [dbo].[JobTitles]
           ([Title])
     VALUES
       ('�����������'),
       ('���. ���������'),
       ('�������� �� ��������'),
       ('���������� �����������'),
       ('���������'),
       ('����� ������'),
       ('�������� �� ��������'),
       ('�������� ��������')
GO
INSERT INTO [dbo].[MilitryDuties]
           ([Title])
     VALUES
       ('������'),
       ('�� ������'),
       ('�� �����'),
       ('�� �������')
GO
INSERT INTO [dbo].[Questionnares]
           ([FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[Photo]
           ,[DateOfBirth]
           ,[Email]
           ,[Status]
           ,[MeetingDate]
           ,[Phone]
           ,[WorkExperienceId]
           ,[FamilyStatusId]
           ,[MilitryDutyId]
           ,[GenderId]
           ,[JobVacancyId]
           ,[PlaceOfStudyId]
           ,[UserId]
           ,[Recommendations]
           ,[Skills]
           ,[PersonalQualities]
           ,[AboutMe])
     VALUES
           ('�������','����','����������','\Resources\Pictures\_man.png','2000-10-10','Tima@gmail.com','���������������','-','89996968580',1,2,1,1,1,1,2,'���','������ ������ ��� ���������� ����������� ������, �������������� ������� � ����������; �������� ������� ����������������;','���������; ���������������; ����������� � ����������������;','������� ���������� �� 60 ���������� ���� � �������� ������� ������� �������� � 4.2 �� 4.7 � ������� 6 �������. ������������� ����������� � ������, ��� ����� �������� ������� �� 30% � �����.'),
           ('������','��������','���������','\Resources\Pictures\_woman.png','1999-10-21','ashka@gmail.com','���������������','-','89281144447',2,3,4,2,2,2,3,'���','������ ������ ��� ���������� ����������� ������, �������������� ������� � ����������; �������� ������� ����������������;','���������; ���������������; ����������� � ����������������;','������� ���������� �� 60 ���������� ���� � �������� ������� ������� �������� � 4.2 �� 4.7 � ������� 6 �������. ������������� ����������� � ������, ��� ����� �������� ������� �� 30% � �����.'),
           ('������','����������','�����������','\Resources\Pictures\_woman1.png','1988-05-02','Sashka@gmail.com','���������������','-','89885145717',3,1,4,2,3,3,4,'���','������ ������ ��� ���������� ����������� ������, �������������� ������� � ����������; �������� ������� ����������������;','���������; ���������������; ����������� � ����������������;','������� ���������� �� 60 ���������� ���� � �������� ������� ������� �������� � 4.2 �� 4.7 � ������� 6 �������. ������������� ����������� � ������, ��� ����� �������� ������� �� 30% � �����.')
GO


GO

INSERT INTO [dbo].[Staffs]
           ([FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[Photo]
           ,[DateOfBirth]
           ,[Email]
           ,[Phone]
           ,[EnrollmentDate]
           ,[PassportId]
           ,[AddressId]
           ,[SNILSId]
           ,[INNId]
           ,[FamilyStatusId]
           ,[MilitryDutyId]
           ,[GenderId]
           ,[JobTitleId]
           ,[PlaceOfStudyId])
     VALUES
           ('��������','������','���������','\Resources\Pictures\_woman.png','2000-05-25','morlan@mail.ru','89886958523','2022-08-30',1,1,1,1,1,4,2,2,1),
		   ('���������','����','�������','\Resources\Pictures\_woman1.png','1991-04-25','solka@gmail.com','89284758965','2022-07-11',2,2,2,2,1,4,2,7,1),
		   ('���������','�����','��������','\Resources\Pictures\_woman.png','2000-11-12','aminka_vitminka@gmail.com','89965232222','2022-08-30',3,3,3,3,3,4,2,5,1),
		   ('��������','�����','����������','\Resources\Pictures\_woman2.png','2000-05-25','sosiska@mail.ru','89284563256','2022-08-30',4,4,4,4,3,4,2,6,1),
		   ('��������','������','�������','\Resources\Pictures\_man.png','2000-05-25','mishkaaaaa@mail.ru','89564525758','2020-08-04',5,5,5,5,2,1,1,1,1),
		   ('�������','������','����������','\Resources\Pictures\_man1.png','2001-06-15','danchik@mail.ru','89965717544','2023-02-18',6,6,6,6,2,3,1,1,1)
GO









