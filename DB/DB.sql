USE [master]
GO
/****** Object:  Database [BikeRescue_Group5_ver2]    Script Date: 7/12/2021 10:26:53 AM ******/
CREATE DATABASE [BikeRescue_Group5_ver2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BikeRescue_Group5_ver2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BikeRescue_Group5_ver2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BikeRescue_Group5_ver2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BikeRescue_Group5_ver2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BikeRescue_Group5_ver2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ARITHABORT OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET  MULTI_USER 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET QUERY_STORE = OFF
GO
USE [BikeRescue_Group5_ver2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [BikeRescue_Group5_ver2]
GO
/****** Object:  Table [dbo].[Bike]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bike](
	[BikeID] [nchar](10) NOT NULL,
	[BikeName] [nchar](10) NULL,
	[Image] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[LicensePlates] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
 CONSTRAINT [PK_Bike] PRIMARY KEY CLUSTERED 
(
	[BikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [nchar](10) NOT NULL,
	[BillName] [nchar](10) NULL,
	[Total] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[ProblemID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
	[StaffID] [nchar](10) NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillServiceDetail]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillServiceDetail](
	[BillServiceDetailID] [nchar](10) NOT NULL,
	[Quantity] [nchar](10) NULL,
	[Total] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[ServiceID] [nchar](10) NULL,
	[BillID] [nchar](10) NULL,
 CONSTRAINT [PK_BillServiceDetail] PRIMARY KEY CLUSTERED 
(
	[BillServiceDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [nchar](10) NOT NULL,
	[Status] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[ServiceID] [nchar](10) NULL,
	[FeedbackID] [nchar](10) NULL,
	[ProblemID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
	[StaffID] [nchar](10) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [nchar](10) NOT NULL,
	[FeedbackName] [nchar](10) NULL,
	[ContentFeedback] [nchar](10) NULL,
	[Star] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_Evaluate] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[ProblemID] [nchar](10) NOT NULL,
	[ProblemName] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[Address] [nchar](10) NULL,
	[Location] [nchar](10) NULL,
	[Image] [nchar](10) NULL,
	[Video] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[BikeID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
 CONSTRAINT [PK_Problem] PRIMARY KEY CLUSTERED 
(
	[ProblemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemDetail]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemDetail](
	[ProblemDetailID] [nchar](10) NOT NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[ProblemID] [nchar](10) NULL,
	[BikeID] [nchar](10) NULL,
	[RepairShopID] [nchar](10) NULL,
	[StaffID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
 CONSTRAINT [PK_ProblemDetail] PRIMARY KEY CLUSTERED 
(
	[ProblemDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairReport]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairReport](
	[RepairReportID] [nchar](10) NOT NULL,
	[Title] [nchar](10) NULL,
	[Content] [nchar](10) NULL,
	[StatusRepair] [nchar](10) NULL,
	[Price] [nchar](10) NULL,
	[Quantity] [nchar](10) NULL,
	[ServiceID] [nchar](10) NULL,
 CONSTRAINT [PK_RepairReport] PRIMARY KEY CLUSTERED 
(
	[RepairReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairReportDetail]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairReportDetail](
	[RepairReportDetailID] [nchar](10) NOT NULL,
	[CreateDate] [nchar](10) NULL,
	[TotalPrice] [nchar](10) NULL,
	[PaymentMethods] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[RepairReportID] [nchar](10) NULL,
	[StaffID] [nchar](10) NULL,
	[ProblemID] [nchar](10) NULL,
 CONSTRAINT [PK_RepairReportDetail] PRIMARY KEY CLUSTERED 
(
	[RepairReportDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairShop]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairShop](
	[RepairShopID] [nchar](10) NOT NULL,
	[RepairShopName] [nchar](10) NULL,
	[Address] [nchar](10) NULL,
	[Location] [nchar](10) NULL,
	[Image] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[RepairShopOwnerID] [nchar](10) NULL,
 CONSTRAINT [PK_RepairShop] PRIMARY KEY CLUSTERED 
(
	[RepairShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nchar](10) NOT NULL,
	[RoleName] [nchar](10) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [nchar](10) NOT NULL,
	[ServiceName] [nchar](10) NULL,
	[Price] [nchar](10) NULL,
	[Description] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[RepairShopOwnerID] [nchar](10) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceDetail]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDetail](
	[ServiceDetailID] [nchar](10) NOT NULL,
	[ServiceID] [nchar](10) NULL,
	[RepairShopID] [nchar](10) NULL,
 CONSTRAINT [PK_ServiceDetail] PRIMARY KEY CLUSTERED 
(
	[ServiceDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nchar](10) NOT NULL,
	[UserName] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[Phone] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[Address] [nchar](10) NULL,
	[Location] [nchar](10) NULL,
	[Image] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[RoleID] [nchar](10) NULL,
	[RepairShopID] [nchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReport]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReport](
	[UserReportID] [nchar](10) NOT NULL,
	[Content] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[StaffID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
 CONSTRAINT [PK_UserReport] PRIMARY KEY CLUSTERED 
(
	[UserReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherID] [nchar](10) NOT NULL,
	[VoucherName] [nchar](10) NULL,
	[Value] [nchar](10) NULL,
	[Decription] [nchar](10) NULL,
	[Quantity] [nchar](10) NULL,
	[CreateDate] [nchar](10) NULL,
	[ExpirationDate] [nchar](10) NULL,
	[AdminID] [nchar](10) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher wallet]    Script Date: 7/12/2021 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher wallet](
	[VoucherWalletID] [nchar](10) NOT NULL,
	[CustomerID] [nchar](10) NULL,
	[VoucherID] [nchar](10) NULL,
 CONSTRAINT [PK_Voucher wallet] PRIMARY KEY CLUSTERED 
(
	[VoucherWalletID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bike]  WITH CHECK ADD  CONSTRAINT [FK_Bike_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Bike] CHECK CONSTRAINT [FK_Bike_User]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Problem] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problem] ([ProblemID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Problem]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User1] FOREIGN KEY([StaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User1]
GO
ALTER TABLE [dbo].[BillServiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_BillServiceDetail_Bill] FOREIGN KEY([BillID])
REFERENCES [dbo].[Bill] ([BillID])
GO
ALTER TABLE [dbo].[BillServiceDetail] CHECK CONSTRAINT [FK_BillServiceDetail_Bill]
GO
ALTER TABLE [dbo].[BillServiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_BillServiceDetail_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[BillServiceDetail] CHECK CONSTRAINT [FK_BillServiceDetail_Service]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Feedback] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[Feedback] ([FeedbackID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Feedback]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Problem] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problem] ([ProblemID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Problem]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Service]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User1] FOREIGN KEY([StaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User1]
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Bike] FOREIGN KEY([BikeID])
REFERENCES [dbo].[Bike] ([BikeID])
GO
ALTER TABLE [dbo].[Problem] CHECK CONSTRAINT [FK_Problem_Bike]
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD  CONSTRAINT [FK_Problem_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Problem] CHECK CONSTRAINT [FK_Problem_User]
GO
ALTER TABLE [dbo].[ProblemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProblemDetail_Bike] FOREIGN KEY([BikeID])
REFERENCES [dbo].[Bike] ([BikeID])
GO
ALTER TABLE [dbo].[ProblemDetail] CHECK CONSTRAINT [FK_ProblemDetail_Bike]
GO
ALTER TABLE [dbo].[ProblemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProblemDetail_Problem] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problem] ([ProblemID])
GO
ALTER TABLE [dbo].[ProblemDetail] CHECK CONSTRAINT [FK_ProblemDetail_Problem]
GO
ALTER TABLE [dbo].[ProblemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProblemDetail_RepairShop] FOREIGN KEY([RepairShopID])
REFERENCES [dbo].[RepairShop] ([RepairShopID])
GO
ALTER TABLE [dbo].[ProblemDetail] CHECK CONSTRAINT [FK_ProblemDetail_RepairShop]
GO
ALTER TABLE [dbo].[ProblemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProblemDetail_User] FOREIGN KEY([StaffID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ProblemDetail] CHECK CONSTRAINT [FK_ProblemDetail_User]
GO
ALTER TABLE [dbo].[ProblemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProblemDetail_User1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ProblemDetail] CHECK CONSTRAINT [FK_ProblemDetail_User1]
GO
ALTER TABLE [dbo].[RepairShop]  WITH CHECK ADD  CONSTRAINT [FK_RepairShop_User] FOREIGN KEY([RepairShopOwnerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RepairShop] CHECK CONSTRAINT [FK_RepairShop_User]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_User] FOREIGN KEY([RepairShopOwnerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_User]
GO
ALTER TABLE [dbo].[ServiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_ServiceDetail_RepairShop] FOREIGN KEY([RepairShopID])
REFERENCES [dbo].[RepairShop] ([RepairShopID])
GO
ALTER TABLE [dbo].[ServiceDetail] CHECK CONSTRAINT [FK_ServiceDetail_RepairShop]
GO
ALTER TABLE [dbo].[ServiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_ServiceDetail_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[ServiceDetail] CHECK CONSTRAINT [FK_ServiceDetail_Service]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_RepairShop] FOREIGN KEY([RepairShopID])
REFERENCES [dbo].[RepairShop] ([RepairShopID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_RepairShop]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_User1] FOREIGN KEY([AdminID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_User1]
GO
ALTER TABLE [dbo].[Voucher wallet]  WITH CHECK ADD  CONSTRAINT [FK_Voucher wallet_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Voucher wallet] CHECK CONSTRAINT [FK_Voucher wallet_User]
GO
ALTER TABLE [dbo].[Voucher wallet]  WITH CHECK ADD  CONSTRAINT [FK_Voucher wallet_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[Voucher wallet] CHECK CONSTRAINT [FK_Voucher wallet_Voucher]
GO
USE [master]
GO
ALTER DATABASE [BikeRescue_Group5_ver2] SET  READ_WRITE 
GO
