USE [PruebaDBUBI]
GO

/****** Object:  Table [dbo].[Plato]    Script Date: 21/01/2023 08:44:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plato]') AND type in (N'U'))
DROP TABLE [dbo].[Plato]
GO

/****** Object:  Table [dbo].[Plato]    Script Date: 21/01/2023 08:44:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Plato](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Precio] [decimal](18, 0) NULL,
	[Estado] [int] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioActualiza] [nvarchar](50) NULL,
	[FechaActualiza] [datetime] NULL,
 CONSTRAINT [PK_Plato] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


