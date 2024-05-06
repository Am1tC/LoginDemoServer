Create Database LoginDemoDB
Go


Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go



Create Table Grades(
	 Score int NOT NULL,
	 [Subject] nvarchar(20) NOT NULL,
	 Email nvarchar(100) Foreign  KEY REFERENCES Users(Email),
	 Date nvarchar(100) Not Null
)
Go

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go
	INSERT INTO dbo.Grades Values('99','math','ofer@ofer.com','06-may-2024')
	go
	INSERT INTO dbo.Grades Values('96','physics','ofer@ofer.com','06-march-2024')
	go
	INSERT INTO dbo.Grades Values('101','computer-science','ofer@ofer.com','06-april-2024')

	drop  Database LoginDemoDB
	GO


--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force