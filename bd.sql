
CREATE TABLE [dbo].[ciudades](
	[ciudadesId] [bigint] IDENTITY(1,1) NOT NULL,
	[codigoCiudad] [varchar](50) NOT NULL,
	[nombreCiudad] [varchar](100) NOT NULL,
	[departamentosId] [int] NOT NULL,
 CONSTRAINT [PK_ciudades] PRIMARY KEY CLUSTERED 
(
	[ciudadesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ciudades] UNIQUE NONCLUSTERED 
(
	[codigoCiudad] ASC,
	[departamentosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[clientesId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[tipoIdentificacion] [char](1) NOT NULL,
	[identificacion] [bigint] NOT NULL,
	[digito] [tinyint] NULL,
	[fechaExpedicion] [datetime] NULL,
	[primerApellido] [varchar](40) NULL,
	[segundoApellido] [varchar](40) NULL,
	[primerNombre] [varchar](40) NOT NULL,
	[segundoNombre] [varchar](40) NULL,
	[nombreCompleto] [varchar](160) NOT NULL,
	[fechaIngreso] [datetime] NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[clientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientesCorreosElectronicos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientesCorreosElectronicos](
	[clientesCorreosElectronicosId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[clientesId] [numeric](18, 0) NOT NULL,
	[correoElectronico] [varchar](80) NOT NULL,
 CONSTRAINT [PK_clientesCorreosElectronicos] PRIMARY KEY CLUSTERED 
(
	[clientesCorreosElectronicosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientesDirecciones]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientesDirecciones](
	[clientesDireccionesId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[clientesId] [numeric](18, 0) NOT NULL,
	[direccion] [varchar](120) NOT NULL,
	[ciudadesId] [bigint] NULL,
 CONSTRAINT [PK_clientesDirecciones] PRIMARY KEY CLUSTERED 
(
	[clientesDireccionesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientesTelefonos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientesTelefonos](
	[clientesTelefonosId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[clientesId] [numeric](18, 0) NOT NULL,
	[numeroTelefono] [varchar](15) NOT NULL,
 CONSTRAINT [PK_clientesTelefonos] PRIMARY KEY CLUSTERED 
(
	[clientesTelefonosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[companias]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companias](
	[companiasId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoCompania] [varchar](4) NOT NULL,
	[nitCompania] [varchar](15) NOT NULL,
	[nombreCompania] [varchar](200) NOT NULL,
 CONSTRAINT [PK_companias] PRIMARY KEY CLUSTERED 
(
	[companiasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_companias] UNIQUE NONCLUSTERED 
(
	[codigoCompania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[departamentos](
	[departamentosId] [int] IDENTITY(1,1) NOT NULL,
	[codigoDepartamento] [varchar](50) NOT NULL,
	[nombreDepartamento] [varchar](100) NOT NULL,
	[paisesId] [smallint] NOT NULL,
 CONSTRAINT [PK_departamentos] PRIMARY KEY CLUSTERED 
(
	[departamentosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_departamentos] UNIQUE NONCLUSTERED 
(
	[codigoDepartamento] ASC,
	[paisesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gruposProductos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gruposProductos](
	[gruposProductosId] [bigint] IDENTITY(1,1) NOT NULL,
	[codigoGrupoProducto] [varchar](6) NOT NULL,
	[nombreGrupoProducto] [varchar](50) NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_gruposProductos] PRIMARY KEY CLUSTERED 
(
	[gruposProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_gruposProductos] UNIQUE NONCLUSTERED 
(
	[codigoGrupoProducto] ASC,
	[companiasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paises]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paises](
	[paisesId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoPais] [varchar](50) NOT NULL,
	[nombrePais] [varchar](80) NOT NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[paisesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_paises] UNIQUE NONCLUSTERED 
(
	[codigoPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[productosId] [bigint] IDENTITY(1,1) NOT NULL,
	[codigoProducto] [varchar](6) NOT NULL,
	[nombreProducto] [varchar](80) NOT NULL,
	[descripcion] [varchar](300) NULL,
	[imagen] [varchar](180) NULL,
	[costo] [decimal](18, 2) NULL,
	[valorVenta] [decimal](18, 2) NULL,
	[existenciasMinimas] [decimal](18, 4) NULL,
	[extistenciasActuales] [decimal](18, 4) NULL,
	[visualizaEnCaja] [bit] NOT NULL,
	[controlaEnInventario] [bit] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[productosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_productos] UNIQUE NONCLUSTERED 
(
	[codigoProducto] ASC,
	[companiasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productosAcumuladosEnVentas]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productosAcumuladosEnVentas](
	[productosAcumuladosEnVentasId] [bigint] IDENTITY(1,1) NOT NULL,
	[productosId] [bigint] NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_productosAcumuladosEnVentas] PRIMARY KEY CLUSTERED 
(
	[productosAcumuladosEnVentasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productosCompuestosAfectanStock]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productosCompuestosAfectanStock](
	[productosCompuestosId] [bigint] IDENTITY(1,1) NOT NULL,
	[productoCompuestoId] [bigint] NOT NULL,
	[productoComponeId] [bigint] NOT NULL,
	[cantidadCompone] [smallint] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_productosCompuestos] PRIMARY KEY CLUSTERED 
(
	[productosCompuestosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_productosCompuestos] UNIQUE NONCLUSTERED 
(
	[productoCompuestoId] ASC,
	[productoComponeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productosElaborados]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productosElaborados](
	[productosElaboradosId] [bigint] IDENTITY(1,1) NOT NULL,
	[codigoProductoElaborado] [varchar](6) NOT NULL,
	[nombreProductoElaborado] [varchar](50) NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_productosElaborados] PRIMARY KEY CLUSTERED 
(
	[productosElaboradosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_productosElaborados] UNIQUE NONCLUSTERED 
(
	[codigoProductoElaborado] ASC,
	[companiasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productosElaboradosContenido]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productosElaboradosContenido](
	[productosElaboradosContenidoId] [bigint] IDENTITY(1,1) NOT NULL,
	[productosElaboradosId] [bigint] NOT NULL,
	[productosId] [bigint] NOT NULL,
	[cantidad] [decimal](6, 3) NOT NULL,
 CONSTRAINT [PK_productosElaboradosContenido] PRIMARY KEY CLUSTERED 
(
	[productosElaboradosContenidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_productosElaboradosContenido] UNIQUE NONCLUSTERED 
(
	[productosElaboradosId] ASC,
	[productosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productosPorGrupos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productosPorGrupos](
	[productosPorGruposId] [bigint] IDENTITY(1,1) NOT NULL,
	[gruposProductosId] [bigint] NOT NULL,
	[tipoProducto] [char](2) NOT NULL,
	[productoId] [bigint] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_productosPorGrupos] PRIMARY KEY CLUSTERED 
(
	[productosPorGruposId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_productosPorGrupos] UNIQUE NONCLUSTERED 
(
	[gruposProductosId] ASC,
	[tipoProducto] ASC,
	[productoId] ASC,
	[companiasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salones]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salones](
	[salonesId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoSalon] [varchar](4) NOT NULL,
	[nombreSalon] [varchar](80) NOT NULL,
	[cantidadUbicaciones] [smallint] NOT NULL,
 CONSTRAINT [PK_salones] PRIMARY KEY CLUSTERED 
(
	[salonesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_salones] UNIQUE NONCLUSTERED 
(
	[codigoSalon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[seguimientoEgresosStock]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seguimientoEgresosStock](
	[seguimientoEgresosStockId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[productosId] [bigint] NOT NULL,
	[cantidad] [decimal](18, 4) NOT NULL,
	[fechaEgreso] [datetime] NOT NULL,
	[usuarioEgreso] [smallint] NOT NULL,
	[valorVentaUnitario] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Egresosstock] PRIMARY KEY CLUSTERED 
(
	[seguimientoEgresosStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[seguimientoIngresosStock]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seguimientoIngresosStock](
	[seguimientoIngresosStockId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[productosId] [bigint] NOT NULL,
	[cantidad] [decimal](18, 4) NOT NULL,
	[fechaIngreso] [datetime] NOT NULL,
	[usuarioIngreso] [smallint] NOT NULL,
	[costoUnitario] [decimal](18, 2) NULL,
 CONSTRAINT [PK_stock] PRIMARY KEY CLUSTERED 
(
	[seguimientoIngresosStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[turnos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[turnos](
	[turnosId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoTurno] [varchar](2) NOT NULL,
	[nombreTurno] [varchar](40) NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_turnos] PRIMARY KEY CLUSTERED 
(
	[turnosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_turnos] UNIQUE NONCLUSTERED 
(
	[codigoTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[turnosHorarios]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[turnosHorarios](
	[turnosHorariosId] [smallint] IDENTITY(1,1) NOT NULL,
	[turnosId] [smallint] NOT NULL,
	[dia] [nchar](10) NOT NULL,
	[horaInicia] [varchar](5) NOT NULL,
	[horaTermina] [varchar](5) NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_turnosHorarios] PRIMARY KEY CLUSTERED 
(
	[turnosHorariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_turnosHorarios] UNIQUE NONCLUSTERED 
(
	[turnosId] ASC,
	[dia] ASC,
	[horaInicia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[turnosUsuarios]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turnosUsuarios](
	[turnosUsuariosId] [smallint] IDENTITY(1,1) NOT NULL,
	[usuariosId] [smallint] NOT NULL,
	[turnosId] [smallint] NOT NULL,
 CONSTRAINT [PK_turnosUsuarios] PRIMARY KEY CLUSTERED 
(
	[turnosUsuariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_turnosUsuarios] UNIQUE NONCLUSTERED 
(
	[usuariosId] ASC,
	[turnosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ubicaciones]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ubicaciones](
	[ubicacionesId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoUbicacion] [varchar](4) NOT NULL,
	[nombreUbicacion] [varchar](80) NOT NULL,
	[tipoUbicacion] [char](1) NOT NULL,
 CONSTRAINT [PK_ubicaciones] PRIMARY KEY CLUSTERED 
(
	[ubicacionesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ubicaciones] UNIQUE NONCLUSTERED 
(
	[codigoUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ubicacionesPorSalones]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ubicacionesPorSalones](
	[ubicacionesPorSalonesId] [smallint] IDENTITY(1,1) NOT NULL,
	[salonesId] [smallint] NOT NULL,
	[ubicacionesId] [smallint] NOT NULL,
	[numeroUbicacion] [smallint] NOT NULL,
	[anchoUbicacion] [decimal](18, 9) NOT NULL,
	[altoUbicacion] [decimal](18, 9) NOT NULL,
	[anchoSalon] [decimal](18, 9) NOT NULL,
	[altoSalon] [decimal](18, 9) NOT NULL,
	[personasPorUbicacion] [smallint] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_ubicacionesPorSalones] PRIMARY KEY CLUSTERED 
(
	[ubicacionesPorSalonesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ubicacionesPorSalones] UNIQUE NONCLUSTERED 
(
	[salonesId] ASC,
	[ubicacionesId] ASC,
	[numeroUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[usuariosId] [smallint] IDENTITY(1,1) NOT NULL,
	[codigoUsuario] [varchar](4) NOT NULL,
	[nombreUsuario] [varchar](120) NOT NULL,
	[cargosId] [smallint] NOT NULL,
	[administrador] [bit] NOT NULL,
	[correoElectronico] [varchar](50) NULL,
	[clave] [varbinary](350) NOT NULL,
	[intentosClaves] [tinyint] NULL,
	[ultimoCambioClave] [datetime] NULL,
	[diasCambioClave] [tinyint] NULL,
	[cambiaClaveProximoInicioSesion] [char](1) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[usuariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_usuarios] UNIQUE NONCLUSTERED 
(
	[codigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuariosCompanias]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariosCompanias](
	[usuariosCompaniasId] [int] NOT NULL,
	[usuariosId] [smallint] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_usuariosCompanias] PRIMARY KEY CLUSTERED 
(
	[usuariosCompaniasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_usuariosCompanias] UNIQUE NONCLUSTERED 
(
	[companiasId] ASC,
	[usuariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ventaDiarias]    Script Date: 04/10/2017 03:52:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ventaDiarias](
	[ventaDiariasId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[fechaVenta] [datetime] NOT NULL,
	[consecutivo] [varchar](30) NOT NULL,
	[clientesId] [numeric](18, 0) NOT NULL,
	[productoId] [bigint] NOT NULL,
	[tipoProducto] [char](2) NOT NULL,
	[cantidad] [decimal](18, 4) NOT NULL,
	[valorUnitario] [decimal](18, 2) NOT NULL,
	[ubicacionesPorSalonesId] [smallint] NULL,
	[ususariosId] [smallint] NOT NULL,
	[companiasId] [smallint] NOT NULL,
 CONSTRAINT [PK_ventaDiarias] PRIMARY KEY CLUSTERED 
(
	[ventaDiariasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_clientesCorreosElectronicos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_clientesCorreosElectronicos] ON [dbo].[clientesCorreosElectronicos]
(
	[clientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_clientesDirecciones]    Script Date: 04/10/2017 03:52:24 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_clientesDirecciones] ON [dbo].[clientesDirecciones]
(
	[clientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_clientesTelefonos]    Script Date: 04/10/2017 03:52:24 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_clientesTelefonos] ON [dbo].[clientesTelefonos]
(
	[clientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ajustesVentasDiarias]  WITH CHECK ADD  CONSTRAINT [FK_ajustesVentasDiarias_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[ajustesVentasDiarias] CHECK CONSTRAINT [FK_ajustesVentasDiarias_companias]
GO
ALTER TABLE [dbo].[ajustesVentasDiarias]  WITH CHECK ADD  CONSTRAINT [FK_ajustesVentasDiarias_usuarios] FOREIGN KEY([usuariosId])
REFERENCES [dbo].[usuarios] ([usuariosId])
GO
ALTER TABLE [dbo].[ajustesVentasDiarias] CHECK CONSTRAINT [FK_ajustesVentasDiarias_usuarios]
GO
ALTER TABLE [dbo].[ciudades]  WITH NOCHECK ADD  CONSTRAINT [FK_ciudades_departamentos] FOREIGN KEY([departamentosId])
REFERENCES [dbo].[departamentos] ([departamentosId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ciudades] CHECK CONSTRAINT [FK_ciudades_departamentos]
GO
ALTER TABLE [dbo].[clientesCorreosElectronicos]  WITH CHECK ADD  CONSTRAINT [FK_clientesCorreosElectronicos_clientes] FOREIGN KEY([clientesId])
REFERENCES [dbo].[clientes] ([clientesId])
GO
ALTER TABLE [dbo].[clientesCorreosElectronicos] CHECK CONSTRAINT [FK_clientesCorreosElectronicos_clientes]
GO
ALTER TABLE [dbo].[clientesDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_clientesDirecciones_ciudades] FOREIGN KEY([ciudadesId])
REFERENCES [dbo].[ciudades] ([ciudadesId])
GO
ALTER TABLE [dbo].[clientesDirecciones] CHECK CONSTRAINT [FK_clientesDirecciones_ciudades]
GO
ALTER TABLE [dbo].[clientesDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_clientesDirecciones_clientes] FOREIGN KEY([clientesId])
REFERENCES [dbo].[clientes] ([clientesId])
GO
ALTER TABLE [dbo].[clientesDirecciones] CHECK CONSTRAINT [FK_clientesDirecciones_clientes]
GO
ALTER TABLE [dbo].[clientesTelefonos]  WITH CHECK ADD  CONSTRAINT [FK_clientesTelefonos_clientes] FOREIGN KEY([clientesId])
REFERENCES [dbo].[clientes] ([clientesId])
GO
ALTER TABLE [dbo].[clientesTelefonos] CHECK CONSTRAINT [FK_clientesTelefonos_clientes]
GO
ALTER TABLE [dbo].[departamentos]  WITH NOCHECK ADD  CONSTRAINT [FK_departamentos_paises] FOREIGN KEY([paisesId])
REFERENCES [dbo].[paises] ([paisesId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[departamentos] CHECK CONSTRAINT [FK_departamentos_paises]
GO
ALTER TABLE [dbo].[gruposProductos]  WITH CHECK ADD  CONSTRAINT [FK_gruposProductos_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[gruposProductos] CHECK CONSTRAINT [FK_gruposProductos_companias]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_companias]
GO
ALTER TABLE [dbo].[productosAcumuladosEnVentas]  WITH CHECK ADD  CONSTRAINT [FK_productosAcumuladosEnVentas_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[productosAcumuladosEnVentas] CHECK CONSTRAINT [FK_productosAcumuladosEnVentas_companias]
GO
ALTER TABLE [dbo].[productosAcumuladosEnVentas]  WITH CHECK ADD  CONSTRAINT [FK_productosAcumuladosEnVentas_productosAcumuladosEnVentas] FOREIGN KEY([productosId])
REFERENCES [dbo].[productos] ([productosId])
GO
ALTER TABLE [dbo].[productosAcumuladosEnVentas] CHECK CONSTRAINT [FK_productosAcumuladosEnVentas_productosAcumuladosEnVentas]
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock]  WITH CHECK ADD  CONSTRAINT [FK_productosCompuestos_productos] FOREIGN KEY([productoCompuestoId])
REFERENCES [dbo].[productos] ([productosId])
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock] CHECK CONSTRAINT [FK_productosCompuestos_productos]
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock]  WITH CHECK ADD  CONSTRAINT [FK_productosCompuestos_productos1] FOREIGN KEY([productoComponeId])
REFERENCES [dbo].[productos] ([productosId])
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock] CHECK CONSTRAINT [FK_productosCompuestos_productos1]
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock]  WITH CHECK ADD  CONSTRAINT [FK_productosCompuestosAfectanStock_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[productosCompuestosAfectanStock] CHECK CONSTRAINT [FK_productosCompuestosAfectanStock_companias]
GO
ALTER TABLE [dbo].[productosElaborados]  WITH CHECK ADD  CONSTRAINT [FK_productosElaborados_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[productosElaborados] CHECK CONSTRAINT [FK_productosElaborados_companias]
GO
ALTER TABLE [dbo].[productosElaboradosContenido]  WITH CHECK ADD  CONSTRAINT [FK_productosElaboradosContenido_productos] FOREIGN KEY([productosId])
REFERENCES [dbo].[productos] ([productosId])
GO
ALTER TABLE [dbo].[productosElaboradosContenido] CHECK CONSTRAINT [FK_productosElaboradosContenido_productos]
GO
ALTER TABLE [dbo].[productosElaboradosContenido]  WITH CHECK ADD  CONSTRAINT [FK_productosElaboradosContenido_productosElaborados] FOREIGN KEY([productosElaboradosId])
REFERENCES [dbo].[productosElaborados] ([productosElaboradosId])
GO
ALTER TABLE [dbo].[productosElaboradosContenido] CHECK CONSTRAINT [FK_productosElaboradosContenido_productosElaborados]
GO
ALTER TABLE [dbo].[productosPorGrupos]  WITH CHECK ADD  CONSTRAINT [FK_productosPorGrupos_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[productosPorGrupos] CHECK CONSTRAINT [FK_productosPorGrupos_companias]
GO
ALTER TABLE [dbo].[productosPorGrupos]  WITH CHECK ADD  CONSTRAINT [FK_productosPorGrupos_gruposProductos] FOREIGN KEY([gruposProductosId])
REFERENCES [dbo].[gruposProductos] ([gruposProductosId])
GO
ALTER TABLE [dbo].[productosPorGrupos] CHECK CONSTRAINT [FK_productosPorGrupos_gruposProductos]
GO
ALTER TABLE [dbo].[turnos]  WITH CHECK ADD  CONSTRAINT [FK_turnos_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[turnos] CHECK CONSTRAINT [FK_turnos_companias]
GO
ALTER TABLE [dbo].[turnosHorarios]  WITH CHECK ADD  CONSTRAINT [FK_turnosHorarios_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[turnosHorarios] CHECK CONSTRAINT [FK_turnosHorarios_companias]
GO
ALTER TABLE [dbo].[turnosHorarios]  WITH CHECK ADD  CONSTRAINT [FK_turnosHorarios_turnos] FOREIGN KEY([turnosId])
REFERENCES [dbo].[turnos] ([turnosId])
GO
ALTER TABLE [dbo].[turnosHorarios] CHECK CONSTRAINT [FK_turnosHorarios_turnos]
GO
ALTER TABLE [dbo].[turnosUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_turnosUsuarios_turnos] FOREIGN KEY([turnosId])
REFERENCES [dbo].[turnos] ([turnosId])
GO
ALTER TABLE [dbo].[turnosUsuarios] CHECK CONSTRAINT [FK_turnosUsuarios_turnos]
GO
ALTER TABLE [dbo].[turnosUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_turnosUsuarios_usuarios] FOREIGN KEY([usuariosId])
REFERENCES [dbo].[usuarios] ([usuariosId])
GO
ALTER TABLE [dbo].[turnosUsuarios] CHECK CONSTRAINT [FK_turnosUsuarios_usuarios]
GO
ALTER TABLE [dbo].[ubicacionesPorSalones]  WITH CHECK ADD  CONSTRAINT [FK_ubicacionesPorSalones_salones] FOREIGN KEY([salonesId])
REFERENCES [dbo].[salones] ([salonesId])
GO
ALTER TABLE [dbo].[ubicacionesPorSalones] CHECK CONSTRAINT [FK_ubicacionesPorSalones_salones]
GO
ALTER TABLE [dbo].[ubicacionesPorSalones]  WITH CHECK ADD  CONSTRAINT [FK_ubicacionesPorSalones_ubicaciones] FOREIGN KEY([ubicacionesId])
REFERENCES [dbo].[ubicaciones] ([ubicacionesId])
GO
ALTER TABLE [dbo].[ubicacionesPorSalones] CHECK CONSTRAINT [FK_ubicacionesPorSalones_ubicaciones]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_cargos] FOREIGN KEY([cargosId])
REFERENCES [dbo].[cargos] ([cargosId])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_cargos]
GO
ALTER TABLE [dbo].[usuariosCompanias]  WITH CHECK ADD  CONSTRAINT [FK_usuariosCompanias_companias] FOREIGN KEY([companiasId])
REFERENCES [dbo].[companias] ([companiasId])
GO
ALTER TABLE [dbo].[usuariosCompanias] CHECK CONSTRAINT [FK_usuariosCompanias_companias]
GO
ALTER TABLE [dbo].[usuariosCompanias]  WITH CHECK ADD  CONSTRAINT [FK_usuariosCompanias_usuarios] FOREIGN KEY([usuariosId])
REFERENCES [dbo].[usuarios] ([usuariosId])
GO
ALTER TABLE [dbo].[usuariosCompanias] CHECK CONSTRAINT [FK_usuariosCompanias_usuarios]
GO
ALTER TABLE [dbo].[ventaDiarias]  WITH CHECK ADD  CONSTRAINT [FK_ventaDiarias_usuarios] FOREIGN KEY([ususariosId])
REFERENCES [dbo].[usuarios] ([usuariosId])
GO
ALTER TABLE [dbo].[ventaDiarias] CHECK CONSTRAINT [FK_ventaDiarias_usuarios]
GO
