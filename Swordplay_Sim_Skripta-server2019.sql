USE [master]
GO
/****** Object:  Database [Swordplay_Sim]    Script Date: 16-Jun-20 7:28:56 PM ******/
CREATE DATABASE [Swordplay_Sim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Swordplay_Sim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SWORDPLAY\MSSQL\DATA\Swordplay_Sim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Swordplay_Sim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SWORDPLAY\MSSQL\DATA\Swordplay_Sim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Swordplay_Sim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Swordplay_Sim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Swordplay_Sim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET ARITHABORT OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Swordplay_Sim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Swordplay_Sim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Swordplay_Sim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Swordplay_Sim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET RECOVERY FULL 
GO
ALTER DATABASE [Swordplay_Sim] SET  MULTI_USER 
GO
ALTER DATABASE [Swordplay_Sim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Swordplay_Sim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Swordplay_Sim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Swordplay_Sim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Swordplay_Sim] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Swordplay_Sim', N'ON'
GO
ALTER DATABASE [Swordplay_Sim] SET QUERY_STORE = OFF
GO
USE [Swordplay_Sim]
GO
/****** Object:  Table [dbo].[Ucesnik]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ucesnik](
	[UcesnikID#] [char](3) NOT NULL,
	[ime] [nvarchar](30) NOT NULL,
	[Prezime] [nvarchar](30) NOT NULL,
	[KlubID#fk] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UcesnikID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mec]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mec](
	[RedniBrojMeca#] [int] NOT NULL,
	[DisciplinaID#fk] [char](3) NOT NULL,
	[PlaviBoracID#fk] [char](3) NOT NULL,
	[PlaviDisciplinaID#fk] [char](3) NOT NULL,
	[CrveniBoracID#fk] [char](3) NOT NULL,
	[CrveniDisciplinaID#fk] [char](3) NOT NULL,
	[Sudija1ID#fk] [char](3) NOT NULL,
	[Sudija1DisciplinaID#fk] [char](3) NOT NULL,
	[Sudija2ID#fk] [char](3) NOT NULL,
	[Sudija2DsciplinaID#fk] [char](3) NOT NULL,
	[FazaID#fk] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RedniBrojMeca#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistika]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistika](
	[RedniBrojMeca#fk] [int] NOT NULL,
	[TakmicarID#fk] [char](3) NOT NULL,
	[DisciplinaID#fk] [char](3) NOT NULL,
	[JedanPoen] [int] NOT NULL,
	[DvaPoena] [int] NOT NULL,
	[TriPoena] [int] NOT NULL,
	[CetiriPoena] [int] NOT NULL,
	[UkupnoPoena] [int] NOT NULL,
	[BrojIzazova] [int] NOT NULL,
	[IshodMeca] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RedniBrojMeca#fk] ASC,
	[TakmicarID#fk] ASC,
	[DisciplinaID#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[kdfMedalje_Po_Disciplini]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
SELECT COUNT(Ucesnik.UCesnikID#) AS BrojPobeda, Ucesnik.Ime, Ucesnik.Prezime
FROM Ucesnik JOIN Statistika ON (Ucesnik.UcesnikID# = Statistika.TakmicarID#fk) JOIN Mec ON(Mec.RedniBrojMeca# = Statistika.RedniBrojMeca#fk) 
WHERE Mec.DisciplinaID#fk = 'rap'
GROUP BY Ucesnik.UcesnikID#, Ucesnik.Ime, Ucesnik.Prezime
*/

CREATE FUNCTION [dbo].[kdfMedalje_Po_Disciplini](@SifraDiscipline CHAR(3))
RETURNS TABLE 
RETURN
WITH 

	/*Zlato dobijamo tako sto nalazimo pobednika za finale-fazu takmicenja za datu disciplinu */
	Zlato AS (SELECT TOP(1) Ucesnik.Ime, Ucesnik.Prezime, UcesnikID#
					From Ucesnik Join Mec ON(Ucesnik.UcesnikID# = Mec.PlaviBoracID#fk OR Ucesnik.UcesnikID# = Mec.CrveniBoracID#fk)
								 JOIN Statistika ON(Statistika.RedniBrojMeca#fk = Mec.RedniBrojMeca# AND Statistika.TakmicarID#fk = Ucesnik.UcesnikID#)							
					WHERE Mec.FazaID#fk = 'final' AND Statistika.IshodMeca = 'pobeda' AND Mec.DisciplinaID#fk = @SifraDiscipline),

	/*Srebro dobijamo tako sto nalazimo gubitnika u za finale-fazu takmicenja date discipline */
			SREBRO AS (SELECT TOP(1) Ucesnik.Ime, Ucesnik.Prezime, UcesnikID#
					From Ucesnik Join Mec ON(Ucesnik.UcesnikID# = Mec.PlaviBoracID#fk OR Ucesnik.UcesnikID# = Mec.CrveniBoracID#fk)
								 JOIN Statistika ON(Statistika.RedniBrojMeca#fk = Mec.RedniBrojMeca# AND Statistika.TakmicarID#fk = Ucesnik.UcesnikID#)							
					WHERE Mec.FazaID#fk = 'final' AND Statistika.IshodMeca = 'poraz' AND Mec.DisciplinaID#fk = @SifraDiscipline ),

	/*Bronzu dobijamo tako sto nalazimo pobednika za 'bronza-mec' fazu takmicenja date discipline */
			 Bronza AS (SELECT TOP(1) Ucesnik.Ime, Ucesnik.Prezime, UcesnikID#
					From Ucesnik Join Mec ON(Ucesnik.UcesnikID# = Mec.PlaviBoracID#fk OR Ucesnik.UcesnikID# = Mec.CrveniBoracID#fk)
								 JOIN Statistika ON(Statistika.RedniBrojMeca#fk = Mec.RedniBrojMeca# AND Statistika.TakmicarID#fk = Ucesnik.UcesnikID#)							
					WHERE Mec.FazaID#fk = 'bronza' AND Statistika.IshodMeca = 'pobeda' AND Mec.DisciplinaID#fk = @SifraDiscipline )
	

SELECT Zlato.ime AS Zlato_Ime, Zlato.Prezime AS Zlato_Prezime, Zlato.UCesnikID# AS Zlato_ID, 
	   Srebro.ime AS Srebro_Ime, Srebro.Prezime AS Srebro_Prezime, Srebro.UCesnikID# AS Srebro_ID, 
	   Bronza.ime AS Bronza_Ime, Bronza.Prezime AS Bronza_Prezime, Bronza.UCesnikID# AS Bronza_ID 
	FROM Zlato, Srebro, Bronza
	








	

/*######################KOMPLIKOVANA VERZIJA KOJA BROJI POBEDE#############################*/
/*
WITH 
	/*Prvo brojimo pobede za svakog takmicara ponaosob*/
	Pobede AS (SELECT COUNT(mecevi.Sifra_Pobednika) AS BrojPobeda, Sifra_Pobednika, mecevi.Disciplina_Turnira 
	           FROM pRezultati_Meceva AS mecevi WHERE Disciplina_Turnira = 'rap'
			   GROUP BY Sifra_Pobednika, Disciplina_Turnira),
	Medalje AS(SELECT TOP(3) Ucesnik.Ime, Ucesnik.Prezime, Sifra_Pobednika, BrojPobeda, Pobede.Disciplina_Turnira
			   FROM Pobede LEFT JOIN Ucesnik ON (Ucesnik.UcesnikID# = Pobede.Sifra_Pobednika)
		       WHERE Pobede.Disciplina_Turnira = 'rap' ORDER BY BrojPobeda DESC),


	/*Zlato dobijamo tako sto izaberemo prvu kolonu iz podupita medalje, koji je izdvojio top 3 takmicara po broju pobeda 
	I sortirao ih u opadajucem redosledu tako da je na samom pocetku ucesnik sa najvecim brojem pobeda*/
	Zlato AS (SELECT TOP(1) Ime, Prezime, Sifra_Pobednika, BrojPobeda FROM Medalje),

	/*Srebro dobijamo tako sto izaberemo dva najbolja mesta TOP(2)iz Podupita 'medalje' gde se nalaze sva tri mesta 
	ta dva mesta sortiramo u rastucem redosledu (ASC) broja bodova, tako da nam prvo mesto bude mesto sa manjim brojem pobeda od dva odabrana mesta, 
	onda biramo TOP(1) cime dobijamo drugi najbolji broj pobeda*/
	Srebro AS(SELECT TOP(1) DrugoPrvo.Ime, DrugoPrvo.Prezime, DrugoPrvo.Sifra_Pobednika, DrugoPrvo.BrojPobeda 
			  FROM (SELECT TOP(2) Ime, Prezime, Sifra_Pobednika, BrojPobeda FROM Medalje ORDER BY BrojPobeda ASC ) AS DrugoPrvo),


	/*Bronzu dobijamo tako sto izaberemo TOP(1) Is podupita Medalje koji je sortiran (ORDER BY) u rastucem poredku (ASC)
	Tako da u podupitu gde se nalaze tri ucesnika sa najvecim brojem pobeda, 
	prvi red bude ucesnik sa najmanjim brojem pobeda od njih.(trece mesto) */
	Bronza AS (SELECT TOP(1) TreceDrugoPrvo.Ime, TreceDrugoPrvo.Prezime, TreceDrugoPrvo.Sifra_Pobednika, TreceDrugoPrvo.BrojPobeda 
			   FROM (SELECT TOP(3) Sifra_Pobednika, BrojPobeda, Ime, Prezime FROM Medalje ORDER BY BrojPobeda ASC) AS TreceDrugoPrvo)

SELECT Zlato.ime AS Zlato, Zlato.Prezime, Zlato.Sifra_Pobednika, Zlato.BrojPobeda,
	   Srebro.Ime AS Srebro, Srebro.Prezime, Zlato.Sifra_Pobednika, Zlato.BrojPobeda,
	   Bronza.Ime AS Bronza, Bronza.Prezime, Bronza.Sifra_Pobednika, Bronza.BrojPobeda
	FROM Zlato, Srebro, Bronza

	*/
GO
/****** Object:  Table [dbo].[Klub]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klub](
	[KlubID#] [char](2) NOT NULL,
	[NazivKluba] [nvarchar](30) NOT NULL,
	[DrzavaID#fk] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KlubID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pRezultati_Meceva]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[pRezultati_Meceva] AS
WITH 
	--Prva izvedena tabela vrsi selekciju podataka o svim Takmicarima kao i njihovoj statistici za one meceve u kojima su bili pobednici
	Pobednik AS
   (Select Ucesnik.UcesnikID#, Ucesnik.Ime + Ucesnik.Prezime AS Pobednik,Klub.NazivKluba, Statistika.UkupnoPoena,Statistika.JedanPoen, Statistika.DvaPoena, 
		   Statistika.TriPoena, Statistika.CetiriPoena, Statistika.IshodMeca, Statistika.BrojIzazova, Statistika.RedniBrojMeca#fk, Statistika.DisciplinaID#fk FazaID#fk
	FROM Klub JOIN Ucesnik ON(Klub.KlubID# = Ucesnik.KlubID#fk)
		 JOIN Statistika ON(Ucesnik.UcesnikID# = Statistika.TakmicarID#fk) 
	     JOIN Mec ON(Statistika.RedniBrojMeca#fk = Mec.RedniBrojMeca#)
	WHERE ishodMeca = 'pobeda'
	),
	--Druga izvedena tabela vrsi selekciju podataka o svim Takmicarima kao i njihovoj statistici za one meceve u kojima su bili gubitnici
     Gubitnik AS
	(Select Ucesnik.UcesnikID#, Ucesnik.Ime + Ucesnik.Prezime AS Gubitnik, Klub.NazivKluba, Statistika.UkupnoPoena, Statistika.JedanPoen, Statistika.DvaPoena, 
		    Statistika.TriPoena, Statistika.CetiriPoena, Statistika.IshodMeca, Statistika.BrojIzazova, Statistika.RedniBrojMeca#fk, Statistika.DisciplinaID#fk, FazaID#fk
	FROM Klub JOIN Ucesnik ON(Klub.KlubID# = Ucesnik.KlubID#fk)
		  JOIN Statistika ON(Ucesnik.UcesnikID# = Statistika.TakmicarID#fk) 
	     JOIN Mec ON(Statistika.RedniBrojMeca#fk = Mec.RedniBrojMeca#)
	WHERE ishodMeca = 'poraz'
	)
SELECT         
				Pobednik.UcesnikID# AS Sifra_Pobednika,
			    Pobednik.RedniBrojMeca#fk As Broj_Meca,
			    Pobednik.Pobednik,	-->Ime i prezime pobednika
				Pobednik.NazivKluba AS Pob_Klub,
			 	Pobednik.JedanPoen	AS Pob_1pt,
				Pobednik.DvaPoena AS Pob_2pt,
				Pobednik.TriPoena AS Pob_3pt,
				Pobednik.CetiriPoena AS Pob_4pt,
				Pobednik.UkupnoPoena AS Pob_Ukupno_Poena,
				Pobednik.BrojIzazova AS Pob_Broj_Izazova,
				Gubitnik.UcesnikID# AS Sifra_Gubitnika,
				Gubitnik.Gubitnik, -->Ime i prezime gubitnika
				Gubitnik.NazivKluba AS Gub_Klub,
			 	Gubitnik.JedanPoen AS Gub_1pt,
				Gubitnik.DvaPoena AS Gub_2pt,
				Gubitnik.TriPoena AS Gub_3pt,
				Gubitnik.CetiriPoena AS Gub_4pt,
				Gubitnik.UkupnoPoena AS Gub_Ukupno_Poena,
				Gubitnik.BrojIzazova AS Gub_Broj_Izazova,
				Gubitnik.FazaID#fk AS Faza_Takmicenja,
				Gubitnik.DisciplinaID#fk AS Disciplina_Turnira 
				FROM Pobednik JOIN Gubitnik ON (Pobednik.RedniBrojMeca#fk = Gubitnik.RedniBrojMeca#fk)














/*										################ Kod za kreiranje instance baze ###########################
CREATE TABLE Drzava(
	DrzavaID# CHAR(3) NOT NULL, 
	NazivDrzave NVARCHAR(30) NOT NULL,
PRIMARY KEY(DrzavaID#)
);

CREATE TABLE Dodatak(
	DodatakID# CHAR(3) NOT NULL, --'dor''ruc''noc' 
	NazivDodatka VARCHAR(30) NOT NULL,
	CenaDodatka DECIMAL(19,4) NOT NULL,	--Koristimo decimal umesto MONEY zbog racunanja u procedurama 
PRIMARY KEY(DodatakID#)
);

CREATE TABLE Disciplina(
	DisciplinaID# CHAR(3) NOT NULL,	--'RAP' 'LON' 'SID'
	NazivDiscip VARCHAR(30) NOT NULL,
	CenaDiscip DECIMAL(19,4) NOT NULL,
PRIMARY KEY(DisciplinaID#)
);


CREATE TABLE FazaTakmicenja(
	FazaID# CHAR(6) NOT NULL, --'poluF', 'final', 'cetFin', 'bronza'
	NazivFaze VARCHAR(30),
PRIMARY KEY(FazaID#)
);



CREATE TABLE Klub(
	KlubID# CHAR(2) NOT NULL, --00, 01, 02,...,99
	NazivKluba NVARCHAR(30) NOT NULL,
	DrzavaID#fk CHAR(3) NOT NULL,
PRIMARY KEY(KlubID#),
FOREIGN KEY(DrzavaID#fk) REFERENCES Drzava(DrzavaID#)
);


CREATE TABLE Ucesnik(
	UcesnikID# CHAR(3) NOT NULL, --001, 002,003,...,999
	ime NVARCHAR(30) NOT NULL,
	Prezime NVARCHAR(30) NOT NULL,
	KlubID#fk CHAR(2) NOT NULL,
PRIMARY KEY(UcesnikID#),
FOREIGN KEY(KlubID#fk) REFERENCES KLUB(KlubID#)
);



CREATE TABLE OdabraniDodatak(
	UcesnikID#fk CHAR(3) NOT NULL,
	DodatakID#fk CHAR(3) NOT NULL,
	BrojDodataka INT NOT NULL
PRIMARY KEY(UcesnikID#fk, DodatakID#fk),
FOREIGN KEY(UcesnikID#fk) REFERENCES Ucesnik(UcesnikID#),
FOREIGN KEY(DodatakID#fk) REFERENCES Dodatak(DodatakID#)
);


CREATE TABLE RegistrovaniUcesnik(
	UcesnikID#fk CHAR(3) NOT NULL, 
	DisciplinaID#fk CHAR(3) NOT NULL, 
PRIMARY KEY(UcesnikID#fk, DisciplinaID#fk),
FOREIGN KEY(UcesnikID#fk) REFERENCES Ucesnik(UcesnikID#),
FOREIGN KEY(DisciplinaID#fk) REFERENCES Disciplina(DisciplinaID#)
);



-- Ispod Sudija i Takmicar tabele kao specijalizacije tabele Registrovani Ucesnik

CREATE TABLE Sudija(
	SudijaID#fk CHAR(3) NOT NULL,
	DisciplinaID#fk CHAR(3) NOT NULL,
PRIMARY KEY(SudijaID#fk, DisciplinaID#fk),
FOREIGN KEY(SudijaID#fk, DisciplinaID#fk) REFERENCES RegistrovaniUcesnik(UcesnikID#fk, DisciplinaID#fk)
);



CREATE TABLE Takmicar(
	TakmicarID#fk CHAR(3) NOT NULL,
	DisciplinaID#fk CHAR(3) NOT NULL, 
PRIMARY KEY(TakmicarID#fk, DisciplinaID#fk),
FOREIGN KEY(TakmicarID#fk, DisciplinaID#fk) 
	REFERENCES RegistrovaniUcesnik(UcesnikID#fk, DisciplinaID#fk)
);








CREATE TABLE Mec(
	RedniBrojMeca# INT NOT NULL, 
	DisciplinaID#fk CHAR(3) NOT NULL,
	--Plavi borac
	PlaviBoracID#fk CHAR(3) NOT NULL,
	PlaviDisciplinaID#fk CHAR(3) NOT NULL,
	--
	--Crveniborac
	CrveniBoracID#fk CHAR(3) NOT NULL, 
	CrveniDisciplinaID#fk CHAR(3) NOT NULL,
	--
	--Sudija1
	Sudija1ID#fk CHAR(3) NOT NULL,
	Sudija1DisciplinaID#fk CHAR(3) NOT NULL,
	--
	--Sudija2 
	Sudija2ID#fk CHAR(3) NOT NULL,
	Sudija2DsciplinaID#fk CHAR(3) NOT NULL,
	--
	FazaID#fk CHAR(6) NOT NULL, 
PRIMARY KEY(RedniBrojMeca#),
FOREIGN KEY(DisciplinaID#fk) REFERENCES Disciplina(DisciplinaID#),
--
--Plavi Borac foreign key
FOREIGN KEY(PlaviBoracID#fk, PlaviDisciplinaID#fk)
	REFERENCES TAKMICAR(TakmicarID#fk, DisciplinaID#fk),
--
--Crveni Borac Foreign Key
FOREIGN KEY(CrveniBoracID#fk, CrveniDisciplinaID#fk)
	REFERENCES TAKMICAR(TakmicarID#fk, DisciplinaID#fk),
--
--Sudija1 Foreign key
FOREIGN KEY(Sudija1ID#fk, Sudija1DisciplinaID#fk)
	REFERENCES Sudija(SudijaID#fk, DisciplinaID#fk),
--
--Sudija2 Foreign key
FOREIGN KEY(Sudija2ID#fk, Sudija2DsciplinaID#fk)
	REFERENCES Sudija(SudijaID#fk, DisciplinaID#fk),
--
FOREIGN KEY(FazaID#fk) REFERENCES FazaTakmicenja(FazaID#),

-- Dole kreiramo granicenje cime obezbedjujemo da moze samo da se kreira mec za jednu disciplinu ako su sve sudije i borci registrovani na istu disciplinu
CONSTRAINT IstaDisciplina CHECK(DisciplinaID#fk = PlaviDisciplinaID#fk AND 
								PlaviDisciplinaID#fk = CrveniDisciplinaID#fk AND 
								Sudija1DisciplinaID#fk = DisciplinaID#fk AND 
								Sudija2DsciplinaID#fk = Sudija1DisciplinaID#fk)
);








CREATE TABLE Statistika(
	--Komponenta Primarnog kljuca prema mecu
	RedniBrojMeca#fk INT NOT NULL, 
	--
	--Komponenta primarnog kljuca prema TAKMICARU
	TakmicarID#fk CHAR(3) NOT NULL,
	DisciplinaID#fk CHAR(3) NOT NULL,
	--
	JedanPoen INT NOT NULL,
	DvaPoena INT NOT NULL,
	TriPoena INT NOT NULL,	--> Unosi se vrednost 0 ako nije ostvaren nijedan poen
	CetiriPoena INT NOT NULL,
	UkupnoPoena INT NOT NULL,	
	BrojIzazova INT NOT NULL, --> Ako se izazov uvazi, takmicar ima prava na sledeci izazov (teoretski takmicari ako su uvek u pravu nemaju ogranicen broj izazova na raspolaganju)
	IshodMeca CHAR(6) NOT NULL --> 'pobeda' 'poraz'
CONSTRAINT Ishod CHECK(IshodMeca IN('pobeda', 'poraz')),
PRIMARY KEY(RedniBrojMeca#fk, TakmicarID#fk, DisciplinaID#fk),
FOREIGN KEY(RedniBrojMeca#fk) REFERENCES MEC(RedniBrojMeca#),
FOREIGN KEY(TakmicarID#fk, DisciplinaID#fk) 
	REFERENCES Takmicar(TakmicarID#fk, DisciplinaID#fk)
);



INSERT INTO DRZAVA VALUES ('SRB','Srbija');
INSERT INTO DRZAVA VALUES ('BUG','Bugarska');

--dodatak(dodatakID,nazivDodatka,CenaDodatka)
INSERT INTO DODATAK VALUES('dor','dorucak',800.00); 
INSERT INTO DODATAK VALUES('ruc','rucak',1000.00); 
INSERT INTO DODATAK VALUES('noc','nocenje',3000.00);

--disciplina(disciplinaID,nazivDiscip,CenaDiscip)
INSERT INTO DISCIPLINA VALUES('RAP','rapir',1000.00);
INSERT INTO DISCIPLINA VALUES('LON','longsword',1000.00);
INSERT INTO DISCIPLINA VALUES('SID','sidesword',1000.00);


--faza takmicenja(fazaID,nazivfaze)
INSERT INTO FazaTakmicenja VALUES('poluf','polufinale');
INSERT INTO FazaTakmicenja VALUES('final','finale');
INSERT INTO FazaTakmicenja VALUES('cetFi','cetvrtfinale');
INSERT INTO FazaTakmicenja VALUES('bronza','bronza mec');	/*Mec za bronzu*/
INSERT INTO FazaTakmicenja VALUES('grup','grupna faza');


--KLUB(klubID(01,02..),ime kluba,drzavaID)
INSERT INTO KLUB VALUES('01','Terca','SRB');
INSERT INTO KLUB VALUES('02','MOTUS','BUG'); 
*/
GO
/****** Object:  UserDefinedFunction [dbo].[kdfStatistika_Po_Ucesniku]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[kdfStatistika_Po_Ucesniku](@SifraUcesnika CHAR(3)) 
RETURNS TABLE 
RETURN
SELECT *
FROM pRezultati_Meceva AS mecevi
WHERE mecevi.Sifra_Gubitnika = @SifraUcesnika OR mecevi.Sifra_Pobednika = @SifraUcesnika

GO
/****** Object:  Table [dbo].[Dodatak]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dodatak](
	[DodatakID#] [char](3) NOT NULL,
	[NazivDodatka] [varchar](30) NOT NULL,
	[CenaDodatka] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DodatakID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdabraniDodatak]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdabraniDodatak](
	[UcesnikID#fk] [char](3) NOT NULL,
	[DodatakID#fk] [char](3) NOT NULL,
	[BrojDodataka] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UcesnikID#fk] ASC,
	[DodatakID#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pOdabrani_Dodaci]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[pOdabrani_Dodaci] AS
WITH 
	 ListaDodataka AS		--> Tabela koja ispisuje sve ucesnike sa njihovim dodatkomtj (Dodatak ->Ucesnik) 
	(
	SELECT Ucesnik.Ime + Ucesnik.Prezime AS ImePrezimeUcesnika, Dodatak.NazivDodatka, Dodatak.CenaDodatka, OdabraniDodatak.BrojDodataka, Ucesnik.UcesnikID#, OdabraniDodatak.DodatakID#fk
	FROM OdabraniDodatak JOIN Ucesnik ON(OdabraniDodatak.UcesnikID#fk = Ucesnik.UcesnikID#)
	JOIN Dodatak ON (Dodatak.DodatakID# = OdabraniDodatak.DodatakID#fk)
	)
SELECT Ucesnik.Ime, Ucesnik.Prezime, ListaDodataka.NazivDodatka,ListaDodataka.CenaDodatka, ListaDodataka.BrojDodataka
FROM ListaDodataka  FULL JOIN Dodatak ON (ListaDodataka.DodatakID#fk = DodatakID#)
	 FULL JOIN Ucesnik ON (ListaDodataka.UcesnikID# = Ucesnik.UcesnikID# OR ListaDodataka.UcesnikID# = Ucesnik.UcesnikID#)
GO
/****** Object:  View [dbo].[pUkupna_Naplata_Dodataka]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Pogled 3

CREATE VIEW [dbo].[pUkupna_Naplata_Dodataka]
AS
	/*PODUPITI WITH KLAUZULE*/
WITH
/*Podupit vraca odabrani broj dodataka za dodatak Dorucak */
DodatakDorucak AS(Select OdabraniDodatak.BrojDodataka AS Dorucak,  
                  Dodatak.CenaDodatka AS CenaDorucka,
				    OdabraniDodatak.UcesnikID#fk,		 
				    OdabraniDodatak.DodatakID#fk  
		    FROM OdabraniDodatak JOIN Dodatak 
ON(OdabraniDodatak.DodatakID#fk = Dodatak.DodatakID#)
					  WHERE DodatakID#fk =  'dor'),
/*Podupit vraca broj odabranih dodataka za dodatak rucak*/
	DodatakRucak AS (Select OdabraniDodatak.BrojDodataka AS Rucak,
   Dodatak.CenaDodatka  AS CenaRucka,
			          OdabraniDodatak.UcesnikID#fk,		
			          OdabraniDodatak.DodatakID#fk
			   FROM OdabraniDodatak JOIN Dodatak ON(OdabraniDodatak.DodatakID#fk = Dodatak.DodatakID#)
			   WHERE DodatakID#fk =  'ruc'),

/*Podupit vraca broj odabranih dodataka za dodatakk nocenje */
DodatakNocenje AS (Select OdabraniDodatak.BrojDodataka AS Nocenje,
				OdabraniDodatak.UcesnikID#fk,
				Dodatak.CenaDodatka  AS CenaNocenja, /*Pored svakog broja Odabranih dodataka zelimo da u tabeli moze da se vidi cena dodatka */   
				OdabraniDodatak.DodatakID#fk
		     FROM OdabraniDodatak JOIN Dodatak 
          ON(OdabraniDodatak.DodatakID#fk = Dodatak.DodatakID#) /* Vezujemo tabelu Dodatak sa tabelom Odabrani Dodatak Da bi pristupili ceni dodataka*/
		     WHERE DodatakID#fk = 'noc')

													
--> GLAVNI UPIT
SELECT DISTINCT Ucesnik.UcesnikID#, Ucesnik.Ime, Ucesnik.Prezime,
	ISNULL(DodatakDorucak.Dorucak,0) AS Dorucak, /* Polje predstavlja broj Dorucaka*/
	(ISNULL(DodatakDorucak.CenaDorucka,0) * ISNULL(Dorucak,0)) AS NaplataDorucka,
	ISNULL(DodatakRucak.Rucak,0)AS Rucak,  /* Broj Rucaka */
	(ISNULL(DodatakRucak.CenaRucka,0) * ISNULL(Rucak,0)) AS NaplataRucka,/* Oreginalnu cenu dodatka(NaplataNocenja) mnozimo sa brojem dodataka kolone(Rucak/Dorucak/Nocenje)*/
	ISNULL(DodatakNocenje.Nocenje,0)AS Nocenje,

	/*Vrsimo sumu svih cena svih dodataka mnozene odabranim brojem dodataka za svaki dodatak*/
	(ISNULL(DodatakNocenje.CenaNocenja,0) * ISNULL(Nocenje,0)) AS NaplataNocenja,
	(ISNULL(DodatakDorucak.CenaDorucka,0) * ISNULL(Dorucak,0) + ISNULL(DodatakRucak.CenaRucka,0) * ISNULL(Rucak,0) + ISNULL(DodatakNocenje.CenaNocenja,0) * ISNULL(Nocenje,0)) AS UkupnaNaplata
FROM Ucesnik LEFT JOIN DodatakDorucak
  ON (Ucesnik.UcesnikID# = DodatakDorucak.UcesnikID#fk) 
	 LEFT JOIN DodatakRucak ON(Ucesnik.UcesnikID# = DodatakRucak.UcesnikID#fk)
	 LEFT JOIN DodatakNocenje ON(Ucesnik.UcesnikID# = DodatakNocenje.UCesnikID#fk)
GO
/****** Object:  Table [dbo].[Disciplina]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina](
	[DisciplinaID#] [char](3) NOT NULL,
	[NazivDiscip] [varchar](30) NOT NULL,
	[CenaDiscip] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DisciplinaID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrovaniUcesnik]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrovaniUcesnik](
	[UcesnikID#fk] [char](3) NOT NULL,
	[DisciplinaID#fk] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UcesnikID#fk] ASC,
	[DisciplinaID#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sudija]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sudija](
	[SudijaID#fk] [char](3) NOT NULL,
	[DisciplinaID#fk] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SudijaID#fk] ASC,
	[DisciplinaID#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pUkupna_Naplata_Disciplina]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


	 -- Pogled 4

CREATE VIEW [dbo].[pUkupna_Naplata_Disciplina] AS
/*WITH PODUPITI*/
WITH 
DisciplinaRapir AS 
(
	SELECT Disciplina.CenaDiscip AS Rapir, RegistrovaniUcesnik.UcesnikID#fk
	FROM Disciplina JOIN RegistrovaniUcesnik ON (Disciplina.DisciplinaID# = RegistrovaniUcesnik.DisciplinaID#fk)
	WHERE Disciplina.DisciplinaID# = 'rap'AND RegistrovaniUcesnik.UcesnikID#fk NOT IN(SELECT Sudija.SudijaID#fk FROM Sudija WHERE Sudija.DisciplinaID#fk  = 'rap')
),
DisciplinaLongsword AS
(
	SELECT Disciplina.CenaDiscip AS Longsword, RegistrovaniUcesnik.UcesnikID#fk
	FROM Disciplina JOIN RegistrovaniUcesnik ON (Disciplina.DisciplinaID# = RegistrovaniUcesnik.DisciplinaID#fk)
	WHERE Disciplina.DisciplinaID# = 'lon' AND RegistrovaniUcesnik.UcesnikID#fk NOT IN(SELECT Sudija.SudijaID#fk FROM Sudija WHERE Sudija.DisciplinaID#fk  = 'lon')
),
DisciplinaSidesword AS (
	SELECT Disciplina.CenaDiscip AS Sidesword, RegistrovaniUcesnik.UcesnikID#fk 
	FROM Disciplina JOIN RegistrovaniUcesnik ON (Disciplina.DisciplinaID# = RegistrovaniUcesnik.DisciplinaID#fk) 
WHERE Disciplina.DisciplinaID# = 'sid' AND RegistrovaniUcesnik.UcesnikID#fk NOT IN(SELECT Sudija.SudijaID#fk FROM Sudija WHERE Sudija.DisciplinaID#fk  = 'sid') /*Sudijama se ne   naplacuje kotizacija */
)


/*GLAVNI UPIT POGLEDA*/
SELECT DISTINCT Ucesnik.UcesnikID#, Ucesnik.Ime, Ucesnik.Prezime,
	   ISNULL(DisciplinaRapir.Rapir, 0.0000) AS Rapir, 
	   ISNULL( DisciplinaLongsword.Longsword, 0.0000) AS Longsword, 
	   ISNULL(DisciplinaSidesword.Sidesword, 0.0000) AS Sidesword,
	   (ISNULL(DisciplinaRapir.Rapir, 0.0000) +ISNULL( DisciplinaLongsword.Longsword, 0.0000) + ISNULL(DisciplinaSidesword.Sidesword, 0.0000)) AS UkupnaNaplata	
/*Sabiramo polja cene za Svaku disciplinu i --Pa taj podatak upisujemo u polje UkupnaNaplata*/

FROM Ucesnik LEFT JOIN DisciplinaRapir ON (Ucesnik.UcesnikID# = DisciplinaRapir.UcesnikID#fk)				 LEFT JOIN DisciplinaLongsword ON (Ucesnik.UcesnikID# = DisciplinaLongsword.UcesnikID#fk)
			 LEFT JOIN DisciplinaSidesword ON (Ucesnik.UcesnikID# = DisciplinaSidesword.UcesnikID#fk)

GO
/****** Object:  View [dbo].[pPregled_Objedinjenih_Naplata]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[pPregled_Objedinjenih_Naplata] AS
SELECT Ucesnik.UcesnikID#, Ucesnik.Ime, Ucesnik.Prezime,
	   ISNULL(Dodaci.UkupnaNaplata,0) AS NaplataDodataka, 
	   ISNULL(Discipline.UkupnaNaplata, 0) AS NaplataDisciplina,
	   (ISNULL(Dodaci.UkupnaNaplata,0) + ISNULL(Discipline.UkupnaNaplata, 0)) ObjedinjenaNaplata
FROM pUkupna_Naplata_Dodataka AS Dodaci FULL JOIN pUkupna_Naplata_Disciplina AS Discipline 
	 ON( Dodaci.UcesnikID# = Discipline.UcesnikID#) 
	 RIGHT OUTER JOIN Ucesnik ON( Discipline.UcesnikID# = Ucesnik.UcesnikID#) 
GO
/****** Object:  View [dbo].[pSudije_Po_Disciplini]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


	-- Pogled 6
	CREATE VIEW [dbo].[pSudije_Po_Disciplini] AS
SELECT Ucesnik.Ime AS Ime_Sudija, Ucesnik.Prezime AS Prezime_Sudija, Disciplina.NazivDiscip 
FROM Ucesnik JOIN RegistrovaniUCesnik ON( Ucesnik.UcesnikID# = RegistrovaniUCesnik.UcesnikID#fk) 
	 JOIN Disciplina ON(Disciplina.DisciplinaID# = RegistrovaniUcesnik.DisciplinaID#fk) 
WHERE Ucesnik.UcesnikID# IN (SELECT sudija.SudijaID#fk FROM Sudija)
GO
/****** Object:  Table [dbo].[FazaTakmicenja]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FazaTakmicenja](
	[FazaID#] [char](6) NOT NULL,
	[NazivFaze] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[FazaID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pSudije_Po_Mecevima]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Pogled 7
CREATE VIEW [dbo].[pSudije_Po_Mecevima] AS
WITH 
	--Prva izvedena tabela vrsi selekciju podataka o svim Takmicarima kao i njihovoj statistici za one meceve u kojima su bili pobednici
	PrviSudija AS
   (Select Ucesnik.UcesnikID#, Ucesnik.Ime AS Sudija1_Ime, Ucesnik.Prezime AS Sudija1_Prezime, Klub.NazivKluba AS Sudija1_Klub
	FROM Klub JOIN Ucesnik ON(Klub.KlubID# = Ucesnik.KlubID#fk)
		 JOIN  Sudija ON(Sudija.SudijaID#fk = Ucesnik.UcesnikID#) 
	     JOIN Mec ON(Sudija.SudijaID#fk = Mec.Sudija1ID#fk)
	),
	DrugiSudija AS
	(Select Ucesnik.UcesnikID#,Ucesnik.Ime AS Sudija2_Ime, Ucesnik.Prezime AS Sudija2_Prezime, Klub.NazivKluba AS Sudija2_Klub
	FROM Klub JOIN Ucesnik ON(Klub.KlubID# = Ucesnik.KlubID#fk)
		 JOIN  Sudija ON(Sudija.SudijaID#fk = Ucesnik.UcesnikID#) 
	     JOIN Mec ON(Sudija.SudijaID#fk = Mec.Sudija2ID#fk)
	)
SELECT DISTINCT Mec.RedniBrojMeca#, PrviSudija.Sudija1_Ime, PrviSudija.Sudija1_Prezime, PrviSudija.Sudija1_Klub,
	   DrugiSudija.Sudija2_Ime, DrugiSudija.Sudija2_Prezime, DrugiSudija.Sudija2_Klub,
	   FazaTakmicenja.NazivFaze AS faza,
	   Disciplina.NazivDiscip AS disciplina
FROM  PrviSudija, DrugiSudija, MEC JOIN Disciplina ON(Mec.DisciplinaID#fk = Disciplina.DisciplinaID#) JOIN FazaTakmicenja ON(Mec.FazaID#fk = FazaTakmicenja.FazaID#)
WHERE PrviSudija.UcesnikID# = Mec.Sudija1ID#fk AND DrugiSudija.UcesnikID# = Mec.Sudija2ID#fk 
GO
/****** Object:  UserDefinedFunction [dbo].[kdfPrikaz_Racuna]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[kdfPrikaz_Racuna](@SifraUcesnika CHAR(3))
RETURNS TABLE 
AS
RETURN SELECT
		Objedinjeno.UcesnikID#,
		Objedinjeno.Ime,
		Objedinjeno.Prezime,
		Dodaci.Dorucak,
		Dodaci.NaplataDorucka,
		Dodaci.Rucak,
		Dodaci.NaplataRucka,
	      /*(Dodaci.NaplataRucka / Dodaci.Rucak) AS Cena_Jednog_Rucka,*/
		Dodaci.Nocenje,
		Dodaci.NaplataNocenja,
		Discipline.Rapir,
		Discipline.Longsword,
		Discipline.Sidesword,
		Discipline.UkupnaNaplata AS KotizacijaDisciplina,
		Objedinjeno.ObjedinjenaNaplata

	 FROM pPregled_Objedinjenih_Naplata AS Objedinjeno 
      JOIN pUkupna_Naplata_Dodataka AS Dodaci 
	 		ON (Objedinjeno.UcesnikID# = Dodaci.UcesnikID#) 
	 	JOIN pUkupna_Naplata_Disciplina AS Discipline 
      ON(Discipline.UcesnikID# = Objedinjeno.UcesnikID# 
AND Discipline.UcesnikID# = Dodaci.UcesnikID#)

	 WHERE Objedinjeno.UcesnikID# = @SifraUcesnika
GO
/****** Object:  Table [dbo].[Drzava]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drzava](
	[DrzavaID#] [char](3) NOT NULL,
	[NazivDrzave] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DrzavaID#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takmicar]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takmicar](
	[TakmicarID#fk] [char](3) NOT NULL,
	[DisciplinaID#fk] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TakmicarID#fk] ASC,
	[DisciplinaID#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Disciplina] ([DisciplinaID#], [NazivDiscip], [CenaDiscip]) VALUES (N'LON', N'longsword', CAST(1000.0000 AS Decimal(19, 4)))
INSERT [dbo].[Disciplina] ([DisciplinaID#], [NazivDiscip], [CenaDiscip]) VALUES (N'RAP', N'rapir', CAST(1000.0000 AS Decimal(19, 4)))
INSERT [dbo].[Disciplina] ([DisciplinaID#], [NazivDiscip], [CenaDiscip]) VALUES (N'SID', N'sidesword', CAST(1000.0000 AS Decimal(19, 4)))
GO
INSERT [dbo].[Dodatak] ([DodatakID#], [NazivDodatka], [CenaDodatka]) VALUES (N'dor', N'dorucak', CAST(800.0000 AS Decimal(19, 4)))
INSERT [dbo].[Dodatak] ([DodatakID#], [NazivDodatka], [CenaDodatka]) VALUES (N'noc', N'nocenje', CAST(3000.0000 AS Decimal(19, 4)))
INSERT [dbo].[Dodatak] ([DodatakID#], [NazivDodatka], [CenaDodatka]) VALUES (N'ruc', N'rucak', CAST(1000.0000 AS Decimal(19, 4)))
GO
INSERT [dbo].[Drzava] ([DrzavaID#], [NazivDrzave]) VALUES (N'BUG', N'Bugarska')
INSERT [dbo].[Drzava] ([DrzavaID#], [NazivDrzave]) VALUES (N'HUN', N'Madjarska')
INSERT [dbo].[Drzava] ([DrzavaID#], [NazivDrzave]) VALUES (N'SRB', N'Srbija')
GO
INSERT [dbo].[FazaTakmicenja] ([FazaID#], [NazivFaze]) VALUES (N'bronza', N'bronza mec')
INSERT [dbo].[FazaTakmicenja] ([FazaID#], [NazivFaze]) VALUES (N'cetFi ', N'cetvrtfinale')
INSERT [dbo].[FazaTakmicenja] ([FazaID#], [NazivFaze]) VALUES (N'final ', N'finale')
INSERT [dbo].[FazaTakmicenja] ([FazaID#], [NazivFaze]) VALUES (N'grup  ', N'grupna faza')
INSERT [dbo].[FazaTakmicenja] ([FazaID#], [NazivFaze]) VALUES (N'poluf ', N'polufinale')
GO
INSERT [dbo].[Klub] ([KlubID#], [NazivKluba], [DrzavaID#fk]) VALUES (N'01', N'Terca', N'SRB')
INSERT [dbo].[Klub] ([KlubID#], [NazivKluba], [DrzavaID#fk]) VALUES (N'02', N'MOTUS', N'BUG')
INSERT [dbo].[Klub] ([KlubID#], [NazivKluba], [DrzavaID#fk]) VALUES (N'03', N'ARS ENSIS', N'HUN')
GO
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (1, N'rap', N'007', N'rap', N'008', N'rap', N'005', N'rap', N'006', N'rap', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (2, N'rap', N'009', N'rap', N'010', N'rap', N'005', N'rap', N'006', N'rap', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (3, N'rap', N'001', N'rap', N'002', N'rap', N'005', N'rap', N'006', N'rap', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (4, N'rap', N'003', N'rap', N'004', N'rap', N'005', N'rap', N'006', N'rap', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (5, N'rap', N'007', N'rap', N'009', N'rap', N'005', N'rap', N'006', N'rap', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (6, N'rap', N'002', N'rap', N'003', N'rap', N'005', N'rap', N'006', N'rap', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (7, N'rap', N'007', N'rap', N'002', N'rap', N'005', N'rap', N'006', N'rap', N'final ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (8, N'rap', N'009', N'rap', N'003', N'rap', N'005', N'rap', N'006', N'rap', N'bronza')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (9, N'sid', N'007', N'sid', N'008', N'sid', N'005', N'sid', N'006', N'sid', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (10, N'sid', N'009', N'sid', N'010', N'sid', N'005', N'sid', N'006', N'sid', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (11, N'sid', N'001', N'sid', N'002', N'sid', N'005', N'sid', N'006', N'sid', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (12, N'sid', N'003', N'sid', N'004', N'sid', N'005', N'sid', N'006', N'sid', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (13, N'sid', N'008', N'sid', N'009', N'sid', N'005', N'sid', N'006', N'sid', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (14, N'sid', N'002', N'sid', N'003', N'sid', N'005', N'sid', N'006', N'sid', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (15, N'sid', N'009', N'sid', N'003', N'sid', N'005', N'sid', N'006', N'sid', N'final ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (16, N'sid', N'008', N'sid', N'002', N'sid', N'005', N'sid', N'006', N'sid', N'bronza')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (17, N'lon', N'012', N'lon', N'001', N'lon', N'003', N'lon', N'004', N'lon', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (18, N'lon', N'005', N'lon', N'006', N'lon', N'003', N'lon', N'004', N'lon', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (19, N'lon', N'008', N'lon', N'002', N'lon', N'003', N'lon', N'004', N'lon', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (20, N'lon', N'011', N'lon', N'007', N'lon', N'003', N'lon', N'004', N'lon', N'grup  ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (21, N'lon', N'001', N'lon', N'005', N'lon', N'003', N'lon', N'004', N'lon', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (22, N'lon', N'002', N'lon', N'001', N'lon', N'003', N'lon', N'004', N'lon', N'poluf ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (23, N'lon', N'005', N'lon', N'001', N'lon', N'003', N'lon', N'004', N'lon', N'final ')
INSERT [dbo].[Mec] ([RedniBrojMeca#], [DisciplinaID#fk], [PlaviBoracID#fk], [PlaviDisciplinaID#fk], [CrveniBoracID#fk], [CrveniDisciplinaID#fk], [Sudija1ID#fk], [Sudija1DisciplinaID#fk], [Sudija2ID#fk], [Sudija2DsciplinaID#fk], [FazaID#fk]) VALUES (24, N'lon', N'001', N'lon', N'002', N'lon', N'003', N'lon', N'004', N'lon', N'bronza')
GO
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'001', N'dor', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'001', N'noc', 2)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'001', N'ruc', 2)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'002', N'dor', 1)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'002', N'ruc', 1)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'003', N'dor', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'003', N'noc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'003', N'ruc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'004', N'ruc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'006', N'dor', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'007', N'dor', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'007', N'noc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'007', N'ruc', 2)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'008', N'dor', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'008', N'noc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'009', N'ruc', 3)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'010', N'dor', 1)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'011', N'dor', 1)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'011', N'noc', 2)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'012', N'dor', 1)
INSERT [dbo].[OdabraniDodatak] ([UcesnikID#fk], [DodatakID#fk], [BrojDodataka]) VALUES (N'012', N'noc', 2)
GO
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'001', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'001', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'001', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'002', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'002', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'002', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'003', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'003', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'003', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'004', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'004', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'004', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'005', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'005', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'005', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'006', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'006', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'006', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'007', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'007', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'007', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'008', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'008', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'008', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'009', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'009', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'010', N'rap')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'010', N'sid')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'011', N'lon')
INSERT [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk]) VALUES (N'012', N'lon')
GO
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (1, N'007', N'rap', 0, 1, 1, 1, 9, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (1, N'008', N'rap', 1, 0, 0, 0, 1, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (2, N'009', N'rap', 0, 0, 0, 3, 12, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (2, N'010', N'rap', 0, 0, 0, 1, 4, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (3, N'001', N'rap', 2, 0, 0, 0, 2, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (3, N'002', N'rap', 2, 0, 0, 2, 10, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (4, N'003', N'rap', 2, 0, 0, 3, 14, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (4, N'004', N'rap', 0, 0, 2, 0, 6, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (5, N'007', N'rap', 0, 0, 0, 2, 8, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (5, N'009', N'rap', 0, 0, 0, 0, 0, 2, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (6, N'002', N'rap', 1, 2, 1, 0, 8, 1, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (6, N'003', N'rap', 0, 0, 0, 0, 0, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (7, N'002', N'rap', 1, 1, 1, 2, 14, 0, N'pobeda')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (7, N'007', N'rap', 2, 3, 0, 0, 8, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (8, N'003', N'rap', 0, 1, 1, 1, 9, 0, N'poraz ')
INSERT [dbo].[Statistika] ([RedniBrojMeca#fk], [TakmicarID#fk], [DisciplinaID#fk], [JedanPoen], [DvaPoena], [TriPoena], [CetiriPoena], [UkupnoPoena], [BrojIzazova], [IshodMeca]) VALUES (8, N'009', N'rap', 2, 1, 0, 3, 16, 0, N'pobeda')
GO
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'003', N'lon')
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'004', N'lon')
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'005', N'rap')
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'005', N'sid')
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'006', N'rap')
INSERT [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk]) VALUES (N'006', N'sid')
GO
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'001', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'001', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'001', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'002', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'002', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'002', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'003', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'003', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'004', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'004', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'005', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'006', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'007', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'007', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'007', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'008', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'008', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'008', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'009', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'009', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'010', N'rap')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'010', N'sid')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'011', N'lon')
INSERT [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk]) VALUES (N'012', N'lon')
GO
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'001', N'Angel', N'Chernaev', N'02')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'002', N'Stefan', N'Milenkovic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'003', N'Borislav', N'Krustev', N'02')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'004', N'Adam', N'Milovanovic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'005', N'Aleksandar', N'Ristic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'006', N'Jelena', N'Arsenijevic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'007', N'Viktor', N'Kachovski', N'02')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'008', N'Radostin', N'Nanov', N'02')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'009', N'Pavle', N'Ilijasevic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'010', N'Marija', N'Mrakovic', N'01')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'011', N'Andras', N'Horvath', N'03')
INSERT [dbo].[Ucesnik] ([UcesnikID#], [ime], [Prezime], [KlubID#fk]) VALUES (N'012', N'Zoltan', N'Varhelyi', N'03')
GO
ALTER TABLE [dbo].[Klub]  WITH CHECK ADD FOREIGN KEY([DrzavaID#fk])
REFERENCES [dbo].[Drzava] ([DrzavaID#])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([PlaviBoracID#fk], [PlaviDisciplinaID#fk])
REFERENCES [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([CrveniBoracID#fk], [CrveniDisciplinaID#fk])
REFERENCES [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([Sudija1ID#fk], [Sudija1DisciplinaID#fk])
REFERENCES [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([Sudija2ID#fk], [Sudija2DsciplinaID#fk])
REFERENCES [dbo].[Sudija] ([SudijaID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([DisciplinaID#fk])
REFERENCES [dbo].[Disciplina] ([DisciplinaID#])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD FOREIGN KEY([FazaID#fk])
REFERENCES [dbo].[FazaTakmicenja] ([FazaID#])
GO
ALTER TABLE [dbo].[OdabraniDodatak]  WITH CHECK ADD FOREIGN KEY([DodatakID#fk])
REFERENCES [dbo].[Dodatak] ([DodatakID#])
GO
ALTER TABLE [dbo].[OdabraniDodatak]  WITH CHECK ADD FOREIGN KEY([UcesnikID#fk])
REFERENCES [dbo].[Ucesnik] ([UcesnikID#])
GO
ALTER TABLE [dbo].[RegistrovaniUcesnik]  WITH CHECK ADD FOREIGN KEY([DisciplinaID#fk])
REFERENCES [dbo].[Disciplina] ([DisciplinaID#])
GO
ALTER TABLE [dbo].[RegistrovaniUcesnik]  WITH CHECK ADD FOREIGN KEY([UcesnikID#fk])
REFERENCES [dbo].[Ucesnik] ([UcesnikID#])
GO
ALTER TABLE [dbo].[Statistika]  WITH CHECK ADD FOREIGN KEY([RedniBrojMeca#fk])
REFERENCES [dbo].[Mec] ([RedniBrojMeca#])
GO
ALTER TABLE [dbo].[Statistika]  WITH CHECK ADD FOREIGN KEY([TakmicarID#fk], [DisciplinaID#fk])
REFERENCES [dbo].[Takmicar] ([TakmicarID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Sudija]  WITH CHECK ADD FOREIGN KEY([SudijaID#fk], [DisciplinaID#fk])
REFERENCES [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Takmicar]  WITH CHECK ADD FOREIGN KEY([TakmicarID#fk], [DisciplinaID#fk])
REFERENCES [dbo].[RegistrovaniUcesnik] ([UcesnikID#fk], [DisciplinaID#fk])
GO
ALTER TABLE [dbo].[Ucesnik]  WITH CHECK ADD FOREIGN KEY([KlubID#fk])
REFERENCES [dbo].[Klub] ([KlubID#])
GO
ALTER TABLE [dbo].[Mec]  WITH CHECK ADD  CONSTRAINT [IstaDisciplina] CHECK  (([DisciplinaID#fk]=[PlaviDisciplinaID#fk] AND [PlaviDisciplinaID#fk]=[CrveniDisciplinaID#fk] AND [Sudija1DisciplinaID#fk]=[DisciplinaID#fk] AND [Sudija2DsciplinaID#fk]=[Sudija1DisciplinaID#fk]))
GO
ALTER TABLE [dbo].[Mec] CHECK CONSTRAINT [IstaDisciplina]
GO
ALTER TABLE [dbo].[Statistika]  WITH CHECK ADD  CONSTRAINT [Ishod] CHECK  (([IshodMeca]='poraz' OR [IshodMeca]='pobeda'))
GO
ALTER TABLE [dbo].[Statistika] CHECK CONSTRAINT [Ishod]
GO
/****** Object:  StoredProcedure [dbo].[kdpRegistrovanje_Novog_Ucesnika]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Procedura 1 
CREATE PROCEDURE [dbo].[kdpRegistrovanje_Novog_Ucesnika] 

--Potrebni Parametri 
@Ime NVARCHAR(30),
@Prezime NVARCHAR (30),
@SifraUcesnika CHAR(3),
@SifraKluba CHAR(2), 
@Disciplina1 CHAR(3) = NULL,
@Disciplina2 CHAR(3) = NULL,
@Disciplina3 CHAR(3) = NULL,	--Dodelom inicijalne NULL vrednosti
@BrojDorucaka INT = NULL,		--Obezbedjujemo da su svi parametri opcionalni
@BrojRucaka INT = NULL,			--MEdjutim ako su sve tri discipline null
@BrojNocenja INT = NULL		--Sama procedura vraca gresku da je obavezna bar jedna disciplina
AS 

DECLARE  
--Lokalne varijable 
@MaxDodataka AS INT 


BEGIN TRY 
	SET XACT_ABORT ON -- automatsko sprecavanje daljeg izvrsenja naredbi ukoliko dodje do greske
	SET @MaxDodataka = 3; 
	




	/*Ako korisnik iz nekog razloga unese nulu kao vrednost, polje ostaje null*/
	IF @BrojDorucaka = 0 
		BEGIN
			SET @BrojDorucaka = NULL;	
		END 
	IF @BrojRucaka = 0
		BEGIN 
			SET @BrojRucaka = NULL;
		END
	IF @BrojNocenja = 0
		BEGIN 
			SET @BrojNocenja = Null;
		END 


	/*Proveravamo za moguce duplikat unose */
	IF @SifraUcesnika IN (SELECT UcesnikID# FROM Ucesnik)
		BEGIN
			PRINT 'Sifra ucesnika vec postoji u bazi';				
		END 
	IF @SifraKluba NOT IN (SELECT KlubID# FROM Klub)
		BEGIN 
			PRINT 'Navedeni klub nije registrovan za ovaj turnir';			
		END 

/*Logicka greska bi bila voditi evidenciju o ucesniku koji ne ucestvuje ni na jednom turniru*/
	IF @Disciplina1 IS NULL AND @Disciplina2 IS NULL AND @Disciplina3 IS NULL
		BEGIN 
			PRINT 'Ucesnik mora da izabere bar jednu disciplinu';			
		END 


	/*Proveravamo da li je unos broja dodataka veci od raspolozivog maksimuma po ucesniku*/
	IF @BrojDorucaka > @MaxDodataka OR @BrojRucaka  > @MaxDodataka OR @BrojNocenja > @MaxDodataka
		BEGIN
			PRINT 'Unesena vrednost prevazilazi max_broj dodataka';
		END 

	/*Proveravamo da li je u proceduri unesena neka disciplina koja ne postoji u bazi*/
	IF  ((@Disciplina1 NOT IN(SELECT DisciplinaID# FROM Disciplina)) 
		OR (@Disciplina2 NOT IN(SELECT DisciplinaID# FROM Disciplina)) 
		OR (@Disciplina3 NOT IN(SELECT DisciplinaID# FROM Disciplina)))
		BEGIN 
			PRINT 'Ne postoji uneta discpline, proverite parametre';		
		END 







	/*Proveravamo da li je korisnik uneo vise puta istu disciplinu */
	IF(@Disciplina1 = @Disciplina2 OR @Disciplina2 = @Disciplina3 OR @Disciplina3 = @Disciplina1)	
	BEGIN
		PRINT 'Visestruk unos iste discipline nije dozvoljen';			
	END
	 

/*Zavrsavamo sa proverama greski za unete parametre 
--zapocinjemo sa transakcijom koja azurira neophodne tabele za registraciju novogUcesnika 
--Neophodno je za svaki dodatak i za svaku disciplinu proveriti ako je unet parametar 
--I za one discpline i dodatke za koje parametar nije NULL vrednost izvrsiti odgovarajuce insert naredbe */

	BEGIN    --Zapocinjemo niz naredbi 
	BEGIN TRANSACTION --Unutar niza naredbi zapocinjemo eksplicitnu transakciju 

		--Azuriramo tabelu ucesnik, sa korisnikovim unetim informacijama 
		INSERT INTO UCESNIK(UcesnikID#, Ime, Prezime, KlubID#fk)
		VALUES(@SifraUcesnika, @Ime, @Prezime, @SifraKluba) 
		PRINT 'Ubacen je novi ucesnik'

		IF (@Disciplina1 IS NOT NULL) 
			BEGIN 
				INSERT INTO RegistrovaniUcesnik(UcesnikID#fk, DisciplinaID#fk)
				VALUES(@SifraUcesnika, @Disciplina1)
				PRINT 'Ucesnik je registrovan na discplinu: ' + CAST(@Disciplina1 AS VARCHAR(10));
				END 

		IF (@Disciplina2 IS NOT NULL) 
		   BEGIN 
		    INSERT INTO RegistrovaniUcesnik(UcesnikID#fk, DisciplinaID#fk)
		    VALUES(@SifraUcesnika, @Disciplina2)
PRINT 'Ucesnik je registrovan na discplinu: ' + CAST(@Disciplina2 AS VARCHAR(10));
			END  
		IF (@Disciplina3 IS NOT NULL) 
			BEGIN 
			  INSERT INTO RegistrovaniUcesnik(UcesnikID#fk, DisciplinaID#fk)
			  VALUES(@SifraUcesnika, @Disciplina3)
			  PRINT 'Ucesnik je registrovan na discplinu: ' + CAST(@Disciplina3 AS VARCHAR(10));
			END  

		IF (@BrojDorucaka IS NOT NULL)
		  BEGIN 
		   INSERT INTO OdabraniDodatak(UcesnikID#fk, DodatakID#fk, brojDodataka)
		   VALUES(@SifraUcesnika, 'dor', @BrojDorucaka)
		   PRINT 'Odabran je Dorucak * ' + CAST(@BrojDorucaka AS VARCHAR(10)); 
		  END 
	 
		IF(@BrojRucaka IS NOT NULL)
		   BEGIN 
		     INSERT INTO OdabraniDodatak(UcesnikID#fk, DodatakID#fk, BrojDodataka)
		     VALUES(@SifraUcesnika, 'ruc', @BrojRucaka)
		     PRINT 'Odabran je Rucak * ' + CAST(@BrojRucaka AS VARCHAR(10)); 
		    END 
	 
		IF(@BrojNocenja IS NOT NULL)
		   BEGIN 
		      INSERT INTO OdabraniDodatak(UcesnikID#fk, DodatakID#fk, BrojDodataka)
		       VALUES(@SifraUcesnika, 'noc', @BrojNocenja)
			PRINT'Odabrano je nocenje * ' + CAST(@BrojNocenja AS VARCHAR(10)); 
		    END 
		/*Potvrdjujemo azuriranje tabela gorenapisanim insert narebama*/

		COMMIT TRANSACTION		
END	/* Kraj Niza naredbi */
		END TRY						
 	BEGIN CATCH 
			PRINT 'Doslo je do pojave greske!'; 
			PRINT'-----Proverite ulazne parametre -------';
			PRINT ERROR_MESSAGE();

/*Ponistavamo sve promene insert naredbi do kojih je doslo pre greske*/
			ROLLBACK TRANSACTION
			PRINT 'Procedura je ponistila promene';
		END CATCH;
GO
/****** Object:  StoredProcedure [dbo].[kdpUnos_Novog_Meca]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kdpUnos_Novog_Meca]
--potrebni parametri
@redbr int,
@discID CHAR(3),
@plaviID CHAR(3),
@crveniID CHAR(3),
@sud1ID CHAR(3),
@sud2ID CHAR(3),
@fazaID CHAR(6)
AS 
IF @redbr IN (SELECT RedniBrojMeca# FROM Mec)
		BEGIN
			PRINT 'Redni broj meca vec postoji u bazi';
		END 
IF @discID NOT IN (SELECT DisciplinaID# FROM Disciplina)
		BEGIN 
			PRINT 'Navedena disciplina nije deo ovog turnir'; 
		END 
BEGIN TRY 
/*Proveravamo da li su uneseni ucesnici i sudije registrovani na disciplinu meca*/
IF (@plaviID IN(SELECT ucesnikID#fk FROM RegistrovaniUCesnik WHERE disciplinaID#fk = @discID)
	AND @crveniID IN (SELECT ucesnikID#fk FROM RegistrovaniUCesnik WHERE disciplinaID#fk = @discID) 
	AND @sud1ID IN (SELECT ucesnikID#fk FROM RegistrovaniUCesnik WHERE disciplinaID#fk = @discID) 
	AND @sud2ID IN (SELECT ucesnikID#fk FROM RegistrovaniUCesnik WHERE disciplinaID#fk = @discID))
	BEGIN
		SET XACT_ABORT ON
			BEGIN TRANSACTION

			INSERT INTO Mec(RedniBrojMeca#,
					DisciplinaID#fk,
					PlaviBoracID#fk,
					PlaviDisciplinaID#fk,
					CrveniBoracID#fk,
					CrveniDisciplinaID#fk,
					Sudija1ID#fk,
					Sudija1DisciplinaID#fk,
					Sudija2ID#fk,
					Sudija2DsciplinaID#fk,
					FazaID#fk)
	/*Za disciplinu svakog ucesnika meca unosimo isti parametar*/							VALUES 
				    (@redbr, @discID,@plaviID, 
					@discID,	/*disciplina plavog */
					@crveniID, 
					@discID, 
					@sud1ID, 
					@discID,
					@sud2ID,   /*disciplina drugog sudije*/
					@discID,
					@fazaID)

		COMMIT TRANSACTION
	END
	ELSE PRINT'Neki od navedenih ucesnika nisu registrovani za navedenu disciplinu';
END TRY 
BEGIN CATCH
			PRINT 'Doslo je do pojave greske!'; 
			PRINT'-----Proverite ulazne parametre -------';
			PRINT ERROR_MESSAGE();

/*Ponistavamo sve promene insert naredbi do kojih je doslo pre greske*/
			ROLLBACK TRANSACTION
			PRINT 'Procedura je ponistila promene';
END CATCH;
GO
/****** Object:  StoredProcedure [dbo].[kdpUnos_Statistike_Takmicara]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[kdpUnos_Statistike_Takmicara]
									
									
	--potrebni parametri
	@redbrMec int,		/*redni broj meca*/
	@discID CHAR(3), /*null polja, svakako nece proci IF grane u proceduri */
	@takID CHAR(3), /*koje traze par ID podataka u odgovarajucoj tabeli*/
	@jedanP INT = 0,	 /*jedan poen,pa dva,pa tri,pa cetiri*/
	@dvaP INT = 0,				
	@triP INT = 0, /*0 - jer neki poeni nece nuzno biti ostvareni u toku meca*/
	@cetiriP INT = 0,
@brIzazova INT,   
	@ishod CHAR(6) /*ishod meca(pobeda/poraz)*/
									 
AS

DECLARE @ukupnoPoena INT = 0;
SET @ukupnoPoena = @jedanP + @dvaP*2 + @triP*3 + @cetiriP*4;

IF @redbrMec NOT IN (SELECT RedniBrojMeca# FROM Mec)
	BEGIN
		PRINT 'Redni broj meca vec postoji u bazi'; --prvo postoji li mec
	END	 
ELSE
 IF @discID NOT IN (SELECT DisciplinaID#fk FROM Mec WHERE Mec.RedniBrojMeca# = @redbrMec)
	BEGIN
		 PRINT 'Navedena disciplina nije deo navedenog meca'; --onda provera da neko nije greskom ubacio pogresnu disciplinu za postojeci mec
	END
  ELSE
  IF @takID NOT IN (SELECT PlaviBoracID#fk FROM Mec) AND @takID NOT IN (SELECT CrveniBoracID#fk FROM Mec)
	BEGIN
           PRINT 'Navedeni takmicar nije ucesnik navedenog meca'; 
	END
    











BEGIN TRY 
	SET XACT_ABORT ON 
      
	       INSERT INTO Statistika(RedniBrojMeca#fk,
					 TakmicarID#fk,
					 DisciplinaID#fk,
					 JedanPoen,
					 DvaPoena,
					 TriPoena,
					 CetiriPoena,
					 UkupnoPoena,
					 BrojIzazova,
					 IshodMeca )
					
		VALUES 
			(@redbrMec,		--Redni broj meca
			 @takID,
			 @discID,
			 @jedanP, --jedan poen,pa dva,pa tri,pa cetiri
			 @dvaP,
			 @triP,
			 @cetiriP,
			 @ukupnoPoena,
			 @brIzazova,  --broj izazova
			 @ishod 
								   )
				
END TRY 
BEGIN CATCH
	PRINT 'Doslo je do greske!';
	PRINT'-------PROVERITI ULAZNE PARAMETRE--------';
	PRINT 'Informacije o gresci ' + ERROR_MESSAGE();
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[kdpUnosTakmicara_Sudija]    Script Date: 16-Jun-20 7:28:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[kdpUnosTakmicara_Sudija]
@SifraUcesnika CHAR(3),
@SifraDiscipline CHAR(3),
@SudijaTakmicar VARCHAR(10)

AS 

BEGIN TRY 
	SET XACT_ABORT ON  /*Automatsko sprecavanje daljeg izvrsenja naredbi ukoliko dodje do greske*/

/*Provera da li postoji registrovani ucesnik u bazi*/
IF (SELECT UcesnikID# FROM Ucesnik WHERE UcesnikID# = @SifraUcesnika) IS NULL
BEGIN 
	PRINT'Ne postoji registrovani ucesnik sa tom sifrom';
END 


/*Provera da li postoji parametar discipline u bazi*/
IF @SifraDiscipline NOT IN (SELECT DisciplinaID# FROM Disciplina) 
BEGIN 
	PRINT 'Odabrana sifra Discipline ne odgovara postojecim disciplinama turnira'; 
END 


/*Provera da li Registrovani ucesnik vec postoji zaveden kao takmicar*/
IF @SifraUcesnika IN(SELECT TakmicarID#fk FROM Takmicar WHERE DisciplinaID#fk = @SifraDiscipline)
BEGIN
	PRINT 'Ucesnik je vec zaveden kao takmicar za datu disciplinu';
END 


/*Provera da li da li Registrovani ucesnik vec postoji zaveden kao Sudija */ 
IF @SifraUcesnika IN (SELECT SudijaID#fk FROM Sudija WHERE DisciplinaID#fk = @SifraDiscipline)
BEGIN
	PRINT 'Ucesnik je vec zaveden kao sudija za datu disciplinu';
END 

BEGIN				/*Zapocinjemo niz naredbi*/
BEGIN TRANSACTION	/*Zapocinjemo eksplicitnu transakciju*/

	

	/*Azuriranje tabela Takmicar/Sudija u zavisnosti od unetog parametra @SudijaTakmicar*/
/* Proveravamo da li korisnik u pozivu procedure zeli da smesti novog takmicara ili sudiju */ 
IF  @SudijaTakmicar = 'takmicar'
	BEGIN
		INSERT INTO Takmicar(TakmicarID#fk, DisciplinaID#fk)	
		VALUES (@SifraUcesnika,@SifraDiscipline);
		PRINT 'Unet je novi Takmicar'; 
	END 


IF	@SudijaTakmicar = 'sudija'
	BEGIN 
		INSERT INTO Sudija(SudijaID#fk, DisciplinaID#fk)
		VALUES(@SifraUcesnika, @SifraDiscipline)
		PRINT'Unet je novi Sudija';
	END 

 
IF @SudijaTakmicar != 'sudija' AND @SudijaTakmicar != 'Takmicar' 
	BEGIN
		PRINT'Morate navesti sudiju ili takmicara kao parametar zavodjenja registrovanog ucesnika u turnir'
	END 



/*Potvrdjujemo unete promene*/
COMMIT TRANSACTION	
END		/*Zatvaramo niz naredbi*/

END TRY 

BEGIN CATCH 
BEGIN
	PRINT 'Doslo je do pojave greske!';
	PRINT 'Proverite ulazne parametre';
	PRINT ERROR_MESSAGE();
	ROLLBACK TRANSACTION;
	PRINT 'Procedura je ponistila promene';
END
END CATCH
GO
USE [master]
GO
ALTER DATABASE [Swordplay_Sim] SET  READ_WRITE 
GO
