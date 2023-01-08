USE [master]
GO
/****** Object:  Database [STAGE_DATH]    Script Date: 1/5/2023 10:40:49 AM ******/
CREATE DATABASE [STAGE_DATH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STAGE_DATH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\STAGE_DATH.mdf' , SIZE = 2176000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'STAGE_DATH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\STAGE_DATH_log.ldf' , SIZE = 892736KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [STAGE_DATH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STAGE_DATH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STAGE_DATH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STAGE_DATH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STAGE_DATH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STAGE_DATH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STAGE_DATH] SET ARITHABORT OFF 
GO
ALTER DATABASE [STAGE_DATH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STAGE_DATH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STAGE_DATH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STAGE_DATH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STAGE_DATH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STAGE_DATH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STAGE_DATH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STAGE_DATH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STAGE_DATH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STAGE_DATH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STAGE_DATH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STAGE_DATH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STAGE_DATH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STAGE_DATH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STAGE_DATH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STAGE_DATH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STAGE_DATH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STAGE_DATH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [STAGE_DATH] SET  MULTI_USER 
GO
ALTER DATABASE [STAGE_DATH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STAGE_DATH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STAGE_DATH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STAGE_DATH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [STAGE_DATH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [STAGE_DATH] SET QUERY_STORE = OFF
GO
USE [STAGE_DATH]
GO
/****** Object:  Table [dbo].[CasesReport]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasesReport](
	[Outcome] [nvarchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[ReportingPHU] [nvarchar](100) NULL,
	[SpecimentDate] [date] NULL,
	[CaseReportedDate] [date] NULL,
	[PHUCity] [nvarchar](50) NULL,
	[TestReportedDate] [date] NULL,
	[CaseAcquisitionInfo] [nvarchar](50) NULL,
	[AccurateEpisodeDt] [date] NULL,
	[PHUAddress] [nvarchar](1000) NULL,
	[PHUWebsite] [nvarchar](1000) NULL,
	[OutbreakRelated] [nvarchar](100) NULL,
	[PHULatitude] [nvarchar](50) NULL,
	[PHULongitude] [nvarchar](50) NULL,
	[PHUPostalCode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compiled_COVID-19_Case_Details_(Canada)]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compiled_COVID-19_Case_Details_(Canada)](
	[ObjectID] [int] NOT NULL,
	[RowID] [int] NULL,
	[Date_Reported] [nvarchar](20) NULL,
	[Health_Region] [nvarchar](100) NULL,
	[Age_group] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Exposure] [nvarchar](50) NULL,
	[Case_status] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
 CONSTRAINT [PK_Compiled_COVID-19_Case_Details_(Canada)] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ongoing_outbreaks_phu]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ongoing_outbreaks_phu](
	[date] [date] NULL,
	[phu_num] [int] NULL,
	[outbreak_group] [nvarchar](100) NULL,
	[number_ongoing_outbreaks] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Public health unit]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Public health unit](
	[PHU_ID] [int] NOT NULL,
	[Reporting_PHU] [nvarchar](100) NULL,
	[Reporting_PHU_Address] [nvarchar](100) NULL,
	[Reporting_PHU_City] [nvarchar](50) NULL,
	[Reporting_PHU_PostalCode] [nvarchar](50) NULL,
	[Reporting_PHU_Website] [nvarchar](100) NULL,
	[Reporting_PHU_Latitude] [nvarchar](50) NULL,
	[Reporting_PHU_Longitude] [nvarchar](50) NULL,
 CONSTRAINT [PK_Public health unit] PRIMARY KEY CLUSTERED 
(
	[PHU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Public Health Units GROUP]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Public Health Units GROUP](
	[PHU_Group] [nvarchar](120) NULL,
	[PHU_City] [nvarchar](50) NULL,
	[PHU_Region] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vaccines_by_age_phu]    Script Date: 1/5/2023 10:40:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vaccines_by_age_phu](
	[Date] [date] NULL,
	[Phu_ID] [int] NULL,
	[Agegroup] [nvarchar](50) NULL,
	[At_least_one_dose_cumulative] [int] NULL,
	[Second_dose_cumulative] [int] NULL,
	[fully_vaccinated_cumulative] [int] NULL,
	[third_dose_cumulative] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [STAGE_DATH] SET  READ_WRITE 
GO
