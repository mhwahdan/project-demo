USE [master]
GO
/****** Object:  Database [project-databse]    Script Date: 4/19/2024 8:32:20 PM ******/
CREATE DATABASE [project-databse]
GO
ALTER DATABASE [project-databse] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project-databse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project-databse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project-databse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project-databse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project-databse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project-databse] SET ARITHABORT OFF 
GO
ALTER DATABASE [project-databse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project-databse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project-databse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project-databse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project-databse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project-databse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project-databse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project-databse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project-databse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project-databse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project-databse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project-databse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project-databse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project-databse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project-databse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project-databse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project-databse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project-databse] SET RECOVERY FULL 
GO
ALTER DATABASE [project-databse] SET  MULTI_USER 
GO
ALTER DATABASE [project-databse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project-databse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project-databse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project-databse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project-databse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [project-databse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'project-databse', N'ON'
GO
ALTER DATABASE [project-databse] SET QUERY_STORE = ON
GO
ALTER DATABASE [project-databse] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [project-databse]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 4/19/2024 8:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[isoccupied] [bit] NOT NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/19/2024 8:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([username], [password], [Id]) VALUES (N'wahdan', N'P@ssw0rd123', 1)
INSERT [dbo].[users] ([username], [password], [Id]) VALUES (N'mwahdan12345', N'12345', 2)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[rooms] ADD  CONSTRAINT [DF_rooms_isoccupied]  DEFAULT ((0)) FOR [isoccupied]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_users] FOREIGN KEY([id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_users]
GO
USE [master]
GO
ALTER DATABASE [project-databse] SET  READ_WRITE 
GO
