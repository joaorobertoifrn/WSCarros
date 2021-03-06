USE [master]
GO
/****** Object:  Database [livro]    Script Date: 24/07/2017 20:00:05 ******/
CREATE DATABASE [livro]
GO
ALTER DATABASE [livro] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [livro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [livro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [livro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [livro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [livro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [livro] SET ARITHABORT OFF 
GO
ALTER DATABASE [livro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [livro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [livro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [livro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [livro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [livro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [livro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [livro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [livro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [livro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [livro] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [livro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [livro] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [livro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [livro] SET  MULTI_USER 
GO
ALTER DATABASE [livro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [livro] SET ENCRYPTION ON
GO
ALTER DATABASE [livro] SET QUERY_STORE = ON
GO
ALTER DATABASE [livro] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [livro]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [livro]
GO
/****** Object:  Table [dbo].[carro]    Script Date: 24/07/2017 20:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carro](
	[id] [int] IDENTITY(31,1) NOT NULL,
	[nome] [varchar](255) NULL,
	[descricao] [varchar](255) NULL,
	[url_foto] [varchar](255) NULL,
	[url_video] [varchar](255) NULL,
	[latitude] [varchar](255) NULL,
	[longitude] [varchar](255) NULL,
	[tipo] [varchar](255) NULL,
 CONSTRAINT [PK_carro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
USE [master]
GO
ALTER DATABASE [livro] SET  READ_WRITE 
GO

insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Tucker 1948','Descrição Tucker 1948','http://www.livroandroid.com.br/livro/carros/classicos/Tucker.png','http://www.livroandroid.com.br/livro/carros/classicos/tucker.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Chevrolet Corvette','Descrição Chevrolet Corvette','http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Corvette.png','http://www.livroandroid.com.br/livro/carros/classicos/corvette.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Chevrolet Impala Coupe','Descrição Chevrolet Impala Coupe','http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Impala_Coupe.png','http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_impala.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Cadillac Deville Convertible','Descrição Cadillac Deville Convertible','http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Deville_Convertible.png','http://www.livroandroid.com.br/livro/carros/classicos/cadillac_deville.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Chevrolet Bel-Air','Descrição Chevrolet Bel-Air','http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_BelAir.png','http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_bel_air.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Cadillac Eldorado','Descrição Cadillac Eldorado','http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Eldorado.png','http://www.livroandroid.com.br/livro/carros/classicos/cadillac_eldorado.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Ferrari 250 GTO','Descrição Ferrari 250 GTO','http://www.livroandroid.com.br/livro/carros/classicos/Ferrari_250_GTO.png','http://www.livroandroid.com.br/livro/carros/classicos/ferrari_gto.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Dodge Challenger','Descrição Dodge Challenger','http://www.livroandroid.com.br/livro/carros/classicos/Dodge_Challenger.png','http://www.livroandroid.com.br/livro/carros/classicos/dodge_challenger.mp4','','','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Camaro SS 1969','Descrição Camaro SS 1969','http://www.livroandroid.com.br/livro/carros/classicos/Camaro_SS.png','http://www.livroandroid.com.br/livro/carros/classicos/camaro_ss.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Ford Mustang 1976','Descrição Ford Mustang 1976','http://www.livroandroid.com.br/livro/carros/classicos/Ford_Mustang.png','http://www.livroandroid.com.br/livro/carros/classicos/ford_mustang.mp4','-23.564224','-46.653156','classicos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Ferrari FF','Descrição Ferrari FF','http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png','http://www.livroandroid.com.br/livro/carros/esportivos/ferrari_ff.mp4','44.532218','10.864019','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('AUDI GT Spyder','Descrição AUDI GT Spyder','http://www.livroandroid.com.br/livro/carros/esportivos/Audi_Spyder.png','http://www.livroandroid.com.br/livro/carros/esportivos/audi_gt.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Porsche Panamera','Descrição Porsche Panamera','http://www.livroandroid.com.br/livro/carros/esportivos/Porsche_Panamera.png','http://www.livroandroid.com.br/livro/carros/esportivos/porsche_panamera.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Lamborghini Aventador','Descrição Lamborghini Aventador','http://www.livroandroid.com.br/livro/carros/esportivos/Lamborghini_Aventador.png','http://www.livroandroid.com.br/livro/carros/esportivos/lamborghini_aventador.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Chevrolet Corvette Z06','Descrição Chevrolet Corvette Z06','http://www.livroandroid.com.br/livro/carros/esportivos/Chevrolet_Corvette_Z06.png','http://www.livroandroid.com.br/livro/carros/esportivos/chevrolet_corvette.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('BMW M5','Descrição BMW M5','http://www.livroandroid.com.br/livro/carros/esportivos/BMW.png','http://www.livroandroid.com.br/livro/carros/esportivos/bmw-m5.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Renault Megane RS Trophy','Descrição Renault Megane RS Trophy','http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png','http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Maserati Grancabrio Sport','Descrição Maserati Grancabrio Sport','http://www.livroandroid.com.br/livro/carros/esportivos/Maserati_Grancabrio_Sport.png','http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('McLAREN MP4-12C','Descrição McLAREN MP4-12C','http://www.livroandroid.com.br/livro/carros/esportivos/McLAREN.png','http://www.livroandroid.com.br/livro/carros/esportivos/mcLaren.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('MERCEDES-BENZ C63 AMG','Descrição MERCEDES-BENZ C63 AMG','http://www.livroandroid.com.br/livro/carros/esportivos/MERCEDES_BENZ_AMG.png','http://www.livroandroid.com.br/livro/carros/esportivos/mercedes.mp4','-23.564224','-46.653156','esportivos');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Bugatti Veyron','Descrição Bugatti Veyron','http://www.livroandroid.com.br/livro/carros/luxo/Bugatti_Veyron.png','http://www.livroandroid.com.br/livro/carros/luxo/bugatti_veyron.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Ferrari Enzo','Descrição Ferrari Enzo','http://www.livroandroid.com.br/livro/carros/luxo/Ferrari_Enzo.png','http://www.livroandroid.com.br/livro/carros/luxo/ferrari_enzo.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Lamborghini Reventon','Descrição Lamborghini Reventon','http://www.livroandroid.com.br/livro/carros/luxo/Lamborghini_Reventon.png','http://www.livroandroid.com.br/livro/carros/luxo/lamborghini _reventon.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Leblanc Mirabeau','Descrição Leblanc Mirabeau','http://www.livroandroid.com.br/livro/carros/luxo/Leblanc_Mirabeau.png','http://www.livroandroid.com.br/livro/carros/luxo/leblanc_mirabeau.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Shelby Supercars Ultimate','Descrição Shelby Supercars Ultimate','http://www.livroandroid.com.br/livro/carros/luxo/Shelby_Supercars_Ultimate.png','http://www.livroandroid.com.br/livro/carros/luxo/shelby.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Pagani Zonda','Descrição Pagani Zonda','http://www.livroandroid.com.br/livro/carros/luxo/Pagani_Zonda.png','http://www.livroandroid.com.br/livro/carros/luxo/pagani_zonda.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Koenigsegg CCX','Descrição Koenigsegg CCX','http://www.livroandroid.com.br/livro/carros/luxo/Koenigsegg_CCX.png','http://www.livroandroid.com.br/livro/carros/luxo/koenigsegg.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Mercedes SLR McLaren','Descrição Mercedes SLR McLaren','http://www.livroandroid.com.br/livro/carros/luxo/Mercedes_McLaren.png','http://www.livroandroid.com.br/livro/carros/luxo/mclaren_slr.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Rolls Royce Phantom','Descrição Rolls Royce Phantom','http://www.livroandroid.com.br/livro/carros/luxo/Rolls_Royce_Phantom.png','http://www.livroandroid.com.br/livro/carros/luxo/rolls_royce.mp4','-23.564224','-46.653156','luxo');
insert into carro (nome,descricao,url_foto,url_video,latitude,longitude,tipo) VALUES('Lexus LFA','Descrição Lexus LFA','http://www.livroandroid.com.br/livro/carros/luxo/Lexus_LFA.png','http://www.livroandroid.com.br/livro/carros/luxo/lexus.mp4','-23.564224','-46.653156','luxo');
