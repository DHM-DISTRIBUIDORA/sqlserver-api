USE [master]
GO
/****** Object:  Database [DHM_2023]    Script Date: 01/07/2023 01:59:17 ******/
CREATE DATABASE [DHM_2023] ON  PRIMARY 
( NAME = N'DHM_2023_Data', FILENAME = N'/var/opt/sqlserver/data/DHM_2023_data.mdf' , SIZE = 240960KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DHM_2023_Log', FILENAME = N'/var/opt/sqlserver/data/DHM_2023_log.ldf' , SIZE = 52416KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DHM_2023] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DHM_2023].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DHM_2023] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DHM_2023] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DHM_2023] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DHM_2023] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DHM_2023] SET ARITHABORT OFF 
GO
ALTER DATABASE [DHM_2023] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DHM_2023] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DHM_2023] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DHM_2023] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DHM_2023] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DHM_2023] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DHM_2023] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DHM_2023] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DHM_2023] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DHM_2023] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DHM_2023] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DHM_2023] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DHM_2023] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DHM_2023] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DHM_2023] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DHM_2023] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DHM_2023] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DHM_2023] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DHM_2023] SET  MULTI_USER 
GO
ALTER DATABASE [DHM_2023] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DHM_2023] SET DB_CHAINING OFF 
GO
USE [DHM_2023]
GO
/****** Object:  Table [dbo].[accesos]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accesos](
	[idac] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](30) NULL,
	[formu] [varchar](20) NULL,
	[cmd] [varchar](20) NULL,
	[tipo] [varchar](10) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbtabla]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbtabla](
	[idec] [int] IDENTITY(1,1) NOT NULL,
	[TipoReg] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Defecto] [int] NULL,
	[Numero01] [float] NULL,
	[Numero02] [float] NULL,
	[Numero03] [float] NULL,
	[Numero04] [float] NULL,
	[Numero05] [float] NULL,
	[Numero06] [float] NULL,
	[Numero07] [float] NULL,
	[Numero08] [float] NULL,
	[Numero09] [float] NULL,
	[Numero10] [float] NULL,
	[Numero11] [float] NULL,
	[Numero12] [float] NULL,
	[Cadena01] [varchar](64) NULL,
	[Cadena02] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[confemp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[confemp](
	[dnom] [varchar](100) NULL,
	[dprop] [varchar](100) NULL,
	[ddir] [varchar](100) NULL,
	[dtel] [varchar](75) NULL,
	[demail] [varchar](75) NULL,
	[dciu] [varchar](50) NULL,
	[dnit] [varchar](20) NULL,
	[dcip] [varchar](20) NULL,
	[dnroord] [varchar](15) NULL,
	[diniges] [datetime] NULL,
	[dtc] [real] NULL,
	[idconf] [int] NULL,
	[enper] [tinyint] NULL,
	[endia] [tinyint] NULL,
	[enchora] [datetime] NULL,
	[dtimp] [tinyint] NULL,
	[dmsup] [real] NULL,
	[dmizq] [real] NULL,
	[dimptit] [tinyint] NULL,
	[dimpbor] [tinyint] NULL,
	[prevm] [tinyint] NULL,
	[daltaauto] [tinyint] NULL,
	[dcobauto] [tinyint] NULL,
	[dpagauto] [tinyint] NULL,
	[dcodcliauto] [tinyint] NULL,
	[dcodprvauto] [tinyint] NULL,
	[dcodprdauto] [tinyint] NULL,
	[dcodalmauto] [tinyint] NULL,
	[nvfau] [tinyint] NULL,
	[nvdau] [tinyint] NULL,
	[ncfau] [tinyint] NULL,
	[ncdau] [tinyint] NULL,
	[dalfa] [varchar](15) NULL,
	[dconex] [tinyint] NULL,
	[dvcp] [tinyint] NULL,
	[dNini] [int] NULL,
	[dNfin] [int] NULL,
	[dFMS] [real] NULL,
	[dFMI] [real] NULL,
	[dfletra] [varchar](100) NULL,
	[dftam] [float] NULL,
	[dfpagare] [varchar](250) NULL,
	[dvercen] [tinyint] NULL,
	[dvenice] [tinyint] NULL,
	[dcomice] [tinyint] NULL,
	[dclieve] [tinyint] NULL,
	[dkardec] [tinyint] NULL,
	[dbusnit] [tinyint] NULL,
	[dstkmin] [tinyint] NULL,
	[dnozcli] [tinyint] NULL,
	[dnodscven] [tinyint] NULL,
	[dnodsccom] [tinyint] NULL,
	[dpeps] [tinyint] NULL,
	[dnroau] [varchar](100) NULL,
	[dordalf] [tinyint] NULL,
	[dauimp] [varchar](10) NULL,
	[dfeclim] [datetime] NULL,
	[dnsuc] [varchar](20) NULL,
	[dcfac] [varchar](100) NULL,
	[dgencc] [tinyint] NULL,
	[dcletra] [varchar](40) NULL,
	[dctam] [int] NULL,
	[dcdoc] [varchar](20) NULL,
	[dcglosa] [varchar](20) NULL,
	[dffmt] [tinyint] NULL,
	[dfth] [tinyint] NULL,
	[dflim] [int] NULL,
	[dzdir] [tinyint] NULL,
	[dfpie] [varchar](100) NULL,
	[dfdec] [tinyint] NULL,
	[dfajmc] [tinyint] NULL,
	[bmodosuc] [tinyint] NOT NULL,
	[dci] [varchar](30) NULL,
	[dcoldsf] [varchar](4) NULL,
	[dcolges] [int] NULL,
	[dmon] [varchar](50) NULL,
	[dinidia] [tinyint] NULL,
	[dmoddf] [tinyint] NULL,
	[dmodalta] [int] NULL,
	[dmcob] [tinyint] NULL,
	[ditraval] [tinyint] NOT NULL,
	[dforan] [tinyint] NOT NULL,
	[dtipotcaf] [tinyint] NOT NULL,
	[ditne] [tinyint] NULL,
	[dbven] [tinyint] NOT NULL,
	[dinei2] [tinyint] NULL,
	[dtituloNE] [varchar](30) NULL,
	[diana] [tinyint] NULL,
	[dcostos] [tinyint] NULL,
	[dsepcbte] [tinyint] NULL,
	[dmodpcos] [tinyint] NOT NULL,
	[dcambio] [tinyint] NOT NULL,
	[dtcom] [varchar](50) NULL,
	[encosvenxcen] [tinyint] NOT NULL,
	[dfir1] [varchar](50) NULL,
	[dfir2] [varchar](50) NULL,
	[dfir3] [varchar](50) NULL,
	[dfir4] [varchar](50) NULL,
	[ocucencom] [tinyint] NOT NULL,
	[ocudolcom] [tinyint] NOT NULL,
	[impdet] [tinyint] NOT NULL,
	[imphora] [tinyint] NOT NULL,
	[impdatosemp] [tinyint] NOT NULL,
	[dimprec] [tinyint] NOT NULL,
	[vpvencos] [tinyint] NOT NULL,
	[dmodventas] [tinyint] NOT NULL,
	[dmodcompras] [tinyint] NOT NULL,
	[dmodinventarios] [tinyint] NOT NULL,
	[icomcajas] [tinyint] NOT NULL,
	[dventas] [tinyint] NOT NULL,
	[dcompras] [tinyint] NOT NULL,
	[dinventarios] [tinyint] NOT NULL,
	[dcontabilidad] [tinyint] NOT NULL,
	[dbdgesant] [varchar](50) NULL,
	[dcolund] [tinyint] NULL,
	[dvalidarcbtes] [tinyint] NOT NULL,
	[idesfin] [tinyint] NULL,
	[idesvol] [tinyint] NULL,
	[dtiprod] [varchar](50) NOT NULL,
	[fmtcom] [tinyint] NOT NULL,
	[compxu] [tinyint] NOT NULL,
	[ocucajas] [tinyint] NOT NULL,
	[soloprodprov] [tinyint] NOT NULL,
	[IDclipuntoventa] [int] NOT NULL,
	[ActCatPalm] [tinyint] NOT NULL,
	[NroloteV] [tinyint] NOT NULL,
	[imprnomcor] [tinyint] NOT NULL,
	[mostrarsaldos] [tinyint] NOT NULL,
	[palmclizon] [tinyint] NOT NULL,
	[titvs] [varchar](30) NULL,
	[dccorr] [varchar](50) NULL,
	[moskxu] [tinyint] NOT NULL,
	[mospickdec] [tinyint] NOT NULL,
	[modfecent] [tinyint] NOT NULL,
	[ImpCbteRef] [tinyint] NOT NULL,
	[mododescom] [tinyint] NOT NULL,
	[IntCbtes] [real] NULL,
	[novenzon] [tinyint] NOT NULL,
	[notapie0] [varchar](200) NULL,
	[nomod2us] [tinyint] NOT NULL,
	[mvog] [tinyint] NOT NULL,
	[dmsenproc] [tinyint] NOT NULL,
	[dmsest] [tinyint] NULL,
	[palmcli] [tinyint] NOT NULL,
	[catunilever] [varchar](20) NOT NULL,
	[fgaumbody] [real] NOT NULL,
	[noimpzona] [tinyint] NOT NULL,
	[modoig] [tinyint] NOT NULL,
	[expsalir] [tinyint] NOT NULL,
	[imprazvd] [tinyint] NOT NULL,
	[palmrazon] [tinyint] NOT NULL,
	[fordprod] [tinyint] NOT NULL,
	[nesolocant] [tinyint] NOT NULL,
	[enmonex] [tinyint] NOT NULL,
	[PModPrec] [tinyint] NOT NULL,
	[palmkgs] [tinyint] NOT NULL,
	[idane] [tinyint] NOT NULL,
	[despro] [float] NOT NULL,
	[desfinpalm] [tinyint] NOT NULL,
	[impdolcob] [tinyint] NOT NULL,
	[ordselprod] [tinyint] NOT NULL,
	[Ipv2dec] [tinyint] NOT NULL,
	[frflete] [tinyint] NOT NULL,
	[prectcli] [tinyint] NOT NULL,
	[dcartera] [tinyint] NOT NULL,
	[ccmultas] [tinyint] NOT NULL,
	[dunac] [tinyint] NOT NULL,
	[palmcob] [tinyint] NOT NULL,
	[palmprec] [tinyint] NOT NULL,
	[venmpcs] [tinyint] NOT NULL,
	[palmItpc] [tinyint] NOT NULL,
	[ccmi] [real] NOT NULL,
	[ccip] [real] NOT NULL,
	[inumven] [tinyint] NOT NULL,
	[inumvenini] [int] NOT NULL,
	[icodQR] [tinyint] NOT NULL,
	[dAct] [varchar](300) NULL,
	[dTamQR] [real] NOT NULL,
	[dSoc] [tinyint] NOT NULL,
	[QRX] [real] NULL,
	[QRY] [real] NULL,
	[SANCX] [real] NULL,
	[SANCY] [real] NULL,
	[ACTEX] [real] NULL,
	[ACTEY] [real] NULL,
	[iacec] [tinyint] NULL,
	[isanc] [tinyint] NULL,
	[dFpr] [tinyint] NOT NULL,
	[fravt] [tinyint] NOT NULL,
	[LCVed] [tinyint] NOT NULL,
	[noverifenlace] [tinyint] NOT NULL,
	[dpedaut] [tinyint] NOT NULL,
	[execom] [tinyint] NOT NULL,
	[modtes] [tinyint] NOT NULL,
	[leytexto] [varchar](250) NULL,
	[leyimpr] [tinyint] NOT NULL,
	[ImpCodDir] [tinyint] NOT NULL,
	[precero] [tinyint] NOT NULL,
	[fmtser] [smallint] NOT NULL,
	[tipotxt] [tinyint] NOT NULL,
	[fgdv] [tinyint] NOT NULL,
	[fgau] [tinyint] NOT NULL,
	[leyendaan] [tinyint] NOT NULL,
	[cantcero] [tinyint] NOT NULL,
	[roipc] [tinyint] NOT NULL,
	[ordcursor] [tinyint] NOT NULL,
	[tdcli] [tinyint] NOT NULL,
	[placli] [tinyint] NOT NULL,
	[frdirvend] [tinyint] NOT NULL,
	[fgimpnom] [tinyint] NOT NULL,
	[fgcodp] [tinyint] NOT NULL,
	[fgmof] [tinyint] NOT NULL,
	[inescc] [tinyint] NOT NULL,
	[fcodol] [tinyint] NOT NULL,
	[dcodint] [varchar](50) NULL,
	[dnrorue] [varchar](50) NULL,
	[ddiradi] [varchar](150) NULL,
	[dordcbte] [tinyint] NOT NULL,
	[tpven] [tinyint] NOT NULL,
	[impnexlin] [tinyint] NOT NULL,
	[fgdes] [tinyint] NOT NULL,
	[fgimptp] [tinyint] NOT NULL,
	[fgimptc] [tinyint] NOT NULL,
	[fgimpdir] [tinyint] NOT NULL,
	[fgXaum_de] [real] NOT NULL,
	[fgYaum_de] [real] NOT NULL,
	[fgdeali] [tinyint] NOT NULL,
	[fglogoX] [real] NOT NULL,
	[fglogoY] [real] NOT NULL,
	[fglogoW] [real] NOT NULL,
	[fglogoH] [real] NOT NULL,
	[fgdeW] [real] NOT NULL,
	[fgimpcod] [tinyint] NOT NULL,
	[fgnomsub] [tinyint] NOT NULL,
	[fgtammem] [tinyint] NOT NULL,
	[verifpreccom] [tinyint] NOT NULL,
	[mosmue] [tinyint] NOT NULL,
	[actew] [real] NOT NULL,
	[acteh] [real] NOT NULL,
	[acteal] [tinyint] NOT NULL,
	[fpag] [tinyint] NOT NULL,
	[aumlitx] [real] NOT NULL,
	[aumlity] [real] NOT NULL,
	[aumqrx] [real] NOT NULL,
	[aumqry] [real] NOT NULL,
	[aumfcx] [real] NOT NULL,
	[aumfcy] [real] NOT NULL,
	[aumsanx] [real] NOT NULL,
	[aumsany] [real] NOT NULL,
	[Wlit] [real] NOT NULL,
	[ImpTP] [tinyint] NOT NULL,
	[ingxtdoc] [tinyint] NOT NULL,
	[preciomin] [real] NOT NULL,
	[venpago] [tinyint] NOT NULL,
	[ipredxp] [tinyint] NULL,
	[ImpNCP] [tinyint] NOT NULL,
	[AumLBO] [real] NOT NULL,
	[ivaxg] [tinyint] NOT NULL,
	[Xmarca] [real] NOT NULL,
	[Ymarca] [real] NOT NULL,
	[Wmarca] [real] NOT NULL,
	[Hmarca] [real] NOT NULL,
	[fgTAumX] [real] NOT NULL,
	[fgTAumY] [real] NOT NULL,
	[fgdefue] [varchar](50) NULL,
	[fgdetam] [real] NOT NULL,
	[fgnefue] [varchar](50) NULL,
	[fgnetam] [real] NOT NULL,
	[fgNIC] [tinyint] NOT NULL,
	[palmdesc] [tinyint] NOT NULL,
	[palmvpf] [tinyint] NOT NULL,
	[coleqven] [tinyint] NOT NULL,
	[clixsuc] [tinyint] NOT NULL,
	[lcdf] [tinyint] NOT NULL,
	[fgice] [tinyint] NOT NULL,
	[fgund] [tinyint] NOT NULL,
	[fgsubt] [tinyint] NOT NULL,
	[fgtus] [tinyint] NOT NULL,
	[fgdetaumx] [real] NOT NULL,
	[fgdetaumy] [real] NOT NULL,
	[fgdfaaumx] [real] NOT NULL,
	[fgdfaaumy] [real] NOT NULL,
	[fgimpdet] [tinyint] NOT NULL,
	[fgaumblim] [real] NOT NULL,
	[fgconus] [tinyint] NOT NULL,
	[fgimpdetinf] [tinyint] NOT NULL,
	[novercorr] [tinyint] NOT NULL,
	[fgtcolcan1] [varchar](25) NULL,
	[fgtcolcan2] [varchar](25) NULL,
	[ro4dec] [tinyint] NOT NULL,
	[noimpdetne] [tinyint] NOT NULL,
	[fgnoimpmem] [tinyint] NOT NULL,
	[fgnoimptit] [tinyint] NOT NULL,
	[fgnoimpnit] [tinyint] NOT NULL,
	[fgServCant] [tinyint] NOT NULL,
	[envcbxfac] [tinyint] NOT NULL,
	[dmverifsaldos] [tinyint] NOT NULL,
	[engenventes] [tinyint] NOT NULL,
	[sancalinea] [tinyint] NOT NULL,
	[fgtextocop0] [varchar](50) NULL,
	[fgtextocop1] [varchar](50) NULL,
	[fgtextocop2] [varchar](50) NULL,
	[dfacsep] [tinyint] NOT NULL,
	[fgposxsfc] [real] NOT NULL,
	[fgposysfc] [real] NOT NULL,
	[fgcuados] [tinyint] NOT NULL,
	[fgaumxcop] [real] NOT NULL,
	[fgaumycop] [real] NOT NULL,
	[dNVFP] [tinyint] NOT NULL,
	[msolofac] [tinyint] NOT NULL,
	[if3dec] [tinyint] NOT NULL,
	[fgdetancho] [real] NOT NULL,
	[dfinges] [datetime] NULL,
	[dmaycom] [tinyint] NOT NULL,
	[dNCOCR] [tinyint] NOT NULL,
	[dAUVCR] [tinyint] NOT NULL,
	[FRImpDir] [tinyint] NOT NULL,
	[modobimon] [tinyint] NOT NULL,
	[fgmemcolor] [int] NOT NULL,
	[fgtitalinea] [tinyint] NOT NULL,
	[fgtitancho] [real] NOT NULL,
	[fgtittam] [real] NOT NULL,
	[fgtitfuente] [varchar](100) NULL,
	[modoenimp] [tinyint] NOT NULL,
	[fglincolor] [int] NOT NULL,
	[fgcab2lin] [tinyint] NOT NULL,
	[fgDCaumX] [float] NOT NULL,
	[fgDCaumY] [float] NOT NULL,
	[fgcabrelleno] [tinyint] NOT NULL,
	[fgcabtextocolor] [int] NOT NULL,
	[enpagsc] [tinyint] NOT NULL,
	[lincbtes] [tinyint] NOT NULL,
	[busp] [tinyint] NOT NULL,
	[dmactcli] [tinyint] NOT NULL,
	[anumot] [tinyint] NOT NULL,
	[fgimpnomcli] [tinyint] NOT NULL,
	[descargaped] [tinyint] NOT NULL,
	[facpags] [tinyint] NOT NULL,
	[ilogorep] [tinyint] NOT NULL,
	[pedobs] [tinyint] NOT NULL,
	[fgposyini] [float] NOT NULL,
	[fglineas] [tinyint] NOT NULL,
	[fgvsdet] [varchar](100) NULL,
	[fgtititem] [varchar](50) NULL,
	[genbon] [tinyint] NOT NULL,
	[fgnota] [varchar](250) NULL,
	[fgnotaaumX] [float] NOT NULL,
	[fgnotaaumY] [float] NOT NULL,
	[fgnotaW] [float] NOT NULL,
	[fgnotaH] [float] NOT NULL,
	[fgnotaA] [tinyint] NOT NULL,
	[fgnotaT] [real] NOT NULL,
	[fgnotaF] [varchar](50) NULL,
	[fgibtd] [tinyint] NOT NULL,
	[itumax] [tinyint] NOT NULL,
	[fgimpcb] [tinyint] NOT NULL,
	[fgnitcliaumx] [float] NOT NULL,
	[fgnitcliaumY] [float] NOT NULL,
	[facnit0] [tinyint] NOT NULL,
	[idescrund] [tinyint] NOT NULL,
	[ventasdatosini] [tinyint] NOT NULL,
	[fgnotaS] [varchar](250) NULL,
	[fgnotaSaumX] [float] NOT NULL,
	[fgnotaSaumY] [float] NOT NULL,
	[fgnotaSW] [float] NOT NULL,
	[fgnotaSH] [float] NOT NULL,
	[fgnotaSA] [tinyint] NOT NULL,
	[fgnotaST] [real] NOT NULL,
	[fgnotaSF] [varchar](50) NULL,
	[fgnotaSC] [int] NOT NULL,
	[fgnotaSB] [tinyint] NOT NULL,
	[fgnotaC] [int] NOT NULL,
	[fgnotaB] [tinyint] NOT NULL,
	[fgsubtit] [varchar](250) NULL,
	[fgsubtaumX] [float] NOT NULL,
	[fgsubtaumY] [float] NOT NULL,
	[fgsubtW] [float] NOT NULL,
	[fgsubtH] [float] NOT NULL,
	[fgsubtA] [tinyint] NOT NULL,
	[fgsubtT] [real] NOT NULL,
	[fgsubtF] [varchar](50) NULL,
	[fgsubtC] [varchar](50) NULL,
	[fgsubtB] [tinyint] NOT NULL,
	[micd] [tinyint] NOT NULL,
	[vencliobli] [tinyint] NOT NULL,
	[venvenobli] [tinyint] NOT NULL,
	[fgnoic0] [tinyint] NOT NULL,
	[fgnfacolor] [int] NOT NULL,
	[fgtitcolor] [int] NOT NULL,
	[CLdoc] [tinyint] NOT NULL,
	[CLdocx] [real] NOT NULL,
	[CLdocY] [real] NOT NULL,
	[CLdocW] [real] NOT NULL,
	[CLdocH] [real] NOT NULL,
	[dminf] [real] NULL,
	[valzadic1] [tinyint] NOT NULL,
	[modofacrevcontab] [tinyint] NOT NULL,
	[selsping] [tinyint] NOT NULL,
	[vmverifcierre] [tinyint] NOT NULL,
	[ctprec] [tinyint] NOT NULL,
	[noselvend] [tinyint] NOT NULL,
	[nivdescpp] [tinyint] NOT NULL,
	[nivdescot] [tinyint] NOT NULL,
	[vdescadic] [tinyint] NOT NULL,
	[umaxauto] [tinyint] NOT NULL,
	[cobdesc] [tinyint] NOT NULL,
	[fgimphora] [tinyint] NOT NULL,
	[noimpglocta] [tinyint] NOT NULL,
	[CLdocxprev] [real] NOT NULL,
	[CLdocYprev] [real] NOT NULL,
	[fgnomclitit] [varchar](50) NOT NULL,
	[fgNologoori] [tinyint] NOT NULL,
	[ndnivel1] [tinyint] NOT NULL,
	[cbimptpf] [tinyint] NOT NULL,
	[comsf] [tinyint] NOT NULL,
	[dmactubic] [tinyint] NOT NULL,
	[noimpvenne] [tinyint] NOT NULL,
	[dvdiag] [tinyint] NOT NULL,
	[ntrasxm] [tinyint] NOT NULL,
	[mostraserv] [tinyint] NOT NULL,
	[dfchofer] [tinyint] NOT NULL,
	[dfadic] [tinyint] NOT NULL,
	[mccc] [tinyint] NOT NULL,
	[dialimanu] [tinyint] NOT NULL,
	[Mminid] [decimal](10, 2) NOT NULL,
	[venmodcant] [tinyint] NOT NULL,
	[venselserv] [tinyint] NOT NULL,
	[dmoddistrib] [tinyint] NOT NULL,
	[ComNumxA] [tinyint] NOT NULL,
	[titcliec] [varchar](50) NULL,
	[modoanu] [tinyint] NOT NULL,
	[clivalgeo] [tinyint] NOT NULL,
	[siatUsuario] [varchar](50) NULL,
	[siatPass] [varchar](50) NULL,
	[lvdm] [tinyint] NOT NULL,
	[HabFL] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_cabfac]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_cabfac](
	[idven] [varchar](30) NOT NULL,
	[vtipa] [int] NOT NULL,
	[clicod] [varchar](50) NOT NULL,
	[vfec] [datetime] NOT NULL,
	[vobs] [varchar](75) NULL,
	[vpla] [int] NOT NULL,
	[vdes] [float] NULL,
	[vtipo] [varchar](1) NULL,
	[codvendedor] [varchar](20) NULL,
	[vlatitud] [float] NULL,
	[vlongitud] [float] NULL,
	[vhora] [datetime] NULL,
	[razonsocial] [varchar](150) NULL,
	[nit] [varchar](20) NULL,
	[tipocliente] [varchar](20) NULL,
	[nombrecliente] [varchar](150) NULL,
	[vzona] [varchar](10) NULL,
	[direccion] [varchar](100) NULL,
	[telefonos] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_categorias]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_categorias](
	[catcod] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[nivel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_clientes]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_clientes](
	[clicod] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](50) NULL,
	[NIT] [varchar](15) NULL,
	[categoria] [varchar](50) NULL,
	[zona] [varchar](50) NULL,
	[estadovisita] [varchar](50) NULL,
	[motivonoventa] [varchar](150) NULL,
	[codvendedor] [varchar](20) NULL,
	[latitud] [float] NULL,
	[longitud] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_desctemp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_desctemp](
	[prdcod] [varchar](50) NOT NULL,
	[fecini] [datetime] NULL,
	[fecfin] [datetime] NULL,
	[porc] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_descxvol]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_descxvol](
	[prdcod] [varchar](50) NOT NULL,
	[fecini] [datetime] NULL,
	[fecfin] [datetime] NULL,
	[rini] [int] NOT NULL,
	[rfin] [int] NOT NULL,
	[porc] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_detalle_pedido]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_detalle_pedido](
	[pedcod] [varchar](50) NOT NULL,
	[prdcod] [varchar](50) NOT NULL,
	[cantidad] [float] NOT NULL,
	[preciounitario] [float] NOT NULL,
	[descuento] [float] NOT NULL,
	[codvendedor] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_detfac]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_detfac](
	[idven] [varchar](30) NOT NULL,
	[prdcod] [varchar](50) NOT NULL,
	[vdcan] [float] NOT NULL,
	[vdpre] [float] NOT NULL,
	[vddesc] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_doccab]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_doccab](
	[iddoc] [int] NOT NULL,
	[clicod] [varchar](50) NOT NULL,
	[dfecha] [datetime] NULL,
	[dtipod] [varchar](5) NULL,
	[dnrofa] [varchar](10) NULL,
	[dplazo] [int] NOT NULL,
	[dsaldo] [float] NOT NULL,
	[codvendedor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_docdet]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_docdet](
	[iddocdet] [int] IDENTITY(1,1) NOT NULL,
	[iddoc] [int] NOT NULL,
	[prdcod] [varchar](50) NOT NULL,
	[detcan] [float] NOT NULL,
	[detpre] [float] NOT NULL,
	[detdsc] [float] NOT NULL,
	[detimp] [float] NOT NULL,
	[detfila] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocdet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_log]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_log](
	[idlog] [int] IDENTITY(1,1) NOT NULL,
	[idiv] [int] NOT NULL,
	[idven] [int] NOT NULL,
	[idped] [varchar](30) NULL,
	[nrofac] [varchar](15) NULL,
	[nroau] [varchar](20) NULL,
	[logtipo] [varchar](10) NULL,
	[logmens] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_pago]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_pago](
	[idpago] [int] IDENTITY(1,1) NOT NULL,
	[iddoc] [varchar](50) NOT NULL,
	[montopago] [float] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[nombreusuario] [varchar](150) NOT NULL,
	[codvendedor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_pedido]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_pedido](
	[pedcod] [varchar](50) NOT NULL,
	[clicod] [varchar](50) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[observacion] [varchar](150) NOT NULL,
	[descuento] [varchar](50) NOT NULL,
	[tipopago] [varchar](50) NOT NULL,
	[nombreusuario] [varchar](150) NOT NULL,
	[tipodocumento] [varchar](50) NOT NULL,
	[fechapago] [int] NULL,
	[codvendedor] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_productos]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_productos](
	[prdcod] [varchar](50) NOT NULL,
	[catcod] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NULL,
	[Unidad] [varchar](20) NULL,
	[uxc] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[Stock] [int] NOT NULL,
	[idalm] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_visitas]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_visitas](
	[idvis] [int] IDENTITY(1,1) NOT NULL,
	[clicod] [varchar](50) NOT NULL,
	[estadovisi] [varchar](50) NOT NULL,
	[motivonovi] [varchar](10) NULL,
	[fecha] [datetime] NOT NULL,
	[codvendedor] [varchar](20) NULL,
	[observaciones] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idvis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbac]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbac](
	[idac] [int] IDENTITY(1,1) NOT NULL,
	[acfec] [datetime] NULL,
	[acord] [int] NULL,
	[actipo] [tinyint] NULL,
	[acdoc] [varchar](15) NULL,
	[acobs] [varchar](75) NULL,
	[acdet] [varchar](75) NULL,
	[idemp] [int] NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[intidvc] [int] NULL,
	[idcobaux] [int] NOT NULL,
	[acidiv] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbacaf]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbacaf](
	[idac] [int] IDENTITY(1,1) NOT NULL,
	[fecdes] [datetime] NULL,
	[fechas] [datetime] NULL,
	[tcdes] [real] NULL,
	[tchas] [real] NULL,
	[detac] [varchar](80) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idcentro] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbaccana]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbaccana](
	[idus] [tinyint] NOT NULL,
	[idan] [int] NOT NULL,
	[accest] [tinyint] NOT NULL,
	[usumod] [varchar](75) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbadic]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbadic](
	[idadic] [int] IDENTITY(1,1) NOT NULL,
	[adtip] [varchar](3) NULL,
	[adcod] [varchar](75) NULL,
	[adnom] [varchar](255) NULL,
	[addet] [varchar](255) NULL,
	[addet2] [varchar](255) NULL,
	[adusumod] [varchar](50) NULL,
	[adfecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idadic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbag]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbag](
	[idag] [int] IDENTITY(1,1) NOT NULL,
	[agcod] [varchar](20) NOT NULL,
	[agnom] [varchar](100) NOT NULL,
	[agniv] [tinyint] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[agcod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbaj]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbaj](
	[idaj] [int] IDENTITY(1,1) NOT NULL,
	[ajfec] [datetime] NULL,
	[ajord] [int] NULL,
	[ajtipo] [tinyint] NULL,
	[ajdoc] [varchar](15) NULL,
	[ajobs] [varchar](75) NULL,
	[ajdet] [varchar](75) NULL,
	[idalm] [int] NULL,
	[idemp] [int] NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[idiv] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idaj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbalm]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbalm](
	[idalm] [int] IDENTITY(1,1) NOT NULL,
	[almcod] [varchar](15) NOT NULL,
	[almnom] [varchar](100) NULL,
	[almdir] [varchar](100) NULL,
	[almtel] [varchar](20) NULL,
	[almrsp] [varchar](75) NULL,
	[almcom] [varchar](100) NULL,
	[idemp] [int] NOT NULL,
	[almtipo] [varchar](15) NULL,
	[idcli] [int] NULL,
	[almord] [int] NULL,
	[idcentro] [int] NULL,
	[almncarga] [varchar](2) NOT NULL,
	[idctaalm] [int] NOT NULL,
	[almusumod] [varchar](50) NULL,
	[almfecmod] [datetime] NULL,
	[almnsuc] [int] NOT NULL,
	[almest] [tinyint] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idalm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbalmlin]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbalmlin](
	[idal] [int] IDENTITY(1,1) NOT NULL,
	[idalm] [int] NOT NULL,
	[idlinea] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tban]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tban](
	[idan] [int] IDENTITY(1,1) NOT NULL,
	[antipo] [tinyint] NULL,
	[annom] [varchar](70) NULL,
	[idcta] [int] NULL,
	[ancod] [varchar](30) NULL,
	[anpre] [float] NULL,
	[usumod] [varchar](50) NULL,
	[idag] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbap]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbap](
	[idap] [int] IDENTITY(1,1) NOT NULL,
	[apfec] [datetime] NULL,
	[apord] [int] NULL,
	[aptipo] [tinyint] NULL,
	[apdoc] [varchar](15) NULL,
	[apobs] [varchar](75) NULL,
	[apdet] [varchar](75) NULL,
	[idemp] [int] NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[apmon] [tinyint] NOT NULL,
	[aptc] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbancos]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbancos](
	[codbanco] [int] IDENTITY(1,1) NOT NULL,
	[nrocta] [varchar](20) NULL,
	[descr] [varchar](75) NULL,
	[moncta] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbmod]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbmod](
	[idbmod] [int] NOT NULL,
	[bmoddes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbmod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbod]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbod](
	[idmov] [int] IDENTITY(1,1) NOT NULL,
	[btipo] [varchar](4) NULL,
	[idprd] [int] NOT NULL,
	[idalm] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[bdoc] [varchar](10) NULL,
	[bfec] [datetime] NULL,
	[bpcs] [float] NOT NULL,
	[bing] [float] NOT NULL,
	[bsal] [float] NOT NULL,
	[bival] [float] NOT NULL,
	[bsval] [float] NOT NULL,
	[best] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbtipp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbtipp](
	[idbtipp] [int] NOT NULL,
	[btippdes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbtipp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbtipt]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbtipt](
	[idbtipt] [int] NOT NULL,
	[btiptdes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbtipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbtiptcom]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbtiptcom](
	[idbtipt] [int] NOT NULL,
	[btiptdes] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbtipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbtiptcom2]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbtiptcom2](
	[idbtipt2] [int] NOT NULL,
	[btiptdes2] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbtipt2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcanal]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcanal](
	[idcanal] [int] NOT NULL,
	[canalcod] [varchar](10) NULL,
	[canalnom] [varchar](100) NULL,
	[idcanalpadre] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcanal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcat]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcat](
	[idcat] [int] IDENTITY(1,1) NOT NULL,
	[catnom] [varchar](100) NULL,
	[catcod] [varchar](10) NULL,
	[catidclit] [int] NOT NULL,
	[catmarc] [image] NULL,
	[catfadv] [varchar](200) NULL,
	[catfadvcolor] [int] NULL,
	[catclitp] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcbtes]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcbtes](
	[num_cod_cmprb] [varchar](11) NULL,
	[fecha] [datetime] NULL,
	[tglos] [varchar](300) NULL,
	[codbanco] [int] NULL,
	[nrocheque] [varchar](20) NULL,
	[doc] [varchar](200) NULL,
	[modif] [varchar](50) NULL,
	[modusu] [varchar](50) NULL,
	[idCBTE] [int] IDENTITY(1,1) NOT NULL,
	[idac] [int] NULL,
	[tipoac] [tinyint] NULL,
	[iden] [int] NULL,
	[tipoen] [varchar](6) NULL,
	[idcli] [int] NULL,
	[nomcli] [varchar](100) NULL,
	[nitci] [varchar](20) NULL,
	[numord] [varchar](20) NULL,
	[alfanu] [varchar](20) NULL,
	[rectipo] [tinyint] NULL,
	[enpor] [varchar](100) NULL,
	[repor] [varchar](100) NULL,
	[facpor] [varchar](100) NULL,
	[nrocta] [varchar](20) NULL,
	[nrosoc] [varchar](20) NULL,
	[valido] [tinyint] NULL,
	[mesfac] [varchar](6) NULL,
	[creusu] [varchar](50) NULL,
	[horacreacion] [datetime] NULL,
	[horamodif] [datetime] NULL,
	[cbidiv] [int] NOT NULL,
	[cbrandes] [datetime] NULL,
	[cbranhas] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCBTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcd]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcd](
	[idcd] [int] IDENTITY(1,1) NOT NULL,
	[idcom] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[idalm] [int] NOT NULL,
	[cdtipo] [int] NULL,
	[cdcan] [float] NOT NULL,
	[cdpre] [float] NOT NULL,
	[cdimp] [float] NOT NULL,
	[cdest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpe] [int] NULL,
	[cdcxu] [float] NULL,
	[cddsc] [float] NULL,
	[cdaltafec] [datetime] NULL,
	[idaltaemp] [int] NULL,
	[cdpcos] [float] NULL,
	[cdice] [float] NULL,
	[cdnf] [int] NULL,
	[idvdpr] [int] NOT NULL,
	[cdprocest] [tinyint] NOT NULL,
	[cdnrolote] [varchar](30) NULL,
	[cdfecven] [datetime] NULL,
	[cdimpus] [float] NOT NULL,
	[cddmsest] [tinyint] NULL,
	[cddescpro1] [float] NOT NULL,
	[cddescpro2] [float] NOT NULL,
	[cdexe] [float] NOT NULL,
	[cdcanmu] [float] NOT NULL,
	[cdpesop] [float] NOT NULL,
	[cdsercan] [float] NULL,
	[cdserpre] [float] NULL,
	[cdserimp] [float] NULL,
	[cdserdet] [varchar](255) NULL,
	[cdvalus] [float] NOT NULL,
	[cdpreus] [float] NOT NULL,
	[cddscus] [float] NOT NULL,
	[cdpcosus] [float] NOT NULL,
	[cddescpro1us] [float] NOT NULL,
	[cddescpro2us] [float] NOT NULL,
	[cdexeus] [float] NOT NULL,
	[cdval] [float] NOT NULL,
	[cdtc] [float] NOT NULL,
	[cdiceus] [float] NOT NULL,
	[cdidcen] [int] NOT NULL,
	[cdiddep] [int] NOT NULL,
	[cdidobj] [int] NOT NULL,
	[cdfle] [decimal](16, 5) NOT NULL,
	[cdfleus] [decimal](16, 5) NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbciu]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbciu](
	[idciu] [int] NOT NULL,
	[ciucod] [varchar](10) NULL,
	[ciunom] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idciu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcli]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcli](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[clicod] [varchar](50) NOT NULL,
	[clinom] [varchar](150) NULL,
	[cliape] [varchar](100) NULL,
	[clinit] [varchar](20) NULL,
	[clidir] [varchar](100) NULL,
	[cliloc] [varchar](50) NULL,
	[clizona] [varchar](30) NULL,
	[clidep] [varchar](20) NULL,
	[clitel] [varchar](20) NULL,
	[clifax] [varchar](20) NULL,
	[clicom] [varchar](100) NULL,
	[cliemail] [varchar](75) NULL,
	[clitipgar] [varchar](20) NULL,
	[clitlimcre] [float] NULL,
	[clilimau] [varchar](75) NULL,
	[cliforpag] [varchar](30) NULL,
	[idclit] [int] NULL,
	[clitipdoc] [varchar](20) NULL,
	[idclir] [int] NULL,
	[clisic] [float] NULL,
	[cliplazo] [int] NULL,
	[idconf] [int] NULL,
	[cliest] [tinyint] NULL,
	[idz] [int] NULL,
	[clicuo] [float] NULL,
	[cliuv] [varchar](10) NULL,
	[climz] [varchar](10) NULL,
	[clifing] [datetime] NULL,
	[idds] [int] NULL,
	[climon] [tinyint] NOT NULL,
	[idcat] [int] NOT NULL,
	[cliadic] [varchar](100) NULL,
	[iddepcli] [int] NULL,
	[clidesfin] [float] NOT NULL,
	[clidirnro] [varchar](200) NULL,
	[cliidemp] [int] NOT NULL,
	[cliinter] [float] NOT NULL,
	[idciu] [int] NOT NULL,
	[idloc] [int] NOT NULL,
	[clirazon] [varchar](150) NULL,
	[idcanal] [int] NOT NULL,
	[dmsest] [tinyint] NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[clicel] [varchar](50) NULL,
	[cliote] [varchar](50) NULL,
	[cliico] [varchar](250) NULL,
	[clilat] [decimal](24, 18) NOT NULL,
	[clilon] [decimal](24, 18) NOT NULL,
	[cliidcta] [int] NULL,
	[idrg] [int] NOT NULL,
	[cliidtipo] [varchar](10) NOT NULL,
	[clireprs] [varchar](150) NULL,
	[clireprsci] [varchar](20) NULL,
	[clicicompl] [varchar](5) NULL,
	[clidocid] [int] NOT NULL,
	[climpid] [int] NOT NULL,
	[climpdoc] [varchar](50) NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcliprec]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcliprec](
	[idcpr] [int] IDENTITY(1,1) NOT NULL,
	[idcli] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[cprval] [float] NOT NULL,
	[cprtipo] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcpr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbclireg]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclireg](
	[idclir] [int] IDENTITY(1,1) NOT NULL,
	[clirnom] [varchar](75) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbclirg]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclirg](
	[idrg] [int] NOT NULL,
	[rgnom] [varchar](150) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idrg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbclitipo]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclitipo](
	[idclit] [int] NULL,
	[clitnom] [varchar](30) NULL,
	[clitcod] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbclitp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclitp](
	[ctipo] [int] NULL,
	[clitpnom] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcm]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcm](
	[idcm] [int] IDENTITY(1,1) NOT NULL,
	[mes] [tinyint] NULL,
	[año] [smallint] NULL,
	[estado] [varchar](10) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[dia] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcmp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcmp](
	[idcmp] [int] IDENTITY(1,1) NOT NULL,
	[idcli] [int] NULL,
	[idemp] [int] NULL,
	[cmpfec] [datetime] NULL,
	[cmpdoc] [varchar](15) NULL,
	[cmpdet] [varchar](50) NULL,
	[usuario] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[usumod] [varchar](50) NULL,
	[cmpmon] [tinyint] NOT NULL,
	[cmptc] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcmp_prv]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcmp_prv](
	[idcmp] [int] IDENTITY(1,1) NOT NULL,
	[idprv] [int] NULL,
	[idemp] [int] NULL,
	[cmpfec] [datetime] NULL,
	[cmpdoc] [varchar](15) NULL,
	[cmpdet] [varchar](50) NULL,
	[usuario] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[cmpmon] [tinyint] NOT NULL,
	[cmptc] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcmu]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcmu](
	[idcmu] [int] IDENTITY(1,1) NOT NULL,
	[idcom] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[cmunro] [float] NOT NULL,
	[cmutal] [float] NOT NULL,
	[cmugrm] [float] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcmu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcob]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcob](
	[idcob] [int] IDENTITY(1,1) NOT NULL,
	[idven] [int] NOT NULL,
	[cdoc] [varchar](15) NULL,
	[cdet] [varchar](100) NULL,
	[cfec] [datetime] NULL,
	[ctipo] [int] NULL,
	[cimp] [float] NOT NULL,
	[cest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idac] [int] NULL,
	[idemp] [int] NULL,
	[bord] [int] NULL,
	[idcli] [int] NULL,
	[idiv] [int] NULL,
	[idctabco] [int] NOT NULL,
	[cobcambio] [float] NOT NULL,
	[cdoccta] [varchar](50) NULL,
	[ctipodoc] [tinyint] NOT NULL,
	[cbancli] [varchar](50) NULL,
	[cpagadocon] [float] NOT NULL,
	[cobidtg] [int] NULL,
	[cfectr] [datetime] NULL,
	[cdetmod] [varchar](100) NULL,
	[cnrocon] [varchar](50) NOT NULL,
	[cbmoneda] [tinyint] NOT NULL,
	[cbtc] [float] NOT NULL,
	[cidcen] [int] NOT NULL,
	[cimpus] [float] NOT NULL,
	[cpagpor] [varchar](200) NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcoldes]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcoldes](
	[idcode] [int] IDENTITY(1,1) NOT NULL,
	[codetabla] [varchar](30) NOT NULL,
	[codecod] [varchar](30) NOT NULL,
	[codenom] [varchar](30) NOT NULL,
	[codetip] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcom]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcom](
	[idcom] [int] IDENTITY(1,1) NOT NULL,
	[ctipo] [varchar](4) NULL,
	[ctipa] [tinyint] NULL,
	[idprv] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[cdoc] [varchar](30) NULL,
	[cfec] [datetime] NULL,
	[cdet] [varchar](100) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[cpla] [int] NULL,
	[ctipp] [tinyint] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idap] [int] NULL,
	[cord] [int] NULL,
	[cnord] [float] NULL,
	[calfa] [varchar](15) NULL,
	[cnfac] [varchar](15) NULL,
	[cnau] [varchar](100) NULL,
	[ccon] [varchar](20) NULL,
	[iddev] [int] NULL,
	[idiv] [int] NULL,
	[idort] [int] NULL,
	[idcen] [int] NOT NULL,
	[cncarga] [int] NOT NULL,
	[ctc] [real] NOT NULL,
	[cmescierre] [varchar](20) NULL,
	[idclic] [int] NOT NULL,
	[cfecfac] [datetime] NULL,
	[cdmsest] [tinyint] NULL,
	[idcbteprov] [int] NOT NULL,
	[cfectr] [datetime] NULL,
	[cimpdev] [float] NOT NULL,
	[cctadev] [float] NOT NULL,
	[cdetmod] [varchar](100) NULL,
	[idpz] [int] NOT NULL,
	[cest] [varchar](3) NOT NULL,
	[cnpol] [varchar](30) NOT NULL,
	[ctipocom] [tinyint] NOT NULL,
	[civaimp] [decimal](18, 2) NOT NULL,
	[cmon] [tinyint] NOT NULL,
	[cmoneda] [tinyint] NOT NULL,
	[cfecd] [datetime] NULL,
	[ctiporesp] [varchar](50) NULL,
	[cint] [varchar](150) NULL,
	[csol] [varchar](150) NULL,
	[idcomfle] [int] NOT NULL,
	[cfelec] [tinyint] NOT NULL,
	[cidalm] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbconcu]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbconcu](
	[tipo] [varchar](4) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCortes]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCortes](
	[idcor] [int] NOT NULL,
	[cormon] [varchar](50) NULL,
	[corefe] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcp](
	[idcp] [int] IDENTITY(1,1) NOT NULL,
	[idcom] [int] NOT NULL,
	[idpag] [int] NOT NULL,
	[cptipo] [int] NULL,
	[cpimp] [float] NOT NULL,
	[cpest] [tinyint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[cpimpus] [float] NOT NULL,
	[idcmp] [int] NOT NULL,
	[cpidcen] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCtas]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCtas](
	[cod_cta] [varchar](30) NULL,
	[nom_cta] [varchar](100) NULL,
	[nro_nivel] [int] NULL,
	[moneda] [varchar](3) NULL,
	[ctadisp] [tinyint] NULL,
	[idcta] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [tinyint] NULL,
	[coden] [varchar](6) NULL,
	[taj] [tinyint] NULL,
	[ac] [tinyint] NULL,
	[ar] [tinyint] NULL,
	[bancocta] [varchar](50) NULL,
	[banconit] [varchar](20) NULL,
	[ctaop] [tinyint] NULL,
	[glosacta] [varchar](255) NULL,
	[codevo] [varchar](50) NULL,
	[codflu] [varchar](50) NULL,
	[codsiat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbctasaf]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbctasaf](
	[idaf] [int] IDENTITY(1,1) NOT NULL,
	[idctaaf] [int] NULL,
	[idctadep] [int] NULL,
	[idctaac] [int] NULL,
	[depaf] [real] NULL,
	[aftipo] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbctl]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbctl](
	[idctl] [int] IDENTITY(1,1) NOT NULL,
	[ctlcap] [varchar](50) NULL,
	[ctlnom] [varchar](20) NULL,
	[ctlfrm] [varchar](20) NULL,
	[ctlfrmcap] [varchar](50) NULL,
	[ctltipo] [varchar](9) NULL,
	[ctlniv] [tinyint] NOT NULL,
	[ctlmod] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbctrgrp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbctrgrp](
	[idcg] [int] NOT NULL,
	[cgnom] [varchar](150) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbctros]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbctros](
	[idcentro] [int] IDENTITY(1,1) NOT NULL,
	[codcentro] [varchar](10) NULL,
	[nombre] [varchar](50) NULL,
	[idcg] [int] NOT NULL,
	[sucreg] [int] NULL,
	[cenusumod] [varchar](50) NULL,
	[cenfecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbctsret]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbctsret](
	[idctsret] [int] IDENTITY(1,1) NOT NULL,
	[codctsret] [varchar](10) NULL,
	[desctsret] [varchar](100) NULL,
	[idcta] [int] NOT NULL,
	[porctsret] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[idctsret] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbdep]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbdep](
	[iddep] [int] IDENTITY(1,1) NOT NULL,
	[depcod] [varchar](15) NULL,
	[depnom] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDisp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDisp](
	[cod_cta] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbdocr]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbdocr](
	[drdes] [varchar](50) NOT NULL,
	[drtipo] [varchar](10) NOT NULL,
	[drpos] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbdosif]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbdosif](
	[iddos] [int] IDENTITY(1,1) NOT NULL,
	[dnau] [varchar](100) NULL,
	[nsuc] [int] NOT NULL,
	[dini] [int] NOT NULL,
	[dfli] [datetime] NOT NULL,
	[dlla] [varchar](255) NOT NULL,
	[dusumod] [varchar](50) NULL,
	[dfecmod] [datetime] NULL,
	[dtfac] [tinyint] NOT NULL,
	[daeco] [varchar](255) NULL,
	[dley] [varchar](255) NULL,
	[dmodonum] [tinyint] NULL,
	[daeco2] [varchar](255) NULL,
	[dexento] [float] NOT NULL,
	[dvtipo] [varchar](10) NOT NULL,
	[dest] [tinyint] NOT NULL,
	[dalq] [tinyint] NOT NULL,
	[didprv] [int] NOT NULL,
	[dfacter] [tinyint] NOT NULL,
	[dservcan] [tinyint] NULL,
	[destado] [varchar](1) NOT NULL,
	[dfecreg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbds]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbds](
	[idds] [int] IDENTITY(1,1) NOT NULL,
	[idprd] [int] NULL,
	[dstipo] [tinyint] NULL,
	[dsfini] [datetime] NULL,
	[dsffin] [datetime] NULL,
	[dsdet] [varchar](50) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[dsbase] [float] NULL,
	[dsba] [float] NULL,
	[dsbaimp] [float] NULL,
	[dsdia] [smallint] NULL,
	[dsimp] [float] NULL,
	[dsprc] [real] NOT NULL,
	[idpg] [int] NOT NULL,
	[idprdsel] [int] NOT NULL,
	[dsmay] [tinyint] NOT NULL,
	[dsmin] [tinyint] NOT NULL,
	[dsage] [tinyint] NOT NULL,
	[dssm] [tinyint] NOT NULL,
	[dsesp] [tinyint] NOT NULL,
	[dsp6] [tinyint] NOT NULL,
	[dsp7] [tinyint] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbdsd]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbdsd](
	[iddsd] [int] IDENTITY(1,1) NOT NULL,
	[idds] [int] NULL,
	[dsdtipo] [tinyint] NULL,
	[dsdini] [float] NULL,
	[dsdfin] [float] NULL,
	[dsdimp] [float] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[iditem] [int] NOT NULL,
	[dsdmay] [decimal](12, 4) NOT NULL,
	[dsdmin] [decimal](12, 4) NOT NULL,
	[dsdage] [decimal](12, 4) NOT NULL,
	[dsdsm] [decimal](12, 4) NOT NULL,
	[dsdesp] [decimal](12, 4) NOT NULL,
	[dsdp6] [decimal](12, 4) NOT NULL,
	[dsdp7] [decimal](12, 4) NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddsd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbed]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbed](
	[ided] [int] IDENTITY(1,1) NOT NULL,
	[idpe] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[edtipo] [int] NULL,
	[edcan] [float] NOT NULL,
	[edpre] [float] NOT NULL,
	[edimp] [float] NOT NULL,
	[edest] [tinyint] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[edcxu] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbemp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbemp](
	[idemp] [int] IDENTITY(1,1) NOT NULL,
	[empcod] [varchar](75) NOT NULL,
	[empnom] [varchar](75) NULL,
	[empdir] [varchar](75) NULL,
	[emptel] [varchar](20) NULL,
	[idemt] [int] NULL,
	[empcom] [varchar](75) NULL,
	[emppos] [smallint] NULL,
	[idus] [int] NULL,
	[empest] [tinyint] NOT NULL,
	[empflete] [real] NOT NULL,
	[empemail] [varchar](50) NULL,
	[empape] [varchar](50) NULL,
	[idconf] [tinyint] NOT NULL,
	[dmsest] [tinyint] NULL,
	[empusumod] [varchar](50) NULL,
	[empfecmod] [datetime] NULL,
	[empnsuc] [int] NOT NULL,
	[emptpag] [tinyint] NOT NULL,
	[empidalm] [int] NOT NULL,
	[idempSup] [int] NULL,
	[empci] [varchar](20) NULL,
	[empncon] [varchar](50) NULL,
	[empconfini] [datetime] NULL,
	[empconffin] [datetime] NULL,
	[empcomis] [tinyint] NOT NULL,
	[empraz] [varchar](150) NULL,
	[empidan] [int] NOT NULL,
	[empimpr] [varchar](255) NULL,
	[empplaca] [varchar](20) NULL,
	[empmarca] [varchar](50) NULL,
	[empcolor] [varchar](30) NULL,
	[empmarc] [image] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idemp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbemt]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbemt](
	[idemt] [int] NULL,
	[emtnom] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbenco]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbenco](
	[iden] [int] IDENTITY(1,1) NOT NULL,
	[enfd] [datetime] NULL,
	[enfh] [datetime] NULL,
	[enfcbte] [datetime] NULL,
	[endet] [varchar](100) NULL,
	[idDoc] [int] NULL,
	[entipo] [varchar](6) NULL,
	[enhora] [datetime] NULL,
	[ensuc] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbencta]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbencta](
	[idec] [int] IDENTITY(1,1) NOT NULL,
	[idcta] [int] NULL,
	[tipoen] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbest]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbest](
	[idest] [int] NOT NULL,
	[estdes] [varchar](50) NULL,
	[estcod] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfac]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfac](
	[idfac] [int] IDENTITY(1,1) NOT NULL,
	[idven] [int] NOT NULL,
	[idcli] [int] NOT NULL,
	[ftipo] [tinyint] NOT NULL,
	[ffec] [datetime] NULL,
	[fnau] [decimal](18, 0) NOT NULL,
	[fnro] [int] NOT NULL,
	[fnit] [varchar](20) NOT NULL,
	[fraz] [varchar](200) NOT NULL,
	[fccon] [varchar](20) NOT NULL,
	[fest] [varchar](1) NOT NULL,
	[fdes] [float] NOT NULL,
	[ftc] [float] NOT NULL,
	[sucreg] [int] NOT NULL,
	[fusumod] [varchar](50) NULL,
	[ffecmod] [datetime] NULL,
	[fdet] [varchar](200) NULL,
	[fcicompl] [varchar](5) NULL,
	[fdocid] [int] NOT NULL,
	[fmpid] [int] NOT NULL,
	[fmpdoc] [varchar](50) NULL,
	[femid] [int] NOT NULL,
	[fnaus] [varchar](100) NULL,
	[fcompl] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idfac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfacdet]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfacdet](
	[idfd] [int] IDENTITY(1,1) NOT NULL,
	[idfac] [int] NOT NULL,
	[idsal] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[fdund] [varchar](20) NOT NULL,
	[fdcan] [float] NOT NULL,
	[fduxc] [int] NOT NULL,
	[fdpre] [float] NOT NULL,
	[fddes] [float] NOT NULL,
	[fdice] [float] NOT NULL,
	[fdexe] [float] NOT NULL,
	[fdimp] [float] NOT NULL,
	[fddet] [varchar](255) NULL,
	[fdnfi] [int] NOT NULL,
	[fusumod] [varchar](50) NULL,
	[ffecmod] [datetime] NULL,
	[fdidvd] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfacpl]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfacpl](
	[idpl] [int] IDENTITY(1,1) NOT NULL,
	[idven] [int] NOT NULL,
	[pltip] [varchar](4) NULL,
	[plncu] [smallint] NULL,
	[plfec] [datetime] NULL,
	[pldet] [varchar](75) NULL,
	[plimp] [float] NULL,
	[plint] [float] NULL,
	[pltot] [float] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfcom]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfcom](
	[idc] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[NIT] [varchar](20) NULL,
	[NoFac] [varchar](20) NULL,
	[nof] [varchar](15) NULL,
	[alfa] [varchar](20) NULL,
	[tipofac] [tinyint] NULL,
	[nropol] [varchar](20) NOT NULL,
	[nroorden] [varchar](20) NULL,
	[RazonSocial] [varchar](240) NULL,
	[totalfac] [float] NULL,
	[totalice] [float] NULL,
	[impexe] [float] NULL,
	[impneto] [float] NULL,
	[credfis] [float] NULL,
	[nroau] [varchar](100) NULL,
	[codcon] [varchar](20) NULL,
	[nfila] [int] NULL,
	[idprvfcom] [int] NOT NULL,
	[descbon] [float] NOT NULL,
	[fcusuario] [varchar](50) NULL,
	[fcform] [float] NOT NULL,
	[fcprecin] [float] NOT NULL,
	[fcaux] [float] NOT NULL,
	[seesp] [tinyint] NOT NULL,
	[seiehd] [decimal](14, 2) NOT NULL,
	[seipj] [decimal](14, 2) NOT NULL,
	[setasas] [decimal](14, 2) NOT NULL,
	[seotros] [decimal](14, 2) NOT NULL,
	[segratc] [decimal](14, 2) NOT NULL,
	[sesubt] [decimal](14, 2) NOT NULL,
	[segift] [decimal](14, 2) NOT NULL,
	[fcfelec] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfcomimp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfcomimp](
	[idfi] [int] IDENTITY(1,1) NOT NULL,
	[ifnro] [int] NOT NULL,
	[ifcod] [varchar](30) NULL,
	[ifnom] [varchar](100) NULL,
	[ifidcta] [int] NULL,
	[ifform] [float] NOT NULL,
	[ifPrec] [float] NOT NULL,
	[ifDesE] [tinyint] NULL,
	[iftipo] [tinyint] NULL,
	[ifnit] [varchar](20) NULL,
	[ifraz] [varchar](240) NULL,
	[ifnfa] [varchar](20) NULL,
	[ifnpo] [varchar](25) NULL,
	[ifNau] [varchar](100) NULL,
	[ifFec] [datetime] NULL,
	[ifImp] [float] NOT NULL,
	[ifice] [float] NOT NULL,
	[ifexe] [float] NOT NULL,
	[ifnet] [float] NOT NULL,
	[ifIva] [float] NOT NULL,
	[ifcon] [varchar](20) NULL,
	[ifAux] [varchar](20) NULL,
	[ifncb] [tinyint] NOT NULL,
	[ifglosa] [varchar](200) NULL,
	[ifnfi] [int] NOT NULL,
	[ifsub] [float] NOT NULL,
	[ifdes] [float] NOT NULL,
	[ifusumod] [varchar](50) NULL,
	[iffecmod] [datetime] NULL,
	[idctaact] [int] NULL,
	[idcentro] [int] NULL,
	[ifidcbte] [int] NULL,
	[ifidc] [int] NULL,
	[ifnsuc] [int] NULL,
	[idanact] [int] NOT NULL,
	[idangas] [int] NOT NULL,
	[seesp] [tinyint] NOT NULL,
	[seiehd] [decimal](14, 2) NOT NULL,
	[seipj] [decimal](14, 2) NOT NULL,
	[setasas] [decimal](14, 2) NOT NULL,
	[seotros] [decimal](14, 2) NOT NULL,
	[segratc] [decimal](14, 2) NOT NULL,
	[segift] [decimal](14, 2) NOT NULL,
	[fcifelec] [tinyint] NOT NULL,
	[PorcExento] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idfi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFlujoCtas]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFlujoCtas](
	[idflu] [int] IDENTITY(1,1) NOT NULL,
	[codflujo] [varchar](5) NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfven]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfven](
	[idv] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[NIT] [varchar](20) NULL,
	[NoFac] [varchar](20) NULL,
	[nroorden] [varchar](20) NULL,
	[RazonSocial] [varchar](240) NULL,
	[totalfac] [float] NULL,
	[totalice] [float] NULL,
	[impexe] [float] NULL,
	[impneto] [float] NULL,
	[debfis] [float] NULL,
	[valanu] [varchar](50) NULL,
	[nroau] [varchar](100) NULL,
	[codcon] [varchar](20) NULL,
	[nfila] [int] NULL,
	[idcli] [int] NULL,
	[tazacero] [float] NOT NULL,
	[descbon] [float] NOT NULL,
	[esp] [tinyint] NOT NULL,
	[placa] [varchar](20) NOT NULL,
	[pais] [varchar](30) NOT NULL,
	[envase] [varchar](1) NOT NULL,
	[producto] [varchar](10) NOT NULL,
	[autoriz] [varchar](30) NOT NULL,
	[fvusuario] [varchar](50) NULL,
	[nofacdel] [varchar](20) NULL,
	[secompl] [varchar](5) NOT NULL,
	[seiehd] [decimal](14, 2) NOT NULL,
	[seipj] [decimal](14, 2) NOT NULL,
	[setasas] [decimal](14, 2) NOT NULL,
	[seotros] [decimal](14, 2) NOT NULL,
	[sesubt] [decimal](14, 2) NOT NULL,
	[segift] [decimal](14, 2) NOT NULL,
	[setipo] [tinyint] NOT NULL,
	[spcan] [float] NULL,
	[sppre] [decimal](14, 2) NULL,
	[spfecul] [datetime] NULL,
	[scpais] [int] NOT NULL,
	[sctprod] [varchar](1) NULL,
	[seesp] [tinyint] NOT NULL,
	[fvfelec] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbfvenimp]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbfvenimp](
	[idfv] [int] IDENTITY(1,1) NOT NULL,
	[fvnro] [int] NOT NULL,
	[fvnit] [varchar](20) NULL,
	[fvraz] [varchar](240) NULL,
	[fvnfa] [varchar](20) NULL,
	[fvNau] [varchar](100) NULL,
	[fvFec] [datetime] NULL,
	[fvImp] [float] NOT NULL,
	[fvice] [float] NOT NULL,
	[fvexe] [float] NOT NULL,
	[fvnet] [float] NOT NULL,
	[fvIva] [float] NOT NULL,
	[fvest] [varchar](10) NULL,
	[fvcon] [varchar](20) NULL,
	[fvaux] [varchar](20) NULL,
	[fvesp] [tinyint] NOT NULL,
	[fvnfi] [int] NOT NULL,
	[fvsub] [float] NOT NULL,
	[fvtce] [float] NOT NULL,
	[fvdes] [float] NOT NULL,
	[fvpla] [varchar](40) NULL,
	[fvpai] [varchar](30) NOT NULL,
	[fvten] [varchar](1) NOT NULL,
	[fvtpr] [varchar](10) NOT NULL,
	[fvaut] [varchar](30) NOT NULL,
	[idctaact] [int] NULL,
	[idcentro] [int] NULL,
	[idctaing] [int] NULL,
	[fvidcbte] [int] NULL,
	[fvidv] [int] NULL,
	[fvnsuc] [int] NULL,
	[fvnfd] [varchar](20) NULL,
	[idanact] [int] NOT NULL,
	[idaning] [int] NOT NULL,
	[secodau] [varchar](15) NULL,
	[secompl] [varchar](5) NULL,
	[seiehd] [decimal](14, 2) NOT NULL,
	[seipj] [decimal](14, 2) NOT NULL,
	[setasas] [decimal](14, 2) NOT NULL,
	[seotros] [decimal](14, 2) NOT NULL,
	[segift] [decimal](14, 2) NOT NULL,
	[setipo] [tinyint] NOT NULL,
	[spcan] [decimal](14, 2) NOT NULL,
	[sppre] [decimal](14, 2) NOT NULL,
	[spfecul] [datetime] NULL,
	[scpais] [int] NOT NULL,
	[sctprod] [int] NOT NULL,
	[fvifelec] [tinyint] NOT NULL,
	[fvusumod] [varchar](50) NULL,
	[fvfecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idfv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbgastos]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbgastos](
	[idg] [int] IDENTITY(1,1) NOT NULL,
	[idren] [int] NOT NULL,
	[idctac] [int] NOT NULL,
	[idctag] [int] NOT NULL,
	[gfec] [datetime] NOT NULL,
	[gtip] [varchar](3) NOT NULL,
	[gnfac] [bigint] NULL,
	[gnau] [bigint] NOT NULL,
	[gcon] [varchar](20) NOT NULL,
	[gimp] [decimal](18, 2) NOT NULL,
	[gdet] [varchar](255) NULL,
	[gest] [tinyint] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[graz] [varchar](100) NULL,
	[gexe] [decimal](18, 2) NOT NULL,
	[gice] [decimal](18, 2) NOT NULL,
	[gnit] [varchar](20) NOT NULL,
	[gdesc] [float] NOT NULL,
	[idveh] [int] NULL,
	[gnsuc] [int] NOT NULL,
	[gidcen] [int] NOT NULL,
	[giueser] [decimal](18, 2) NOT NULL,
	[giuebie] [decimal](18, 2) NOT NULL,
	[greit] [decimal](18, 2) NOT NULL,
	[grciva] [decimal](18, 2) NOT NULL,
	[grcalq] [decimal](18, 2) NOT NULL,
	[idan] [int] NOT NULL,
	[gnaus] [varchar](100) NULL,
	[giehd] [decimal](14, 2) NOT NULL,
	[gipj] [decimal](14, 2) NOT NULL,
	[gtasas] [decimal](14, 2) NOT NULL,
	[gotros] [decimal](14, 2) NOT NULL,
	[gtcero] [decimal](14, 2) NOT NULL,
	[ggift] [decimal](14, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbica]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbica](
	[idica] [int] IDENTITY(1,1) NOT NULL,
	[idcta] [int] NOT NULL,
	[icaaux] [varchar](100) NOT NULL,
	[icancb] [tinyint] NOT NULL,
	[icapre] [real] NOT NULL,
	[icafor] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbimport]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbimport](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[num_orden] [varchar](15) NOT NULL,
	[num_dui] [varchar](15) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[proveedor] [int] NOT NULL,
	[valorfob] [float] NOT NULL,
	[trans_maritimo] [float] NOT NULL,
	[trans_terrestre] [float] NOT NULL,
	[seguro_exterior] [float] NOT NULL,
	[gastos_portuarios] [float] NOT NULL,
	[comision_intermediario] [float] NOT NULL,
	[gastos1] [float] NOT NULL,
	[gac] [float] NOT NULL,
	[iva] [float] NOT NULL,
	[ice] [float] NOT NULL,
	[contravensiones] [float] NOT NULL,
	[almacen_aduana] [float] NOT NULL,
	[logistica_aduana] [float] NOT NULL,
	[form_dui] [float] NOT NULL,
	[form_djv] [float] NOT NULL,
	[gastos2] [float] NOT NULL,
	[camara_comercio] [float] NOT NULL,
	[senasac] [float] NOT NULL,
	[comision_ada] [float] NOT NULL,
	[comision_financiera] [float] NOT NULL,
	[comision_otros] [float] NOT NULL,
	[trans_nacional] [float] NOT NULL,
	[seguros] [float] NOT NULL,
	[cargos_manipuleo] [float] NOT NULL,
	[gastos3] [float] NOT NULL,
	[iva_se] [float] NOT NULL,
	[iva_ci] [float] NOT NULL,
	[iva_g1] [float] NOT NULL,
	[iva_iva] [float] NOT NULL,
	[iva_aa] [float] NOT NULL,
	[iva_la] [float] NOT NULL,
	[iva_g2] [float] NOT NULL,
	[iva_cc] [float] NOT NULL,
	[iva_s] [float] NOT NULL,
	[iva_ada] [float] NOT NULL,
	[iva_cf] [float] NOT NULL,
	[iva_co] [float] NOT NULL,
	[iva_tn] [float] NOT NULL,
	[iva_seg] [float] NOT NULL,
	[iva_cm] [float] NOT NULL,
	[iva_g3] [float] NOT NULL,
	[ref1] [varchar](50) NULL,
	[ref2] [varchar](50) NULL,
	[ref3] [varchar](50) NULL,
	[ref4] [varchar](50) NULL,
	[ref5] [varchar](50) NULL,
	[ref6] [varchar](50) NULL,
	[ref7] [varchar](50) NULL,
	[ref8] [varchar](50) NULL,
	[ref9] [varchar](50) NULL,
	[ref10] [varchar](50) NULL,
	[ref11] [varchar](50) NULL,
	[ref12] [varchar](50) NULL,
	[ref13] [varchar](50) NULL,
	[ref14] [varchar](50) NULL,
	[ref15] [varchar](50) NULL,
	[ref16] [varchar](50) NULL,
	[ref17] [varchar](50) NULL,
	[ref18] [varchar](50) NULL,
	[ref19] [varchar](50) NULL,
	[ref20] [varchar](50) NULL,
	[ref21] [varchar](50) NULL,
	[ref22] [varchar](50) NULL,
	[ref23] [varchar](50) NULL,
	[ref24] [varchar](50) NULL,
	[ref25] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbimport_productos]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbimport_productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[cod_import] [int] NOT NULL,
	[cod_producto] [int] NOT NULL,
	[cantidad] [float] NULL,
	[precio] [float] NOT NULL,
	[ice] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbinicaja]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbinicaja](
	[idic] [int] IDENTITY(1,1) NOT NULL,
	[idemp] [int] NULL,
	[icfec] [datetime] NULL,
	[icimp] [float] NULL,
	[icdet] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbitemaf]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbitemaf](
	[iditem] [int] IDENTITY(1,1) NOT NULL,
	[idaf] [int] NULL,
	[descitem] [varchar](255) NULL,
	[uniditem] [varchar](30) NULL,
	[coditem] [varchar](20) NULL,
	[idiu] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbitemub]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbitemub](
	[idiu] [int] IDENTITY(1,1) NOT NULL,
	[iunom] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idiu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbiv]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbiv](
	[idiv] [int] IDENTITY(1,1) NOT NULL,
	[ivfec] [datetime] NULL,
	[ivtipo] [tinyint] NULL,
	[ivdet] [varchar](75) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[ivmes] [varchar](7) NULL,
	[ivtotal] [float] NOT NULL,
	[ivcuotas] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
	[idclialta] [int] NOT NULL,
	[ividemp] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idiv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivcd]    Script Date: 01/07/2023 01:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivcd](
	[idcd] [int] NULL,
	[idcom] [int] NULL,
	[idprd] [int] NULL,
	[idalm] [int] NULL,
	[cdtipo] [tinyint] NULL,
	[cdcan] [float] NULL,
	[cdpre] [float] NULL,
	[cdimp] [float] NULL,
	[cdest] [tinyint] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpe] [int] NULL,
	[cdcxu] [float] NULL,
	[cddsc] [float] NULL,
	[cdaltafec] [datetime] NULL,
	[idaltaemp] [int] NULL,
	[cdpcos] [float] NULL,
	[cdice] [float] NULL,
	[cdnf] [int] NULL,
	[prdcod] [varchar](30) NULL,
	[almcod] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivcli]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivcli](
	[idcli] [int] NULL,
	[clinom] [varchar](100) NULL,
	[cliape] [varchar](100) NULL,
	[clinit] [varchar](20) NULL,
	[clidir] [varchar](255) NULL,
	[cliloc] [varchar](50) NULL,
	[clizona] [varchar](30) NULL,
	[clidep] [varchar](20) NULL,
	[clitel] [varchar](20) NULL,
	[clifax] [varchar](20) NULL,
	[clicom] [varchar](100) NULL,
	[cliemail] [varchar](75) NULL,
	[idz] [int] NULL,
	[clitipgar] [varchar](20) NULL,
	[clitlimcre] [float] NULL,
	[clilimau] [varchar](75) NULL,
	[cliforpag] [varchar](30) NULL,
	[idclit] [tinyint] NULL,
	[clitipdoc] [varchar](20) NULL,
	[idclir] [tinyint] NULL,
	[clisic] [float] NULL,
	[cliplazo] [smallint] NULL,
	[idconf] [smallint] NULL,
	[clicod] [varchar](15) NULL,
	[cliest] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivcob]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivcob](
	[idcob] [int] NULL,
	[idven] [int] NULL,
	[idcli] [int] NULL,
	[cdoc] [varchar](10) NULL,
	[cdet] [varchar](100) NULL,
	[cfec] [datetime] NULL,
	[ctipo] [int] NULL,
	[cimp] [float] NULL,
	[cest] [tinyint] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idac] [int] NULL,
	[idemp] [int] NULL,
	[bord] [int] NULL,
	[empcod] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivcom]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivcom](
	[idcom] [int] NULL,
	[ctipo] [varchar](4) NULL,
	[ctipa] [tinyint] NULL,
	[idprv] [int] NULL,
	[idemp] [int] NULL,
	[cdoc] [varchar](20) NULL,
	[cfec] [datetime] NULL,
	[cdet] [varchar](75) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[cpla] [int] NULL,
	[ctipp] [int] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idap] [int] NULL,
	[cord] [int] NULL,
	[cnord] [float] NULL,
	[calfa] [varchar](15) NULL,
	[cnfac] [varchar](15) NULL,
	[cnau] [float] NULL,
	[ccon] [varchar](20) NULL,
	[iddev] [int] NULL,
	[empcod] [varchar](15) NULL,
	[cfecfac] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivcp]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivcp](
	[idcp] [int] NOT NULL,
	[idcom] [int] NOT NULL,
	[idpag] [int] NOT NULL,
	[cptipo] [int] NULL,
	[cpimp] [float] NOT NULL,
	[cpest] [tinyint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivpag]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivpag](
	[idpag] [int] NOT NULL,
	[idcom] [int] NOT NULL,
	[pdoc] [varchar](10) NULL,
	[pdet] [varchar](100) NULL,
	[pfec] [datetime] NULL,
	[ptipo] [int] NULL,
	[pimp] [float] NOT NULL,
	[pest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idap] [int] NULL,
	[idemp] [int] NULL,
	[pord] [int] NULL,
	[idprv] [int] NULL,
	[idctabco] [int] NULL,
	[idiv] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivprv]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivprv](
	[idprv] [int] NOT NULL,
	[prvnom] [varchar](100) NULL,
	[prvape] [varchar](100) NULL,
	[prvnit] [varchar](20) NULL,
	[prvdir] [varchar](100) NULL,
	[prvloc] [varchar](50) NULL,
	[prvzona] [varchar](30) NULL,
	[prvdep] [varchar](20) NULL,
	[prvtel] [varchar](20) NULL,
	[prvfax] [varchar](20) NULL,
	[prvcom] [varchar](100) NULL,
	[prvemail] [varchar](75) NULL,
	[prvpc] [varchar](75) NULL,
	[prvlimcre] [float] NULL,
	[prvlimau] [varchar](75) NULL,
	[prvforpag] [varchar](30) NULL,
	[prvtipdoc] [varchar](20) NULL,
	[prvsip] [float] NULL,
	[idconf] [int] NULL,
	[idprvr] [int] NULL,
	[prvcod] [varchar](10) NULL,
	[idcta] [int] NULL,
	[prvmon] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivtras]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivtras](
	[idtra] [int] NULL,
	[trafec] [datetime] NULL,
	[traord] [int] NULL,
	[tratipo] [tinyint] NULL,
	[tradoc] [varchar](10) NULL,
	[traobs] [varchar](75) NULL,
	[tradet] [varchar](75) NULL,
	[idalmo] [int] NULL,
	[idalmd] [int] NULL,
	[idemp] [int] NULL,
	[empcod] [varchar](15) NULL,
	[almor] [varchar](15) NULL,
	[almde] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivvc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivvc](
	[idvc] [int] NULL,
	[idven] [int] NULL,
	[idcob] [int] NULL,
	[vctipo] [int] NULL,
	[vcimp] [float] NULL,
	[vcest] [tinyint] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivvd]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivvd](
	[idvd] [int] NULL,
	[idven] [int] NULL,
	[idprd] [varchar](15) NULL,
	[idalm] [varchar](15) NULL,
	[vdtipo] [tinyint] NULL,
	[vdcan] [float] NULL,
	[vdpre] [float] NULL,
	[vdimp] [float] NULL,
	[vdest] [tinyint] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[vdcxu] [float] NULL,
	[vddet] [varchar](75) NULL,
	[vdpcos] [float] NULL,
	[vdaltafec] [datetime] NULL,
	[idaltaemp] [int] NULL,
	[vdice] [float] NULL,
	[vddesc] [float] NULL,
	[idcd] [int] NULL,
	[prdcod] [varchar](30) NULL,
	[almcod] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbivven]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbivven](
	[idven] [int] NULL,
	[vtipo] [varchar](4) NULL,
	[vtipa] [tinyint] NULL,
	[idcli] [varchar](15) NULL,
	[idemp] [int] NULL,
	[vdoc] [varchar](20) NULL,
	[vfec] [datetime] NULL,
	[vdet] [varchar](75) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpm] [int] NULL,
	[vtipp] [int] NULL,
	[vpla] [int] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idac] [int] NULL,
	[iddev] [int] NULL,
	[vord] [int] NULL,
	[vnit] [varchar](15) NULL,
	[vcli] [varchar](75) NULL,
	[idtg] [int] NULL,
	[valfa] [varchar](12) NULL,
	[vnord] [bigint] NULL,
	[vdesc] [float] NULL,
	[vobs] [varchar](75) NULL,
	[idiv] [int] NULL,
	[vnau] [float] NULL,
	[vcon] [varchar](20) NULL,
	[empcod] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbloc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbloc](
	[idloc] [int] NOT NULL,
	[loccod] [varchar](10) NULL,
	[locnom] [varchar](100) NULL,
	[idciu] [int] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idloc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbmarcaexp]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbmarcaexp](
	[idme] [int] IDENTITY(1,1) NOT NULL,
	[menom] [varchar](100) NOT NULL,
	[meusumod] [varchar](50) NULL,
	[mefecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbnef]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbnef](
	[idnef] [int] IDENTITY(1,1) NOT NULL,
	[idcta] [int] NOT NULL,
	[neftexto] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idnef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbniv]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbniv](
	[nro_nivel] [int] NULL,
	[nro_digitos] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbobj]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbobj](
	[idobj] [int] IDENTITY(1,1) NOT NULL,
	[objcod] [varchar](150) NOT NULL,
	[objnom] [varchar](150) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[sucreg] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idobj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbobjuni]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbobjuni](
	[idou] [int] IDENTITY(1,1) NOT NULL,
	[idemp] [int] NOT NULL,
	[idlinea] [varchar](100) NULL,
	[oumes] [int] NOT NULL,
	[oumonto] [float] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[oudmsest] [tinyint] NULL,
	[ounicatcod] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idou] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbog]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbog](
	[idog] [int] IDENTITY(1,1) NOT NULL,
	[ognom] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tboi]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tboi](
	[idoi] [int] IDENTITY(1,1) NOT NULL,
	[oifec] [datetime] NULL,
	[oidet] [varchar](100) NULL,
	[oinro] [varchar](10) NULL,
	[oiSe] [varchar](100) NULL,
	[oinit] [varchar](15) NULL,
	[oitipo] [int] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tboid]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tboid](
	[idoid] [int] IDENTITY(1,1) NOT NULL,
	[idoi] [int] NULL,
	[idcta] [int] NULL,
	[oidref] [varchar](50) NULL,
	[oidcan] [float] NULL,
	[oidpre] [float] NULL,
	[oidimp] [float] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbort]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbort](
	[idort] [int] IDENTITY(1,1) NOT NULL,
	[ortcod] [varchar](20) NULL,
	[ortnom] [varchar](75) NULL,
	[usuario] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idort] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpag]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpag](
	[idpag] [int] IDENTITY(1,1) NOT NULL,
	[idcom] [int] NOT NULL,
	[pdoc] [varchar](15) NULL,
	[pdet] [varchar](100) NULL,
	[pfec] [datetime] NULL,
	[ptipo] [int] NULL,
	[pimp] [float] NOT NULL,
	[pest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idap] [int] NULL,
	[idemp] [int] NULL,
	[pord] [int] NULL,
	[idprv] [int] NULL,
	[idctabco] [int] NULL,
	[idiv] [int] NULL,
	[pdoccta] [varchar](50) NULL,
	[ptipodoc] [tinyint] NOT NULL,
	[pmon] [tinyint] NOT NULL,
	[ptc] [real] NOT NULL,
	[pfectr] [datetime] NULL,
	[pagnsuc] [int] NOT NULL,
	[pdetmod] [varchar](100) NULL,
	[pcuo] [tinyint] NOT NULL,
	[pnrocon] [varchar](50) NOT NULL,
	[idren] [int] NOT NULL,
	[pimpus] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbparam]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbparam](
	[nombre] [varchar](50) NULL,
	[propietario] [varchar](50) NULL,
	[ruc] [varchar](20) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](14) NULL,
	[email] [varchar](50) NULL,
	[Presup] [tinyint] NULL,
	[nroord] [varchar](15) NULL,
	[alfanum] [varchar](15) NULL,
	[moneda] [varchar](3) NULL,
	[cod_cta] [varchar](20) NULL,
	[ctaIVACF] [varchar](20) NULL,
	[ctaIVADF] [varchar](20) NULL,
	[ctaresacum] [varchar](20) NULL,
	[tipoCbte] [tinyint] NULL,
	[tipoImprCbte] [tinyint] NULL,
	[porcIVA] [real] NULL,
	[rutalcv] [varchar](100) NULL,
	[facpor] [varchar](50) NULL,
	[revpor] [varchar](50) NULL,
	[autpor] [varchar](50) NULL,
	[colus] [tinyint] NULL,
	[mnal] [varchar](4) NULL,
	[mnaldes] [varchar](40) NULL,
	[mex] [varchar](4) NULL,
	[mexdes] [varchar](40) NULL,
	[versionBD] [int] NOT NULL,
	[ctait] [varchar](20) NULL,
	[ctaitxp] [varchar](20) NULL,
	[ctamoi] [varchar](20) NULL,
	[ctacaja] [varchar](20) NULL,
	[ctadc] [varchar](20) NULL,
	[ctamv] [varchar](20) NULL,
	[ctaac] [varchar](30) NULL,
	[ctaar] [varchar](30) NULL,
	[ctaain] [varchar](30) NULL,
	[ctaaeg] [varchar](30) NULL,
	[dtf1] [varchar](30) NULL,
	[dtf2] [varchar](30) NULL,
	[dtf3] [varchar](30) NULL,
	[dtf4] [varchar](30) NULL,
	[dtf5] [varchar](30) NULL,
	[dnomf4] [varchar](50) NULL,
	[dnomf5] [varchar](50) NULL,
	[imprhora] [tinyint] NULL,
	[dimprinicbte] [tinyint] NOT NULL,
	[sumexentos] [tinyint] NOT NULL,
	[ititcen] [tinyint] NOT NULL,
	[reexie] [tinyint] NOT NULL,
	[ctaactc] [varchar](30) NULL,
	[ctaactd] [varchar](30) NULL,
	[ctaactn] [varchar](30) NULL,
	[maycaja] [varchar](30) NULL,
	[versiontriggers] [int] NOT NULL,
	[tcbcom] [varchar](4) NULL,
	[tcbpag] [varchar](4) NULL,
	[tcbcxp] [tinyint] NOT NULL,
	[ctaven] [varchar](50) NULL,
	[ctavge] [varchar](50) NULL,
	[ctavdi] [varchar](50) NULL,
	[ctavgn] [varchar](50) NULL,
	[ctacfor] [varchar](50) NULL,
	[ctacpre] [varchar](50) NULL,
	[ctacact] [varchar](50) NULL,
	[ctaserv] [varchar](50) NULL,
	[logoemp] [image] NULL,
	[logoempruta] [image] NULL,
	[ctage] [varchar](30) NULL,
	[ctado] [varchar](30) NULL,
	[marcaemp] [image] NULL,
	[marcaempruta] [image] NULL,
	[lvadic] [varchar](100) NULL,
	[gange] [real] NOT NULL,
	[gandi] [real] NOT NULL,
	[gangn] [real] NOT NULL,
	[dtf1c] [varchar](50) NULL,
	[dtf2c] [varchar](50) NULL,
	[dtf3c] [varchar](50) NULL,
	[dtf4c] [varchar](50) NULL,
	[dtf5c] [varchar](50) NULL,
	[mslec] [tinyint] NOT NULL,
	[vgicbte] [tinyint] NOT NULL,
	[ctacomb3] [varchar](50) NULL,
	[ctacomb4] [varchar](50) NULL,
	[TCBxPag] [tinyint] NOT NULL,
	[pcct] [tinyint] NOT NULL,
	[pcctint] [int] NOT NULL,
	[locprecgl] [real] NOT NULL,
	[renfmt] [tinyint] NOT NULL,
	[ctacdesc] [varchar](100) NULL,
	[ctavdesc] [varchar](100) NULL,
	[GExe] [varchar](100) NULL,
	[GExe13] [varchar](100) NULL,
	[ERIO] [varchar](50) NULL,
	[ERCV] [varchar](50) NULL,
	[ERGO] [varchar](50) NULL,
	[EROI] [varchar](50) NULL,
	[EROE] [varchar](50) NULL,
	[ctaRG] [varchar](50) NULL,
	[verifclirep] [tinyint] NOT NULL,
	[gice] [varchar](50) NULL,
	[aitb_G] [varchar](50) NULL,
	[difrIng] [varchar](50) NULL,
	[difrEgr] [varchar](50) NULL,
	[iuexcom] [varchar](50) NULL,
	[fct1] [varchar](100) NULL,
	[fct2] [varchar](100) NULL,
	[fct3] [varchar](100) NULL,
	[cccen] [varchar](50) NOT NULL,
	[ccdep] [varchar](50) NOT NULL,
	[ccobj] [varchar](50) NOT NULL,
	[encobdcop] [varchar](75) NULL,
	[clmnpag] [tinyint] NOT NULL,
	[iuegasto] [varchar](50) NULL,
	[iueini] [float] NOT NULL,
	[iueinidesde] [datetime] NULL,
	[iueinihasta] [datetime] NULL,
	[iueact] [float] NOT NULL,
	[iueactdesde] [datetime] NULL,
	[iueacthasta] [datetime] NULL,
	[grupond] [varchar](50) NULL,
	[gest1] [int] NOT NULL,
	[gest2] [int] NOT NULL,
	[gest3] [int] NOT NULL,
	[iuexpag] [varchar](50) NULL,
	[fctextoinf] [varchar](200) NULL,
	[cgmcontado] [tinyint] NOT NULL,
	[IDTiue] [varchar](50) NULL,
	[Ixct] [varchar](50) NULL,
	[Iueg41] [varchar](50) NULL,
	[iuepac41] [tinyint] NOT NULL,
	[fct4] [varchar](50) NULL,
	[fem1] [varchar](100) NULL,
	[fem2] [varchar](100) NULL,
	[fem3] [varchar](100) NULL,
	[fem4] [varchar](100) NULL,
	[femaux1] [varchar](100) NULL,
	[femaux2] [varchar](100) NULL,
	[femaux3] [varchar](100) NULL,
	[femaux4] [varchar](100) NULL,
	[ctaIVACFt4] [varchar](50) NULL,
	[cobcartabanco] [varchar](150) NULL,
	[cobcartancta] [varchar](50) NULL,
	[cobcartabancotit] [varchar](150) NULL,
	[ctamcxc] [varchar](50) NULL,
	[tcbdauto] [tinyint] NULL,
	[pfl] [tinyint] NOT NULL,
	[bdfl] [varchar](100) NULL,
	[cpdet] [varchar](100) NULL,
	[cpimp] [decimal](10, 2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpDet]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpDet](
	[idpDet] [int] IDENTITY(1,1) NOT NULL,
	[pDetImp] [float] NULL,
	[pDetPrecio] [float] NULL,
	[pdetCan] [float] NULL,
	[pdetnfi] [smallint] NULL,
	[idpro] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[pdetdesc] [float] NOT NULL,
	[pdetunid] [varchar](20) NULL,
	[pdetunitip] [tinyint] NOT NULL,
	[pdetcxu] [float] NOT NULL,
	[pdet] [varchar](255) NULL,
	[pdetprecious] [float] NOT NULL,
	[pdetdescus] [float] NOT NULL,
	[pdetimpus] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpe]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpe](
	[idpe] [int] IDENTITY(1,1) NOT NULL,
	[etipo] [varchar](4) NULL,
	[etipa] [tinyint] NULL,
	[idprv] [int] NOT NULL,
	[idemp] [int] NULL,
	[edoc] [varchar](10) NULL,
	[efec] [datetime] NULL,
	[edet] [varchar](100) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[etipp] [tinyint] NULL,
	[etc] [real] NOT NULL,
	[etipopago] [tinyint] NOT NULL,
	[eplazo] [int] NOT NULL,
	[pesuc] [int] NOT NULL,
	[edimpus] [float] NOT NULL,
	[edpreus] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpm]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpm](
	[idpm] [int] NULL,
	[pmnom] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprd]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprd](
	[idprd] [int] IDENTITY(1,1) NOT NULL,
	[prdcod] [varchar](30) NULL,
	[prdnom] [varchar](200) NULL,
	[prdunid] [varchar](40) NULL,
	[prdcxu] [float] NOT NULL,
	[idlinea] [int] NOT NULL,
	[prdstmax] [float] NULL,
	[prdstmin] [float] NULL,
	[prdcom] [varchar](100) NULL,
	[prdpoficial] [float] NULL,
	[prdpmaycon] [float] NULL,
	[prdpmaycre] [float] NULL,
	[prdpmincon] [float] NULL,
	[prdpmincre] [float] NULL,
	[prdpespcon] [float] NULL,
	[prdpespcre] [float] NULL,
	[prdpsmcon] [float] NULL,
	[prdpsmcre] [float] NULL,
	[prdpagcon] [float] NULL,
	[prdpagcre] [float] NULL,
	[prdmrc] [varchar](30) NULL,
	[barracod] [varchar](32) NULL,
	[barratipo] [int] NULL,
	[barramio] [int] NULL,
	[prdice] [real] NULL,
	[prddes] [real] NULL,
	[prdprec] [real] NULL,
	[prdest] [tinyint] NULL,
	[prddesc] [tinyint] NULL,
	[prdcor] [varchar](50) NULL,
	[prdcms] [float] NULL,
	[prdtip] [smallint] NULL,
	[prdabs] [varchar](2) NOT NULL,
	[prddst] [varchar](2) NOT NULL,
	[prdcb1] [varchar](25) NULL,
	[prdcb2] [varchar](25) NULL,
	[prdcb3] [varchar](25) NULL,
	[prdcb4] [varchar](25) NULL,
	[prdcb5] [varchar](25) NULL,
	[prdcb6] [varchar](25) NULL,
	[prdcb7] [varchar](25) NULL,
	[prdcb8] [varchar](25) NULL,
	[prdpxv] [char](2) NULL,
	[prdctaing] [int] NOT NULL,
	[prdctacos] [int] NOT NULL,
	[prdcms2] [real] NOT NULL,
	[idanp] [int] NOT NULL,
	[prdkxu] [float] NOT NULL,
	[prduxcdes] [varchar](20) NOT NULL,
	[prduxd] [float] NOT NULL,
	[prduxddes] [varchar](20) NOT NULL,
	[prduvdef] [tinyint] NOT NULL,
	[prdcodunilever] [varchar](15) NULL,
	[prdtvol] [tinyint] NOT NULL,
	[prdklxc] [float] NOT NULL,
	[prduniua] [varchar](30) NULL,
	[prdskxc] [float] NOT NULL,
	[idunicat] [int] NOT NULL,
	[prdunides] [varchar](200) NULL,
	[idpg] [int] NOT NULL,
	[prddim] [varchar](100) NULL,
	[prdvol] [varchar](100) NULL,
	[prdmed] [varchar](100) NULL,
	[prusumod] [varchar](50) NULL,
	[prfecmod] [datetime] NULL,
	[prdfoto] [image] NULL,
	[prdpxgr] [float] NOT NULL,
	[prdeqpt] [float] NOT NULL,
	[prdcap] [varchar](50) NULL,
	[prdpoficialUS] [float] NOT NULL,
	[prdpmayconUS] [float] NOT NULL,
	[prdpmaycreUS] [float] NOT NULL,
	[prdpminconUS] [float] NOT NULL,
	[prdpmincreUS] [float] NOT NULL,
	[prdpespconUS] [float] NOT NULL,
	[prdpespcreUS] [float] NOT NULL,
	[prdpsmconUS] [float] NOT NULL,
	[prdpsmcreUS] [float] NOT NULL,
	[prdpagconUS] [float] NOT NULL,
	[prdpagcreUS] [float] NOT NULL,
	[idmarca] [int] NOT NULL,
	[idmotor] [int] NOT NULL,
	[prdmedidarep] [varchar](20) NULL,
	[prdbal] [tinyint] NOT NULL,
	[prdp6con] [float] NOT NULL,
	[prdp6cre] [float] NOT NULL,
	[prdp7con] [float] NOT NULL,
	[prdp7cre] [float] NOT NULL,
	[prdp6conus] [float] NOT NULL,
	[prdp6creus] [float] NOT NULL,
	[prdp7conus] [float] NOT NULL,
	[prdp7creus] [float] NOT NULL,
	[prdancho] [decimal](10, 3) NOT NULL,
	[prdalto] [decimal](10, 3) NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idprd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprdfor]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprdfor](
	[idpf] [int] IDENTITY(1,1) NOT NULL,
	[idprd] [int] NOT NULL,
	[idcta] [int] NOT NULL,
	[idprdmp] [int] NOT NULL,
	[pftipo] [tinyint] NOT NULL,
	[pfcan] [decimal](18, 5) NULL,
	[pfpcos] [decimal](18, 6) NOT NULL,
	[pfval] [decimal](18, 6) NOT NULL,
	[pfusumod] [varchar](50) NULL,
	[pffecmod] [datetime] NULL,
	[pfidalm] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprdgrp]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprdgrp](
	[idpg] [int] IDENTITY(1,1) NOT NULL,
	[pgnom] [varchar](100) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[pgtipo] [tinyint] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprdlin]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprdlin](
	[idlinea] [int] IDENTITY(1,1) NOT NULL,
	[linnom] [varchar](75) NULL,
	[linniv] [int] NULL,
	[lincod] [varchar](15) NULL,
	[idprv] [varchar](15) NULL,
	[linusumod] [varchar](50) NULL,
	[linfecmod] [datetime] NULL,
	[idctaing] [int] NOT NULL,
	[idctacos] [int] NOT NULL,
	[idctaingdoc] [int] NOT NULL,
	[idctacosdoc] [int] NOT NULL,
	[linice] [float] NOT NULL,
	[linicefv] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idlinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprdmarca]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprdmarca](
	[idmarca] [int] NOT NULL,
	[marcanom] [varchar](150) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprdmotor]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprdmotor](
	[idmotor] [int] NOT NULL,
	[motornom] [varchar](150) NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmotor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPres]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPres](
	[idcta] [int] NULL,
	[cod_cta] [varchar](20) NULL,
	[1] [float] NULL,
	[2] [float] NULL,
	[3] [float] NULL,
	[4] [float] NULL,
	[5] [float] NULL,
	[6] [float] NULL,
	[7] [float] NULL,
	[8] [float] NULL,
	[9] [float] NULL,
	[10] [float] NULL,
	[11] [float] NULL,
	[12] [float] NULL,
	[1d] [float] NULL,
	[2d] [float] NULL,
	[3d] [float] NULL,
	[4d] [float] NULL,
	[5d] [float] NULL,
	[6d] [float] NULL,
	[7d] [float] NULL,
	[8d] [float] NULL,
	[9d] [float] NULL,
	[10d] [float] NULL,
	[11d] [float] NULL,
	[12d] [float] NULL,
	[idpres] [int] IDENTITY(1,1) NOT NULL,
	[idcentro] [int] NOT NULL,
	[idan] [int] NOT NULL,
	[iddep] [int] NOT NULL,
	[idobj] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpro]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpro](
	[idpro] [int] IDENTITY(1,1) NOT NULL,
	[pronombre] [varchar](200) NULL,
	[prodet] [varchar](100) NULL,
	[profec] [datetime] NULL,
	[prodoc] [int] NULL,
	[prodesc] [float] NOT NULL,
	[protipp] [tinyint] NOT NULL,
	[propla] [smallint] NOT NULL,
	[pronit] [varchar](20) NULL,
	[idcli] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[protpre] [smallint] NOT NULL,
	[protip] [tinyint] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprv]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprv](
	[idprv] [int] IDENTITY(1,1) NOT NULL,
	[prvnom] [varchar](100) NULL,
	[prvape] [varchar](100) NULL,
	[prvnit] [varchar](20) NULL,
	[prvdir] [varchar](100) NULL,
	[prvloc] [varchar](50) NULL,
	[prvzona] [varchar](30) NULL,
	[prvdep] [varchar](20) NULL,
	[prvtel] [varchar](20) NULL,
	[prvfax] [varchar](20) NULL,
	[prvcom] [varchar](100) NULL,
	[prvemail] [varchar](75) NULL,
	[prvpc] [varchar](75) NULL,
	[prvlimcre] [float] NULL,
	[prvlimau] [varchar](75) NULL,
	[prvforpag] [varchar](30) NULL,
	[prvtipdoc] [varchar](20) NULL,
	[prvsip] [float] NULL,
	[idconf] [int] NULL,
	[idprvr] [int] NULL,
	[prvcod] [varchar](10) NULL,
	[idcta] [int] NULL,
	[prvmon] [tinyint] NOT NULL,
	[pusumod] [varchar](50) NULL,
	[pfecmod] [datetime] NULL,
	[prvest] [tinyint] NOT NULL,
	[pidemp] [int] NOT NULL,
	[pidtra] [int] NOT NULL,
	[prvtipo] [tinyint] NOT NULL,
	[prvraz] [varchar](150) NULL,
	[prvlogo] [image] NULL,
	[prvimpnom] [tinyint] NOT NULL,
	[prvsoc] [tinyint] NOT NULL,
	[prvsfc] [tinyint] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idprv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprvreg]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprvreg](
	[idprvr] [int] NULL,
	[prvrnom] [varchar](75) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprvzon]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprvzon](
	[idpz] [int] IDENTITY(1,1) NOT NULL,
	[nsuc] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[pznom] [varchar](100) NULL,
	[pzest] [tinyint] NOT NULL,
	[pzusumod] [varchar](50) NULL,
	[pzfecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbren]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbren](
	[idren] [int] IDENTITY(1,1) NOT NULL,
	[renfec] [datetime] NULL,
	[renfectr] [datetime] NULL,
	[renidcta] [int] NOT NULL,
	[rendet] [varchar](150) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[rentipo] [tinyint] NOT NULL,
	[idempr] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idren] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbrutadia]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbrutadia](
	[idrd] [int] NOT NULL,
	[idz] [int] NOT NULL,
	[rddia] [tinyint] NOT NULL,
	[rdobj] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idrd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbse]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbse](
	[idse] [int] IDENTITY(1,1) NOT NULL,
	[setipo] [varchar](4) NULL,
	[secod] [varchar](15) NULL,
	[senom] [varchar](100) NULL,
	[sepre] [float] NULL,
	[secom] [varchar](100) NULL,
	[usuario] [varchar](50) NULL,
	[fecmos] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbsuc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbsuc](
	[nsuc] [int] NOT NULL,
	[sucnom] [varchar](150) NULL,
	[sucdir] [varchar](150) NULL,
	[succiu] [varchar](150) NULL,
	[suctel] [varchar](150) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[sucdir2] [varchar](150) NULL,
	[sucresp] [varchar](100) NULL,
	[sucnit] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[nsuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbsucesos]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbsucesos](
	[idscs] [int] IDENTITY(1,1) NOT NULL,
	[scstipo] [varchar](10) NULL,
	[scsusuario] [varchar](50) NULL,
	[scshora] [datetime] NULL,
	[scsaccion] [varchar](50) NULL,
	[scsdetalle] [varchar](100) NULL,
	[scsiddoc] [int] NULL,
	[scsnrodoc] [varchar](50) NULL,
	[scstabla] [varchar](100) NULL,
	[scsventana] [varchar](50) NULL,
	[scsfechadoc] [datetime] NULL,
	[scsredpc] [varchar](50) NULL,
	[scsversion] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[idscs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTC]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTC](
	[Fecha_TC] [datetime] NOT NULL,
	[TC] [real] NULL,
	[tcufv] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Fecha_TC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTDoc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTDoc](
	[idtd] [int] IDENTITY(1,1) NOT NULL,
	[tdini] [varchar](4) NULL,
	[tddes] [varchar](40) NULL,
	[tdia] [varchar](4) NULL,
	[tdiva] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtg]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtg](
	[idtg] [int] IDENTITY(1,1) NOT NULL,
	[tgfec] [datetime] NULL,
	[tgtipa] [tinyint] NULL,
	[tgtipo] [varchar](4) NULL,
	[tgdoc] [varchar](10) NULL,
	[tgdet] [varchar](75) NULL,
	[idemp] [int] NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idz] [int] NULL,
	[tgest] [varchar](20) NULL,
	[tgtc] [decimal](18, 2) NULL,
	[tgefe] [decimal](18, 2) NULL,
	[tgdepa] [decimal](18, 2) NULL,
	[tgdeto] [decimal](18, 2) NULL,
	[tgacu] [decimal](18, 2) NULL,
	[tgsal] [decimal](18, 2) NULL,
	[tgdep] [decimal](18, 2) NULL,
	[idcta] [int] NULL,
	[tgTot] [decimal](18, 2) NULL,
	[tgTod] [decimal](18, 2) NULL,
	[tgdif] [decimal](18, 2) NULL,
	[tgren] [varchar](100) NULL,
	[tgb1imp] [float] NOT NULL,
	[tgb1idc] [int] NOT NULL,
	[tgb2imp] [float] NOT NULL,
	[tgb2idc] [int] NOT NULL,
	[tgdevefec] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtgac]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtgac](
	[idtgac] [int] IDENTITY(1,1) NOT NULL,
	[idcor] [int] NOT NULL,
	[idtg] [int] NOT NULL,
	[tgaccor] [int] NOT NULL,
	[tgacimp] [decimal](18, 2) NOT NULL,
	[tgacnro] [int] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idtgac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtipocbte]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtipocbte](
	[cod_cmprb] [varchar](5) NULL,
	[nom_cmprb] [varchar](30) NULL,
	[indice] [tinyint] NULL,
	[nsuc] [int] NOT NULL,
	[cbrecibo] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTran]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTran](
	[num_cod_cmprb] [varchar](11) NULL,
	[cod_cta] [varchar](30) NULL,
	[tglos] [varchar](200) NULL,
	[tdeb] [float] NULL,
	[thab] [float] NULL,
	[tdebex] [float] NULL,
	[thabex] [float] NULL,
	[codflujo] [varchar](4) NULL,
	[codcentro] [varchar](3) NULL,
	[ref] [varchar](20) NULL,
	[nroord] [int] NULL,
	[dh] [varchar](1) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCBTE] [int] NOT NULL,
	[idcta] [int] NOT NULL,
	[idcentro] [int] NULL,
	[idflu] [int] NULL,
	[idan] [int] NULL,
	[iddep] [int] NOT NULL,
	[tusumod] [varchar](50) NULL,
	[tfecmod] [datetime] NULL,
	[idobj] [int] NOT NULL,
	[idpt] [int] NOT NULL,
	[ptporc] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtras]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtras](
	[idtra] [int] IDENTITY(1,1) NOT NULL,
	[trafec] [datetime] NULL,
	[traord] [int] NULL,
	[tratipo] [tinyint] NULL,
	[tradoc] [varchar](30) NULL,
	[traobs] [varchar](75) NULL,
	[tradet] [varchar](75) NULL,
	[idalmo] [int] NULL,
	[idalmd] [int] NULL,
	[idemp] [int] NULL,
	[idiv] [int] NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[trancon] [varchar](20) NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idtra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtrdet]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtrdet](
	[idtrd] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[iditem] [int] NULL,
	[trtipo] [tinyint] NULL,
	[trcant] [real] NULL,
	[trprec] [real] NULL,
	[trdeb] [decimal](18, 2) NOT NULL,
	[trhab] [decimal](18, 2) NOT NULL,
	[trdebex] [decimal](18, 2) NOT NULL,
	[trhabex] [decimal](18, 2) NOT NULL,
	[trglosa] [varchar](75) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[trbtipo] [tinyint] NULL,
	[trbmod] [tinyint] NOT NULL,
	[trbfec] [datetime] NULL,
	[trbtipt] [tinyint] NOT NULL,
	[trbnitp] [float] NOT NULL,
	[trbraz] [varchar](100) NULL,
	[trbnfac] [varchar](30) NULL,
	[trbmfac] [float] NOT NULL,
	[trbnaut] [varchar](150) NULL,
	[trbncta] [varchar](50) NULL,
	[trbmpag] [float] NOT NULL,
	[trbmacu] [float] NOT NULL,
	[trbnitb] [float] NOT NULL,
	[trbnchq] [varchar](30) NULL,
	[trbtipp] [tinyint] NOT NULL,
	[trbfecp] [datetime] NULL,
	[trbpagado] [float] NOT NULL,
	[trbncon] [varchar](50) NOT NULL,
	[trbtipt_2] [tinyint] NOT NULL,
	[trprecan] [int] NOT NULL,
	[trpreimp] [float] NOT NULL,
	[trform] [float] NOT NULL,
	[tridcd] [int] NOT NULL,
	[prodcod] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtrd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbudet]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbudet](
	[idud] [int] IDENTITY(1,1) NOT NULL,
	[idcbteAJ] [int] NOT NULL,
	[idcbte] [int] NOT NULL,
	[idtran] [int] NOT NULL,
	[idtrd] [int] NOT NULL,
	[idcta] [int] NOT NULL,
	[idcentro] [int] NOT NULL,
	[udUFVini] [float] NOT NULL,
	[udUFVfin] [float] NOT NULL,
	[udvalorBS] [float] NOT NULL,
	[udvalorUFV] [float] NOT NULL,
	[udAjuste] [float] NOT NULL,
	[udglos] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbunicat]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbunicat](
	[idunicat] [int] IDENTITY(1,1) NOT NULL,
	[unicatcod] [varchar](30) NULL,
	[unicatnom] [varchar](100) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[idpadre] [int] NOT NULL,
	[unicatniv] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idunicat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbusalm]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbusalm](
	[idua] [int] IDENTITY(1,1) NOT NULL,
	[idus] [int] NULL,
	[idalm] [int] NULL,
	[usuario] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbusc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbusc](
	[idusc] [int] IDENTITY(1,1) NOT NULL,
	[idus] [int] NOT NULL,
	[nsuc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idusc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvc]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvc](
	[idvc] [int] IDENTITY(1,1) NOT NULL,
	[idven] [int] NOT NULL,
	[idcob] [int] NOT NULL,
	[vctipo] [int] NULL,
	[vcimp] [float] NOT NULL,
	[vcest] [tinyint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idcmp] [int] NULL,
	[vctc] [real] NOT NULL,
	[idog] [int] NULL,
	[idpl] [int] NULL,
	[vcdet] [varchar](100) NULL,
	[vcidcen] [int] NOT NULL,
	[vcidcta] [int] NOT NULL,
	[vcidemp] [int] NULL,
	[vcidg] [int] NULL,
	[vcimpus] [float] NOT NULL,
	[idvcant] [int] NULL,
	[vcidiv] [int] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idvc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvd]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvd](
	[idvd] [int] IDENTITY(1,1) NOT NULL,
	[idven] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[idalm] [int] NOT NULL,
	[vdtipo] [int] NULL,
	[vdcan] [float] NOT NULL,
	[vdpre] [float] NOT NULL,
	[vdimp] [float] NOT NULL,
	[vdest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[vdcxu] [float] NULL,
	[vddet] [varchar](255) NULL,
	[vdpcos] [float] NULL,
	[vdaltafec] [datetime] NULL,
	[idaltaemp] [int] NULL,
	[vdice] [float] NULL,
	[vddesc] [float] NULL,
	[idcd] [int] NULL,
	[vdnfila] [smallint] NULL,
	[idse] [int] NULL,
	[idan] [float] NULL,
	[idcentro] [int] NULL,
	[idcta] [int] NULL,
	[idcdpr] [int] NULL,
	[vdprecon] [float] NULL,
	[vdimpcon] [float] NULL,
	[iddep] [int] NULL,
	[idprdser] [int] NULL,
	[vdsercan] [float] NULL,
	[vdserpre] [float] NULL,
	[vdunid] [varchar](20) NULL,
	[vdunitip] [tinyint] NOT NULL,
	[vddmsest] [tinyint] NULL,
	[vdpreof] [float] NULL,
	[idme] [int] NULL,
	[vdicet] [float] NULL,
	[vdni] [varchar](20) NULL,
	[vdesttri] [tinyint] NULL,
	[vdtpre] [int] NULL,
	[vdpreus] [float] NOT NULL,
	[vdimpus] [float] NOT NULL,
	[vdpcosus] [float] NOT NULL,
	[vdiceus] [float] NOT NULL,
	[vddescus] [float] NOT NULL,
	[vdpreconus] [float] NOT NULL,
	[vdimpconus] [float] NOT NULL,
	[vdserpreus] [float] NOT NULL,
	[vdpreofus] [float] NOT NULL,
	[vdicetus] [float] NOT NULL,
	[vdtpreus] [float] NOT NULL,
	[vdsercanus] [float] NOT NULL,
	[vddetcod] [varchar](100) NULL,
	[vdidobj] [int] NOT NULL,
	[vddesca] [decimal](16, 4) NOT NULL,
	[vddespr] [decimal](16, 4) NOT NULL,
	[vddespp] [decimal](16, 4) NOT NULL,
	[vddesot] [decimal](16, 4) NOT NULL,
	[vddescaus] [decimal](16, 4) NOT NULL,
	[vddesprus] [decimal](16, 4) NOT NULL,
	[vddesppus] [decimal](16, 4) NOT NULL,
	[vddesotus] [decimal](16, 4) NOT NULL,
	[vdanucan] [float] NOT NULL,
	[vdanuice] [float] NOT NULL,
	[vdanutice] [float] NOT NULL,
	[vdanudes] [float] NOT NULL,
	[vdanuimp] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idvd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbveh]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbveh](
	[idveh] [int] IDENTITY(1,1) NOT NULL,
	[vehnom] [varchar](100) NOT NULL,
	[vehest] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idveh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbven]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbven](
	[idven] [int] IDENTITY(1,1) NOT NULL,
	[vtipo] [varchar](4) NULL,
	[vtipa] [tinyint] NULL,
	[idcli] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[vdoc] [varchar](30) NULL,
	[vfec] [datetime] NULL,
	[vdet] [varchar](100) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpm] [int] NULL,
	[vtipp] [tinyint] NULL,
	[vpla] [int] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idac] [int] NULL,
	[iddev] [int] NULL,
	[vord] [int] NULL,
	[vnit] [varchar](15) NULL,
	[vcli] [varchar](150) NULL,
	[idtg] [int] NULL,
	[valfa] [varchar](12) NULL,
	[vnord] [bigint] NULL,
	[vdesc] [float] NULL,
	[vobs] [varchar](75) NULL,
	[idiv] [int] NULL,
	[vnau] [varchar](100) NULL,
	[vcon] [varchar](20) NULL,
	[vefa] [varchar](1) NULL,
	[vnfac] [varchar](15) NULL,
	[vmes] [varchar](7) NULL,
	[vges] [smallint] NULL,
	[idort] [int] NULL,
	[iddepven] [int] NULL,
	[vtc] [real] NOT NULL,
	[vidzona] [int] NOT NULL,
	[vtog] [float] NULL,
	[venest] [tinyint] NOT NULL,
	[vdmsest] [tinyint] NULL,
	[vncuo] [smallint] NULL,
	[vpint] [float] NULL,
	[vfeccuo] [datetime] NULL,
	[vnum] [int] NULL,
	[vcuoini] [float] NULL,
	[vfectr] [datetime] NULL,
	[idpeddm] [varchar](30) NULL,
	[vdat1] [varchar](100) NULL,
	[vdat2] [varchar](100) NULL,
	[vdat3] [varchar](100) NULL,
	[vdat4] [varchar](100) NULL,
	[vda1] [varchar](100) NULL,
	[vda2] [varchar](100) NULL,
	[vda3] [varchar](100) NULL,
	[vda4] [varchar](100) NULL,
	[vdetmod] [varchar](100) NULL,
	[vnroint] [int] NULL,
	[vdetadu] [varchar](200) NULL,
	[idobj] [int] NULL,
	[vestaut] [tinyint] NULL,
	[vusuaut] [varchar](50) NULL,
	[vhoraaut] [datetime] NULL,
	[vmoneda] [tinyint] NOT NULL,
	[vbd] [varchar](50) NULL,
	[vestentrega] [varchar](50) NULL,
	[vcicompl] [varchar](5) NULL,
	[vdocid] [int] NOT NULL,
	[vmpid] [int] NOT NULL,
	[vmpdoc] [varchar](50) NULL,
	[vemid] [int] NOT NULL,
	[vmpimp] [decimal](10, 2) NOT NULL,
	[vclicel] [varchar](20) NULL,
	[vcliemail] [varchar](100) NULL,
	[vanudesfin] [float] NOT NULL,
	[vanumpimp] [float] NOT NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvenadic]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvenadic](
	[idvenadic] [int] IDENTITY(1,1) NOT NULL,
	[idadic] [int] NOT NULL,
	[idven] [int] NOT NULL,
	[venadicpos] [int] NOT NULL,
	[venadicdet] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idvenadic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvenanulado]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvenanulado](
	[idven] [int] NOT NULL,
	[vtipo] [varchar](4) NULL,
	[vtipa] [tinyint] NULL,
	[idcli] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[vdoc] [varchar](30) NULL,
	[vfec] [datetime] NULL,
	[vdet] [varchar](100) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpm] [int] NULL,
	[vtipp] [tinyint] NULL,
	[vpla] [int] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idac] [int] NULL,
	[iddev] [int] NULL,
	[vord] [int] NULL,
	[vnit] [varchar](15) NULL,
	[vcli] [varchar](150) NULL,
	[idtg] [int] NULL,
	[valfa] [varchar](12) NULL,
	[vnord] [bigint] NULL,
	[vdesc] [float] NULL,
	[vobs] [varchar](75) NULL,
	[idiv] [int] NULL,
	[vnau] [varchar](100) NULL,
	[vcon] [varchar](20) NULL,
	[vefa] [varchar](1) NULL,
	[vnfac] [varchar](15) NULL,
	[vmes] [varchar](7) NULL,
	[vges] [smallint] NULL,
	[idort] [int] NULL,
	[iddepven] [int] NULL,
	[vtc] [real] NOT NULL,
	[vidzona] [int] NOT NULL,
	[vtog] [float] NULL,
	[venest] [tinyint] NOT NULL,
	[vdmsest] [tinyint] NULL,
	[vncuo] [smallint] NULL,
	[vpint] [float] NULL,
	[vfeccuo] [datetime] NULL,
	[vnum] [int] NULL,
	[vcuoini] [float] NULL,
	[vfectr] [datetime] NULL,
	[idpeddm] [varchar](30) NULL,
	[vdat1] [varchar](100) NULL,
	[vdat2] [varchar](100) NULL,
	[vdat3] [varchar](100) NULL,
	[vdat4] [varchar](100) NULL,
	[vda1] [varchar](100) NULL,
	[vda2] [varchar](100) NULL,
	[vda3] [varchar](100) NULL,
	[vda4] [varchar](100) NULL,
	[vdetmod] [varchar](100) NULL,
	[vnroint] [int] NULL,
	[vdetadu] [varchar](200) NULL,
	[idobj] [int] NULL,
	[vestaut] [tinyint] NULL,
	[vusuaut] [varchar](50) NULL,
	[vhoraaut] [datetime] NULL,
	[vmoneda] [tinyint] NOT NULL,
	[vbd] [varchar](50) NULL,
	[vestentrega] [varchar](50) NULL,
	[vcicompl] [varchar](5) NULL,
	[vdocid] [int] NOT NULL,
	[vmpid] [int] NOT NULL,
	[vmpdoc] [varchar](50) NULL,
	[vemid] [int] NOT NULL,
	[vmpimp] [decimal](10, 2) NOT NULL,
	[vclicel] [varchar](20) NULL,
	[vcliemail] [varchar](100) NULL,
	[vanudesfin] [float] NOT NULL,
	[vanumpimp] [float] NOT NULL,
	[sucreg] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvenaux]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvenaux](
	[idvx] [int] IDENTITY(1,1) NOT NULL,
	[idtg] [int] NULL,
	[idvd] [int] NULL,
	[idven] [int] NOT NULL,
	[idprd] [int] NOT NULL,
	[idalm] [int] NOT NULL,
	[vdtipo] [int] NULL,
	[vdcan] [float] NOT NULL,
	[vdpre] [float] NOT NULL,
	[vdimp] [float] NOT NULL,
	[vdest] [smallint] NOT NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[idpm] [int] NULL,
	[vtipp] [tinyint] NULL,
	[idtra] [int] NULL,
	[idaj] [int] NULL,
	[idac] [int] NULL,
	[iddev] [int] NULL,
	[vord] [int] NULL,
	[vdpcos] [float] NULL,
	[vdice] [float] NULL,
	[vddesc] [float] NULL,
	[idcd] [int] NULL,
	[vdnfila] [int] NULL,
	[idse] [int] NULL,
	[idcentro] [int] NULL,
	[vdcxu] [float] NULL,
	[vdunid] [varchar](20) NULL,
	[vdunitip] [tinyint] NOT NULL,
	[vxdmsest] [tinyint] NULL,
	[vddesca] [decimal](16, 4) NOT NULL,
	[vddespr] [decimal](16, 4) NOT NULL,
	[vddespp] [decimal](16, 4) NOT NULL,
	[vddesot] [decimal](16, 4) NOT NULL,
	[vddescaus] [decimal](16, 4) NOT NULL,
	[vddesprus] [decimal](16, 4) NOT NULL,
	[vddesppus] [decimal](16, 4) NOT NULL,
	[vddesotus] [decimal](16, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvenelim]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvenelim](
	[idven] [int] NOT NULL,
	[vedmsest] [tinyint] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvenobj]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvenobj](
	[idvo] [int] IDENTITY(1,1) NOT NULL,
	[idemp] [int] NULL,
	[idprd] [int] NULL,
	[vomes] [varchar](10) NULL,
	[vocan] [float] NOT NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idvo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvis]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvis](
	[idvis] [int] IDENTITY(1,1) NOT NULL,
	[idcli] [int] NOT NULL,
	[idemp] [int] NOT NULL,
	[visfec] [datetime] NULL,
	[idvt] [int] NOT NULL,
	[idmot] [varchar](10) NOT NULL,
	[visdet] [varchar](200) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
	[vidmsest] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[idvis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvismot]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvismot](
	[idmot] [varchar](10) NOT NULL,
	[motdes] [varchar](200) NULL,
	[usumod] [varchar](50) NULL,
	[fecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvistipo]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvistipo](
	[idvt] [int] NOT NULL,
	[vtcod] [varchar](20) NOT NULL,
	[vtnom] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvtp]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvtp](
	[idvtp] [int] NOT NULL,
	[vtpnom] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idvtp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbwcols]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbwcols](
	[wctdoc] [int] NOT NULL,
	[wccod] [varchar](30) NOT NULL,
	[wcnom] [varchar](100) NULL,
	[wcpos] [int] NOT NULL,
	[wcancho] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wccod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbzon]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbzon](
	[idz] [int] IDENTITY(1,1) NOT NULL,
	[zcod] [varchar](10) NULL,
	[idemp] [int] NULL,
	[znom] [varchar](100) NULL,
	[zterr] [varchar](20) NULL,
	[ztipo] [varchar](20) NOT NULL,
	[idterr] [int] NOT NULL,
	[zest] [tinyint] NOT NULL,
	[zdia] [tinyint] NOT NULL,
	[zdmsest] [tinyint] NULL,
	[zdesfin] [float] NOT NULL,
	[znsuc] [int] NOT NULL,
	[idgz] [int] NOT NULL,
	[zmarc] [image] NULL,
	[sucreg] [int] NULL,
	[zusumod] [varchar](50) NULL,
	[zfecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbzongr]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbzongr](
	[idgz] [int] IDENTITY(1,1) NOT NULL,
	[gznom] [varchar](100) NULL,
	[gzusumod] [varchar](50) NULL,
	[gzfecmod] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idgz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbzp]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbzp](
	[idzp] [int] IDENTITY(1,1) NOT NULL,
	[idpz] [int] NOT NULL,
	[idprv] [int] NOT NULL,
	[zpusumod] [varchar](50) NULL,
	[zpfecmod] [datetime] NULL,
	[sucreg] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idzp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[idus] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](30) NULL,
	[pass] [varchar](50) NULL,
	[usumod] [varchar](30) NULL,
	[fecmod] [datetime] NULL,
	[usest] [tinyint] NOT NULL,
	[nombre] [varchar](100) NULL,
	[iniciales] [varchar](10) NULL,
	[modpreven] [tinyint] NOT NULL,
	[idcentro] [int] NOT NULL,
	[moddesfin] [tinyint] NOT NULL,
	[suctod] [tinyint] NOT NULL,
	[usultsuc] [int] NOT NULL,
	[verval] [tinyint] NOT NULL,
	[selcob] [tinyint] NOT NULL,
	[autcred] [tinyint] NOT NULL,
	[pcpred] [varchar](100) NULL,
	[facauto] [tinyint] NULL,
	[uimpr] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEWCLIENTE]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VIEWCLIENTE]
AS
SELECT     idcli, clicod, clinom, clirazon, clinit, clifing, sucreg, usumod, cliidtipo
FROM         dbo.tbcli
WHERE     (CAST(clifing AS date) = CAST(GETDATE() AS date))

GO
/****** Object:  View [dbo].[vista_factura]    Script Date: 01/07/2023 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vista_factura]
AS
SELECT     dbo.tbven.vdoc AS numerofactura, dbo.tbven.vfec AS fechaEmision, dbo.tbven.vtipo AS codigoTipoDocumentoIdentidad, dbo.tbven.vcli AS nombreRazonSocial, dbo.tbcli.idcli AS codigoCliente, 
                      dbo.tbprd.prdcod, dbo.tbprd.prdnom, dbo.tbven.vnit, dbo.tbven.vdesc, dbo.tbprd.prdunid, dbo.tbcli.clicel, dbo.tbcli.cliemail, dbo.tbven.idven, dbo.tbvd.idprd, dbo.tbvd.vdpre, dbo.tbvd.vdimp, 
                      dbo.tbvd.vdcan, dbo.tbvd.vddesc, dbo.tbven.usumod, dbo.tbvd.vdpreof, dbo.tbven.sucreg, dbo.tbven.vdocid AS Tipodoc, dbo.tbven.vmpdoc AS Tarjeta, dbo.tbven.vmpid AS Formapago, 
                      dbo.tbven.vmpimp AS MontoGift, dbo.tbven.vcicompl AS Complemento, dbo.tbvd.vdunitip AS Unidad,dbo.tbvd.vdcxu AS CXU , dbo.tbven.vnau


FROM         dbo.tbcli INNER JOIN
                      dbo.tbven ON dbo.tbcli.idcli = dbo.tbven.idcli INNER JOIN
                      dbo.tbvd ON dbo.tbven.idven = dbo.tbvd.idven INNER JOIN
                      dbo.tbprd ON dbo.tbvd.idprd = dbo.tbprd.idprd
WHERE (CAST(dbo.tbven.vfec AS date) = CAST(GETDATE() AS date) AND dbo.tbven.vtipo='VF' ) 

GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [bmodosuc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmodalta]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmcob]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ditraval]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dforan]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dtipotcaf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [dbven]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmodpcos]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dcambio]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [encosvenxcen]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ocucencom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ocudolcom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [impdet]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [imphora]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [impdatosemp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dimprec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [vpvencos]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmodventas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmodcompras]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmodinventarios]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [icomcajas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [dventas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [dcompras]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [dinventarios]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [dcontabilidad]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dvalidarcbtes]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ('INGRESO DE PRODUCCION') FOR [dtiprod]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fmtcom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [compxu]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ocucajas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [soloprodprov]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [IDclipuntoventa]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ActCatPalm]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [NroloteV]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [imprnomcor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mostrarsaldos]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmclizon]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [moskxu]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mospickdec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modfecent]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ImpCbteRef]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mododescom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [novenzon]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [nomod2us]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mvog]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmsenproc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmcli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ('01') FOR [catunilever]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgaumbody]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noimpzona]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modoig]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [expsalir]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [imprazvd]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmrazon]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fordprod]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [nesolocant]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [enmonex]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [PModPrec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmkgs]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [idane]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [despro]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [desfinpalm]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [impdolcob]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ordselprod]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Ipv2dec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [frflete]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [prectcli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dcartera]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ccmultas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dunac]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmcob]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmprec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [venmpcs]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmItpc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ccmi]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ccip]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [inumven]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [inumvenini]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [icodQR]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dTamQR]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dSoc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dFpr]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fravt]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [LCVed]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noverifenlace]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dpedaut]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [execom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modtes]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [leyimpr]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ImpCodDir]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [precero]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fmtser]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [tipotxt]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdv]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgau]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [leyendaan]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [cantcero]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [roipc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ordcursor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [tdcli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [placli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [frdirvend]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpnom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgcodp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgmof]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [inescc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fcodol]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dordcbte]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [tpven]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [impnexlin]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgdes]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgimptp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgimptc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpdir]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgXaum_de]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgYaum_de]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((2)) FOR [fgdeali]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fglogoX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fglogoY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fglogoW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fglogoH]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdeW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgimpcod]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgnomsub]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((11)) FOR [fgtammem]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [verifpreccom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mosmue]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [actew]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [acteh]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [acteal]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fpag]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumlitx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumlity]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumqrx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumqry]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumfcx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumfcy]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumsanx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [aumsany]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Wlit]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ImpTP]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ingxtdoc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [preciomin]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [venpago]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ImpNCP]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [AumLBO]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ivaxg]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Xmarca]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Ymarca]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Wmarca]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [Hmarca]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgTAumX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgTAumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdetam]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnetam]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgNIC]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmdesc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [palmvpf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [coleqven]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [clixsuc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [lcdf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgice]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgund]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubt]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgtus]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdetaumx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdetaumy]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdfaaumx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdfaaumy]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpdet]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgaumblim]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgconus]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpdetinf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [novercorr]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ro4dec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noimpdetne]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnoimpmem]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnoimptit]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnoimpnit]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgServCant]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [envcbxfac]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmverifsaldos]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [engenventes]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [sancalinea]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dfacsep]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgposxsfc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgposysfc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgcuados]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgaumxcop]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgaumycop]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dNVFP]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [msolofac]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [if3dec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgdetancho]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmaycom]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dNCOCR]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dAUVCR]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [FRImpDir]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modobimon]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgmemcolor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgtitalinea]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgtitancho]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgtittam]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modoenimp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fglincolor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgcab2lin]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgDCaumX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgDCaumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgcabrelleno]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgcabtextocolor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [enpagsc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [lincbtes]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [busp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmactcli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [anumot]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpnomcli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [descargaped]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [facpags]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ilogorep]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [pedobs]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgposyini]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fglineas]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ('VENTA SERVICIO') FOR [fgvsdet]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [genbon]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaaumX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaaumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaH]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaA]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaT]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgibtd]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [itumax]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimpcb]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnitcliaumx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnitcliaumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [facnit0]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [idescrund]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ventasdatosini]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSaumX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSaumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSH]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSA]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaST]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaSC]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgnotaSB]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnotaC]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgnotaB]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtaumX]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtaumY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtH]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtA]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgsubtT]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgsubtB]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [micd]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [vencliobli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [venvenobli]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [fgnoic0]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgnfacolor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgtitcolor]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdoc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocx]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocY]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocW]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocH]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [valzadic1]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modofacrevcontab]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [selsping]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [vmverifcierre]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ctprec]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noselvend]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((3)) FOR [nivdescpp]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((3)) FOR [nivdescot]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [vdescadic]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [umaxauto]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [cobdesc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgimphora]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noimpglocta]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocxprev]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [CLdocYprev]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ('Nombre Comercial') FOR [fgnomclitit]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [fgNologoori]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ndnivel1]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [cbimptpf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [comsf]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmactubic]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [noimpvenne]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dvdiag]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ntrasxm]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1)) FOR [mostraserv]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dfchofer]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dfadic]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [mccc]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((9)) FOR [dialimanu]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((1000)) FOR [Mminid]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [venmodcant]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [venselserv]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [dmoddistrib]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [ComNumxA]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [modoanu]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [clivalgeo]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [lvdm]
GO
ALTER TABLE [dbo].[confemp] ADD  DEFAULT ((0)) FOR [HabFL]
GO
ALTER TABLE [dbo].[dm_cabfac] ADD  DEFAULT ((0)) FOR [vpla]
GO
ALTER TABLE [dbo].[dm_categorias] ADD  DEFAULT ((0)) FOR [nivel]
GO
ALTER TABLE [dbo].[dm_desctemp] ADD  DEFAULT ((0)) FOR [porc]
GO
ALTER TABLE [dbo].[dm_descxvol] ADD  DEFAULT ((0)) FOR [rini]
GO
ALTER TABLE [dbo].[dm_descxvol] ADD  DEFAULT ((0)) FOR [rfin]
GO
ALTER TABLE [dbo].[dm_descxvol] ADD  DEFAULT ((0)) FOR [porc]
GO
ALTER TABLE [dbo].[dm_detfac] ADD  DEFAULT ((0)) FOR [vdcan]
GO
ALTER TABLE [dbo].[dm_detfac] ADD  DEFAULT ((0)) FOR [vdpre]
GO
ALTER TABLE [dbo].[dm_detfac] ADD  DEFAULT ((0)) FOR [vddesc]
GO
ALTER TABLE [dbo].[dm_doccab] ADD  DEFAULT ((0)) FOR [dplazo]
GO
ALTER TABLE [dbo].[dm_doccab] ADD  DEFAULT ((0)) FOR [dsaldo]
GO
ALTER TABLE [dbo].[dm_docdet] ADD  DEFAULT ((0)) FOR [detcan]
GO
ALTER TABLE [dbo].[dm_docdet] ADD  DEFAULT ((0)) FOR [detpre]
GO
ALTER TABLE [dbo].[dm_docdet] ADD  DEFAULT ((0)) FOR [detdsc]
GO
ALTER TABLE [dbo].[dm_docdet] ADD  DEFAULT ((0)) FOR [detimp]
GO
ALTER TABLE [dbo].[dm_docdet] ADD  DEFAULT ((0)) FOR [detfila]
GO
ALTER TABLE [dbo].[dm_log] ADD  DEFAULT ((0)) FOR [idiv]
GO
ALTER TABLE [dbo].[dm_log] ADD  DEFAULT ((0)) FOR [idven]
GO
ALTER TABLE [dbo].[dm_productos] ADD  DEFAULT ((0)) FOR [uxc]
GO
ALTER TABLE [dbo].[dm_productos] ADD  DEFAULT ((0)) FOR [Precio]
GO
ALTER TABLE [dbo].[dm_productos] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[tbac] ADD  DEFAULT ((0)) FOR [idcobaux]
GO
ALTER TABLE [dbo].[tbac] ADD  DEFAULT ((0)) FOR [acidiv]
GO
ALTER TABLE [dbo].[tbacaf] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbaccana] ADD  DEFAULT ((0)) FOR [idan]
GO
ALTER TABLE [dbo].[tbaccana] ADD  DEFAULT ((0)) FOR [accest]
GO
ALTER TABLE [dbo].[tbaj] ADD  DEFAULT ((0)) FOR [idiv]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ((0)) FOR [idemp]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ('NO') FOR [almncarga]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ((0)) FOR [idctaalm]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ((0)) FOR [almnsuc]
GO
ALTER TABLE [dbo].[tbalm] ADD  DEFAULT ((0)) FOR [almest]
GO
ALTER TABLE [dbo].[tban] ADD  DEFAULT ((0)) FOR [anpre]
GO
ALTER TABLE [dbo].[tban] ADD  DEFAULT ((0)) FOR [idag]
GO
ALTER TABLE [dbo].[tbap] ADD  DEFAULT ((0)) FOR [apmon]
GO
ALTER TABLE [dbo].[tbap] ADD  DEFAULT ((0)) FOR [aptc]
GO
ALTER TABLE [dbo].[tbcanal] ADD  DEFAULT ((0)) FOR [idcanalpadre]
GO
ALTER TABLE [dbo].[tbcat] ADD  DEFAULT ((0)) FOR [catidclit]
GO
ALTER TABLE [dbo].[tbcat] ADD  DEFAULT ((0)) FOR [catclitp]
GO
ALTER TABLE [dbo].[tbcbtes] ADD  DEFAULT ((0)) FOR [valido]
GO
ALTER TABLE [dbo].[tbcbtes] ADD  DEFAULT ((0)) FOR [cbidiv]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdnf]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [idvdpr]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdprocest]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdimpus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cddescpro1]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cddescpro2]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdexe]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdcanmu]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdpesop]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdvalus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdpreus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cddscus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdpcosus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cddescpro1us]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cddescpro2us]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdexeus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdval]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdtc]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdiceus]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdidcen]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdiddep]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdidobj]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdfle]
GO
ALTER TABLE [dbo].[tbcd] ADD  DEFAULT ((0)) FOR [cdfleus]
GO
ALTER TABLE [dbo].[tbciu] ADD  DEFAULT ((0)) FOR [idciu]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [clicuo]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [climon]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [idcat]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [clidesfin]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [cliidemp]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [cliinter]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [idciu]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [idloc]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [idcanal]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [clilat]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((0)) FOR [clilon]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((1)) FOR [idrg]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ('CI') FOR [cliidtipo]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((1)) FOR [clidocid]
GO
ALTER TABLE [dbo].[tbcli] ADD  DEFAULT ((1)) FOR [climpid]
GO
ALTER TABLE [dbo].[tbcliprec] ADD  DEFAULT ((0)) FOR [idcli]
GO
ALTER TABLE [dbo].[tbcliprec] ADD  DEFAULT ((0)) FOR [idprd]
GO
ALTER TABLE [dbo].[tbcliprec] ADD  DEFAULT ((0)) FOR [cprval]
GO
ALTER TABLE [dbo].[tbcliprec] ADD  DEFAULT ((1)) FOR [cprtipo]
GO
ALTER TABLE [dbo].[tbcmp] ADD  DEFAULT ((0)) FOR [cmpmon]
GO
ALTER TABLE [dbo].[tbcmp] ADD  DEFAULT ((6.96)) FOR [cmptc]
GO
ALTER TABLE [dbo].[tbcmp_prv] ADD  DEFAULT ((0)) FOR [cmpmon]
GO
ALTER TABLE [dbo].[tbcmp_prv] ADD  DEFAULT ((0)) FOR [cmptc]
GO
ALTER TABLE [dbo].[tbcmu] ADD  DEFAULT ((0)) FOR [idcom]
GO
ALTER TABLE [dbo].[tbcmu] ADD  DEFAULT ((0)) FOR [idprd]
GO
ALTER TABLE [dbo].[tbcmu] ADD  DEFAULT ((0)) FOR [cmunro]
GO
ALTER TABLE [dbo].[tbcmu] ADD  DEFAULT ((0)) FOR [cmutal]
GO
ALTER TABLE [dbo].[tbcmu] ADD  DEFAULT ((0)) FOR [cmugrm]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [idiv]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [idctabco]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cobcambio]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [ctipodoc]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cpagadocon]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ('0') FOR [cnrocon]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cbmoneda]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cbtc]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cidcen]
GO
ALTER TABLE [dbo].[tbcob] ADD  DEFAULT ((0)) FOR [cimpus]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [iddev]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [idcen]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cncarga]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((1)) FOR [ctc]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [idclic]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [idcbteprov]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cimpdev]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cctadev]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [idpz]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ('V') FOR [cest]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ('0') FOR [cnpol]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((1)) FOR [ctipocom]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [civaimp]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cmon]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cmoneda]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [idcomfle]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cfelec]
GO
ALTER TABLE [dbo].[tbcom] ADD  DEFAULT ((0)) FOR [cidalm]
GO
ALTER TABLE [dbo].[tbCortes] ADD  DEFAULT ((0)) FOR [corefe]
GO
ALTER TABLE [dbo].[tbcp] ADD  DEFAULT ((0)) FOR [cpimpus]
GO
ALTER TABLE [dbo].[tbcp] ADD  DEFAULT ((0)) FOR [idcmp]
GO
ALTER TABLE [dbo].[tbcp] ADD  DEFAULT ((0)) FOR [cpidcen]
GO
ALTER TABLE [dbo].[tbctasaf] ADD  DEFAULT ((0)) FOR [aftipo]
GO
ALTER TABLE [dbo].[tbctl] ADD  DEFAULT ('0') FOR [ctlniv]
GO
ALTER TABLE [dbo].[tbctros] ADD  DEFAULT ((0)) FOR [idcg]
GO
ALTER TABLE [dbo].[tbctsret] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ('0') FOR [dnau]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((1)) FOR [dini]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dtfac]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dexento]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ('VF') FOR [dvtipo]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dest]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dalq]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [didprv]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dfacter]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ((0)) FOR [dservcan]
GO
ALTER TABLE [dbo].[tbdosif] ADD  DEFAULT ('V') FOR [destado]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsbase]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsba]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsbaimp]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsdia]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsimp]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [dsprc]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [idpg]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((0)) FOR [idprdsel]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsmay]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsmin]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsage]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dssm]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsesp]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsp6]
GO
ALTER TABLE [dbo].[tbds] ADD  DEFAULT ((1)) FOR [dsp7]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [iditem]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdmay]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdmin]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdage]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdsm]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdesp]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdp6]
GO
ALTER TABLE [dbo].[tbdsd] ADD  DEFAULT ((0)) FOR [dsdp7]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [idus]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empest]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empflete]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((1)) FOR [idconf]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empnsuc]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [emptpag]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empidalm]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empcomis]
GO
ALTER TABLE [dbo].[tbemp] ADD  DEFAULT ((0)) FOR [empidan]
GO
ALTER TABLE [dbo].[tbenco] ADD  DEFAULT ((0)) FOR [ensuc]
GO
ALTER TABLE [dbo].[tbest] ADD  DEFAULT ((0)) FOR [idest]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [idven]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [idcli]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [ftipo]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [fnau]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [fnro]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ('0') FOR [fnit]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ('SIN NOMBRE') FOR [fraz]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ('0') FOR [fccon]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ('V') FOR [fest]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [fdes]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [ftc]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [sucreg]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((1)) FOR [fdocid]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((1)) FOR [fmpid]
GO
ALTER TABLE [dbo].[tbfac] ADD  DEFAULT ((0)) FOR [femid]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [idsal]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [idprd]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdund]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdcan]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((1)) FOR [fduxc]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdpre]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fddes]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdice]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdexe]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdimp]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdnfi]
GO
ALTER TABLE [dbo].[tbfacdet] ADD  DEFAULT ((0)) FOR [fdidvd]
GO
ALTER TABLE [dbo].[tbfacpl] ADD  DEFAULT ((0)) FOR [plncu]
GO
ALTER TABLE [dbo].[tbfacpl] ADD  DEFAULT ((0)) FOR [plimp]
GO
ALTER TABLE [dbo].[tbfacpl] ADD  DEFAULT ((0)) FOR [plint]
GO
ALTER TABLE [dbo].[tbfacpl] ADD  DEFAULT ((0)) FOR [pltot]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ('0') FOR [nropol]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [idprvfcom]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [descbon]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [fcform]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [fcprecin]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [fcaux]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((1)) FOR [seesp]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [seiehd]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [seipj]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [setasas]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [seotros]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [segratc]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [sesubt]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [segift]
GO
ALTER TABLE [dbo].[tbfcom] ADD  DEFAULT ((0)) FOR [fcfelec]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifnro]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifform]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifPrec]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifImp]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifice]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifexe]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifnet]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifIva]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifncb]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifnfi]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifsub]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [ifdes]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [idanact]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [idangas]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((1)) FOR [seesp]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [seiehd]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [seipj]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [setasas]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [seotros]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [segratc]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [segift]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [fcifelec]
GO
ALTER TABLE [dbo].[tbfcomimp] ADD  DEFAULT ((0)) FOR [PorcExento]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [tazacero]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [descbon]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [esp]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('0') FOR [placa]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('0') FOR [pais]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('0') FOR [envase]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('0') FOR [producto]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('0') FOR [autoriz]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ('') FOR [secompl]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [seiehd]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [seipj]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [setasas]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [seotros]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [sesubt]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [segift]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [setipo]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [sppre]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [scpais]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((2)) FOR [seesp]
GO
ALTER TABLE [dbo].[tbfven] ADD  DEFAULT ((0)) FOR [fvfelec]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvnro]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvImp]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvice]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvexe]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvnet]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvIva]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvesp]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvnfi]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvsub]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvtce]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvdes]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ('0') FOR [fvpla]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ('0') FOR [fvpai]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ('0') FOR [fvten]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ('0') FOR [fvtpr]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ('0') FOR [fvaut]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [idanact]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [idaning]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [seiehd]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [seipj]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [setasas]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [seotros]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [segift]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [setipo]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [spcan]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [sppre]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [scpais]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [sctprod]
GO
ALTER TABLE [dbo].[tbfvenimp] ADD  DEFAULT ((0)) FOR [fvifelec]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [idctac]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [idctag]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gnau]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ('0') FOR [gcon]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gimp]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gest]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gexe]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gice]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ('0') FOR [gnit]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gdesc]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gnsuc]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gidcen]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [giueser]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [giuebie]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [greit]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [grciva]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [grcalq]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [idan]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [giehd]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gipj]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gtasas]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gotros]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [gtcero]
GO
ALTER TABLE [dbo].[tbgastos] ADD  DEFAULT ((0)) FOR [ggift]
GO
ALTER TABLE [dbo].[tbica] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbica] ADD  DEFAULT ((1)) FOR [icancb]
GO
ALTER TABLE [dbo].[tbica] ADD  DEFAULT ((0)) FOR [icapre]
GO
ALTER TABLE [dbo].[tbica] ADD  DEFAULT ((0)) FOR [icafor]
GO
ALTER TABLE [dbo].[tbiv] ADD  DEFAULT ((0)) FOR [ivtotal]
GO
ALTER TABLE [dbo].[tbiv] ADD  DEFAULT ((0)) FOR [ivcuotas]
GO
ALTER TABLE [dbo].[tbiv] ADD  DEFAULT ((0)) FOR [idservicio]
GO
ALTER TABLE [dbo].[tbiv] ADD  DEFAULT ((0)) FOR [idclialta]
GO
ALTER TABLE [dbo].[tbiv] ADD  DEFAULT ((0)) FOR [ividemp]
GO
ALTER TABLE [dbo].[tbloc] ADD  DEFAULT ((0)) FOR [idloc]
GO
ALTER TABLE [dbo].[tbloc] ADD  DEFAULT ((0)) FOR [idciu]
GO
ALTER TABLE [dbo].[tbnef] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbobj] ADD  DEFAULT ((0)) FOR [sucreg]
GO
ALTER TABLE [dbo].[tbobjuni] ADD  DEFAULT ((0)) FOR [idemp]
GO
ALTER TABLE [dbo].[tbobjuni] ADD  DEFAULT ((0)) FOR [oumes]
GO
ALTER TABLE [dbo].[tbobjuni] ADD  DEFAULT ((0)) FOR [oumonto]
GO
ALTER TABLE [dbo].[tboid] ADD  DEFAULT ((0)) FOR [oidcan]
GO
ALTER TABLE [dbo].[tboid] ADD  DEFAULT ((0)) FOR [oidpre]
GO
ALTER TABLE [dbo].[tboid] ADD  DEFAULT ((0)) FOR [oidimp]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [idctabco]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [ptipodoc]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [pmon]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((1)) FOR [ptc]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [pagnsuc]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [pcuo]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ('0') FOR [pnrocon]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [idren]
GO
ALTER TABLE [dbo].[tbpag] ADD  DEFAULT ((0)) FOR [pimpus]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [versionBD]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [dimprinicbte]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((1)) FOR [sumexentos]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [ititcen]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [reexie]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [versiontriggers]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [tcbcxp]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gange]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gandi]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gangn]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [mslec]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [vgicbte]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [TCBxPag]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [pcct]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((5)) FOR [pcctint]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [locprecgl]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [renfmt]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((1)) FOR [verifclirep]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ('Centro') FOR [cccen]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ('Departamento') FOR [ccdep]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ('Objeto') FOR [ccobj]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [clmnpag]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [iueini]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [iueact]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gest1]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gest2]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [gest3]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [cgmcontado]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [iuepac41]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [pfl]
GO
ALTER TABLE [dbo].[tbparam] ADD  DEFAULT ((0)) FOR [cpimp]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((0)) FOR [pdetdesc]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((1)) FOR [pdetunitip]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((1)) FOR [pdetcxu]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((0)) FOR [pdetprecious]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((0)) FOR [pdetdescus]
GO
ALTER TABLE [dbo].[tbpDet] ADD  DEFAULT ((0)) FOR [pdetimpus]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((1)) FOR [etc]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((0)) FOR [etipopago]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((0)) FOR [eplazo]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((0)) FOR [pesuc]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((0)) FOR [edimpus]
GO
ALTER TABLE [dbo].[tbpe] ADD  DEFAULT ((0)) FOR [edpreus]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((1)) FOR [prdcxu]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ('SI') FOR [prdabs]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ('NO') FOR [prddst]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdctaing]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdctacos]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdcms2]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [idanp]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdkxu]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ('CAJA') FOR [prduxcdes]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((12)) FOR [prduxd]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ('DOCENA') FOR [prduxddes]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ('1') FOR [prduvdef]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdtvol]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdklxc]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdskxc]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [idunicat]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [idpg]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpxgr]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((1)) FOR [prdeqpt]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpoficialUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpmayconUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpmaycreUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpminconUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpmincreUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpespconUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpespcreUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpsmconUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpsmcreUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpagconUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdpagcreUS]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [idmarca]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [idmotor]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdbal]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp6con]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp6cre]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp7con]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp7cre]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp6conus]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp6creus]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp7conus]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdp7creus]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdancho]
GO
ALTER TABLE [dbo].[tbprd] ADD  DEFAULT ((0)) FOR [prdalto]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [idprd]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [idprdmp]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [pftipo]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [pfcan]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [pfpcos]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [pfval]
GO
ALTER TABLE [dbo].[tbprdfor] ADD  DEFAULT ((0)) FOR [pfidalm]
GO
ALTER TABLE [dbo].[tbprdgrp] ADD  DEFAULT ((0)) FOR [pgtipo]
GO
ALTER TABLE [dbo].[tbprdlin] ADD  DEFAULT ((0)) FOR [idctaing]
GO
ALTER TABLE [dbo].[tbprdlin] ADD  DEFAULT ((0)) FOR [idctacos]
GO
ALTER TABLE [dbo].[tbprdlin] ADD  DEFAULT ((0)) FOR [idctaingdoc]
GO
ALTER TABLE [dbo].[tbprdlin] ADD  DEFAULT ((0)) FOR [idctacosdoc]
GO
ALTER TABLE [dbo].[tbprdlin] ADD  DEFAULT ((0)) FOR [linice]
GO
ALTER TABLE [dbo].[tbPres] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbPres] ADD  DEFAULT ((0)) FOR [idan]
GO
ALTER TABLE [dbo].[tbPres] ADD  DEFAULT ((0)) FOR [iddep]
GO
ALTER TABLE [dbo].[tbPres] ADD  DEFAULT ((0)) FOR [idobj]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [prodesc]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [protipp]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [propla]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [idcli]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [idemp]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [protpre]
GO
ALTER TABLE [dbo].[tbpro] ADD  DEFAULT ((0)) FOR [protip]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvmon]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvest]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [pidemp]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [pidtra]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvtipo]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvimpnom]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvsoc]
GO
ALTER TABLE [dbo].[tbprv] ADD  DEFAULT ((0)) FOR [prvsfc]
GO
ALTER TABLE [dbo].[tbprvzon] ADD  DEFAULT ((0)) FOR [nsuc]
GO
ALTER TABLE [dbo].[tbprvzon] ADD  DEFAULT ((0)) FOR [idemp]
GO
ALTER TABLE [dbo].[tbprvzon] ADD  DEFAULT ((0)) FOR [pzest]
GO
ALTER TABLE [dbo].[tbren] ADD  DEFAULT ((0)) FOR [renidcta]
GO
ALTER TABLE [dbo].[tbren] ADD  DEFAULT ((0)) FOR [rentipo]
GO
ALTER TABLE [dbo].[tbren] ADD  DEFAULT ((0)) FOR [idempr]
GO
ALTER TABLE [dbo].[tbrutadia] ADD  DEFAULT ((0)) FOR [idz]
GO
ALTER TABLE [dbo].[tbrutadia] ADD  DEFAULT ((0)) FOR [rddia]
GO
ALTER TABLE [dbo].[tbrutadia] ADD  DEFAULT ((0)) FOR [rdobj]
GO
ALTER TABLE [dbo].[tbTC] ADD  DEFAULT ((0)) FOR [tcufv]
GO
ALTER TABLE [dbo].[tbTDoc] ADD  DEFAULT ((0)) FOR [tdiva]
GO
ALTER TABLE [dbo].[tbtg] ADD  DEFAULT ((0)) FOR [tgb1imp]
GO
ALTER TABLE [dbo].[tbtg] ADD  DEFAULT ((0)) FOR [tgb1idc]
GO
ALTER TABLE [dbo].[tbtg] ADD  DEFAULT ((0)) FOR [tgb2imp]
GO
ALTER TABLE [dbo].[tbtg] ADD  DEFAULT ((0)) FOR [tgb2idc]
GO
ALTER TABLE [dbo].[tbtg] ADD  DEFAULT ((0)) FOR [tgdevefec]
GO
ALTER TABLE [dbo].[tbtgac] ADD  DEFAULT ((0)) FOR [idtg]
GO
ALTER TABLE [dbo].[tbtgac] ADD  DEFAULT ((0)) FOR [tgaccor]
GO
ALTER TABLE [dbo].[tbtgac] ADD  DEFAULT ((0)) FOR [tgacimp]
GO
ALTER TABLE [dbo].[tbtgac] ADD  DEFAULT ((0)) FOR [tgacnro]
GO
ALTER TABLE [dbo].[tbtipocbte] ADD  DEFAULT ((0)) FOR [nsuc]
GO
ALTER TABLE [dbo].[tbtipocbte] ADD  DEFAULT ((0)) FOR [cbrecibo]
GO
ALTER TABLE [dbo].[tbTran] ADD  DEFAULT ((0)) FOR [idan]
GO
ALTER TABLE [dbo].[tbTran] ADD  DEFAULT ((0)) FOR [iddep]
GO
ALTER TABLE [dbo].[tbTran] ADD  DEFAULT ((0)) FOR [idobj]
GO
ALTER TABLE [dbo].[tbTran] ADD  DEFAULT ((0)) FOR [idpt]
GO
ALTER TABLE [dbo].[tbTran] ADD  DEFAULT ((0)) FOR [ptporc]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trdeb]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trhab]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trdebex]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trhabex]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbmod]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbtipt]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbnitp]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbmfac]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbmpag]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbmacu]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbnitb]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbtipp]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trbpagado]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ('0') FOR [trbncon]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((1)) FOR [trbtipt_2]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trprecan]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trpreimp]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [trform]
GO
ALTER TABLE [dbo].[tbtrdet] ADD  DEFAULT ((0)) FOR [tridcd]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idcbteAJ]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idcbte]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idtran]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idtrd]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idcta]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [udUFVini]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [udUFVfin]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [udvalorBS]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [udvalorUFV]
GO
ALTER TABLE [dbo].[tbudet] ADD  DEFAULT ((0)) FOR [udAjuste]
GO
ALTER TABLE [dbo].[tbunicat] ADD  DEFAULT ((0)) FOR [idpadre]
GO
ALTER TABLE [dbo].[tbunicat] ADD  DEFAULT ((1)) FOR [unicatniv]
GO
ALTER TABLE [dbo].[tbvc] ADD  DEFAULT ((1)) FOR [vctc]
GO
ALTER TABLE [dbo].[tbvc] ADD  DEFAULT ((0)) FOR [vcidcen]
GO
ALTER TABLE [dbo].[tbvc] ADD  DEFAULT ((0)) FOR [vcidcta]
GO
ALTER TABLE [dbo].[tbvc] ADD  DEFAULT ((0)) FOR [vcimpus]
GO
ALTER TABLE [dbo].[tbvc] ADD  DEFAULT ((0)) FOR [vcidiv]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesc]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [idse]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((1)) FOR [vdunitip]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdpreus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdimpus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdpcosus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdiceus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddescus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdpreconus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdimpconus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdserpreus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdpreofus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdicetus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdtpreus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdsercanus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdidobj]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesca]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddespr]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddespp]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesot]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddescaus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesprus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesppus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vddesotus]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdanucan]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdanuice]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdanutice]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdanudes]
GO
ALTER TABLE [dbo].[tbvd] ADD  DEFAULT ((0)) FOR [vdanuimp]
GO
ALTER TABLE [dbo].[tbveh] ADD  DEFAULT ((0)) FOR [vehest]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ('V') FOR [vefa]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((1)) FOR [vtc]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vidzona]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [venest]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vmoneda]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((1)) FOR [vdocid]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((1)) FOR [vmpid]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vemid]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vmpimp]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vanudesfin]
GO
ALTER TABLE [dbo].[tbven] ADD  DEFAULT ((0)) FOR [vanumpimp]
GO
ALTER TABLE [dbo].[tbvenadic] ADD  DEFAULT ((0)) FOR [venadicpos]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanula__vefa__47B19113]  DEFAULT ('V') FOR [vefa]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanulad__vtc__48A5B54C]  DEFAULT ((1)) FOR [vtc]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vidzo__4999D985]  DEFAULT ((0)) FOR [vidzona]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__venes__4A8DFDBE]  DEFAULT ((0)) FOR [venest]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vmone__4B8221F7]  DEFAULT ((0)) FOR [vmoneda]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vdoci__4C764630]  DEFAULT ((1)) FOR [vdocid]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vmpid__4D6A6A69]  DEFAULT ((1)) FOR [vmpid]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vemid__4E5E8EA2]  DEFAULT ((0)) FOR [vemid]
GO
ALTER TABLE [dbo].[tbvenanulado] ADD  CONSTRAINT [DF__tbvenanul__vmpim__4F52B2DB]  DEFAULT ((0)) FOR [vmpimp]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vdpcos]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vdice]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [idcd]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vdnfila]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [idse]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vdcxu]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((1)) FOR [vdunitip]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddesca]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddespr]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddespp]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddesot]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddescaus]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddesprus]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddesppus]
GO
ALTER TABLE [dbo].[tbvenaux] ADD  DEFAULT ((0)) FOR [vddesotus]
GO
ALTER TABLE [dbo].[tbvenelim] ADD  DEFAULT ((0)) FOR [idven]
GO
ALTER TABLE [dbo].[tbvenelim] ADD  DEFAULT ((0)) FOR [vedmsest]
GO
ALTER TABLE [dbo].[tbvenobj] ADD  DEFAULT ((0)) FOR [vocan]
GO
ALTER TABLE [dbo].[tbvis] ADD  DEFAULT ((0)) FOR [idcli]
GO
ALTER TABLE [dbo].[tbvis] ADD  DEFAULT ((0)) FOR [idemp]
GO
ALTER TABLE [dbo].[tbwcols] ADD  DEFAULT ((0)) FOR [wctdoc]
GO
ALTER TABLE [dbo].[tbwcols] ADD  DEFAULT ((0)) FOR [wcpos]
GO
ALTER TABLE [dbo].[tbwcols] ADD  DEFAULT ((0)) FOR [wcancho]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ('ZONE') FOR [ztipo]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [idterr]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [zest]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [zdia]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [zdesfin]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [znsuc]
GO
ALTER TABLE [dbo].[tbzon] ADD  DEFAULT ((0)) FOR [idgz]
GO
ALTER TABLE [dbo].[tbzp] ADD  DEFAULT ((0)) FOR [idpz]
GO
ALTER TABLE [dbo].[tbzp] ADD  DEFAULT ((0)) FOR [idprv]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [usest]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((1)) FOR [modpreven]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [idcentro]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((1)) FOR [moddesfin]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [suctod]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [usultsuc]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((1)) FOR [verval]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((1)) FOR [selcob]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [autcred]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((0)) FOR [facauto]
GO
ALTER TABLE [dbo].[dm_docdet]  WITH CHECK ADD  CONSTRAINT [doc_det] FOREIGN KEY([iddoc])
REFERENCES [dbo].[dm_doccab] ([iddoc])
GO
ALTER TABLE [dbo].[dm_docdet] CHECK CONSTRAINT [doc_det]
GO
ALTER TABLE [dbo].[tbcd]  WITH CHECK ADD  CONSTRAINT [col_com_cd] FOREIGN KEY([idcom])
REFERENCES [dbo].[tbcom] ([idcom])
GO
ALTER TABLE [dbo].[tbcd] CHECK CONSTRAINT [col_com_cd]
GO
ALTER TABLE [dbo].[tbcp]  WITH CHECK ADD  CONSTRAINT [col_com_cp] FOREIGN KEY([idcom])
REFERENCES [dbo].[tbcom] ([idcom])
GO
ALTER TABLE [dbo].[tbcp] CHECK CONSTRAINT [col_com_cp]
GO
ALTER TABLE [dbo].[tbcp]  WITH CHECK ADD  CONSTRAINT [col_pag_cp] FOREIGN KEY([idpag])
REFERENCES [dbo].[tbpag] ([idpag])
GO
ALTER TABLE [dbo].[tbcp] CHECK CONSTRAINT [col_pag_cp]
GO
ALTER TABLE [dbo].[tbfacdet]  WITH CHECK ADD  CONSTRAINT [col_fac_det] FOREIGN KEY([idfac])
REFERENCES [dbo].[tbfac] ([idfac])
GO
ALTER TABLE [dbo].[tbfacdet] CHECK CONSTRAINT [col_fac_det]
GO
ALTER TABLE [dbo].[tbfcom]  WITH CHECK ADD  CONSTRAINT [col_tran_tbfcom] FOREIGN KEY([id])
REFERENCES [dbo].[tbTran] ([id])
GO
ALTER TABLE [dbo].[tbfcom] CHECK CONSTRAINT [col_tran_tbfcom]
GO
ALTER TABLE [dbo].[tbfven]  WITH CHECK ADD  CONSTRAINT [col_tran_fven] FOREIGN KEY([id])
REFERENCES [dbo].[tbTran] ([id])
GO
ALTER TABLE [dbo].[tbfven] CHECK CONSTRAINT [col_tran_fven]
GO
ALTER TABLE [dbo].[tbgastos]  WITH CHECK ADD  CONSTRAINT [rel_ren_ga] FOREIGN KEY([idren])
REFERENCES [dbo].[tbren] ([idren])
GO
ALTER TABLE [dbo].[tbgastos] CHECK CONSTRAINT [rel_ren_ga]
GO
ALTER TABLE [dbo].[tbpDet]  WITH CHECK ADD  CONSTRAINT [col_pro_po] FOREIGN KEY([idpro])
REFERENCES [dbo].[tbpro] ([idpro])
GO
ALTER TABLE [dbo].[tbpDet] CHECK CONSTRAINT [col_pro_po]
GO
ALTER TABLE [dbo].[tbprd]  WITH CHECK ADD  CONSTRAINT [col_prdlin_prd] FOREIGN KEY([idlinea])
REFERENCES [dbo].[tbprdlin] ([idlinea])
GO
ALTER TABLE [dbo].[tbprd] CHECK CONSTRAINT [col_prdlin_prd]
GO
ALTER TABLE [dbo].[tbtgac]  WITH CHECK ADD  CONSTRAINT [rel_cor_ac] FOREIGN KEY([idcor])
REFERENCES [dbo].[tbCortes] ([idcor])
GO
ALTER TABLE [dbo].[tbtgac] CHECK CONSTRAINT [rel_cor_ac]
GO
ALTER TABLE [dbo].[tbTran]  WITH CHECK ADD  CONSTRAINT [col_cbtes_tran] FOREIGN KEY([idCBTE])
REFERENCES [dbo].[tbcbtes] ([idCBTE])
GO
ALTER TABLE [dbo].[tbTran] CHECK CONSTRAINT [col_cbtes_tran]
GO
ALTER TABLE [dbo].[tbTran]  WITH CHECK ADD  CONSTRAINT [col_ctas_tran] FOREIGN KEY([idcta])
REFERENCES [dbo].[tbCtas] ([idcta])
GO
ALTER TABLE [dbo].[tbTran] CHECK CONSTRAINT [col_ctas_tran]
GO
ALTER TABLE [dbo].[tbtrdet]  WITH CHECK ADD  CONSTRAINT [col_tran_trdet] FOREIGN KEY([id])
REFERENCES [dbo].[tbTran] ([id])
GO
ALTER TABLE [dbo].[tbtrdet] CHECK CONSTRAINT [col_tran_trdet]
GO
ALTER TABLE [dbo].[tbvc]  WITH CHECK ADD  CONSTRAINT [col_cob_vc] FOREIGN KEY([idcob])
REFERENCES [dbo].[tbcob] ([idcob])
GO
ALTER TABLE [dbo].[tbvc] CHECK CONSTRAINT [col_cob_vc]
GO
ALTER TABLE [dbo].[tbvc]  WITH CHECK ADD  CONSTRAINT [col_ven_vc] FOREIGN KEY([idven])
REFERENCES [dbo].[tbven] ([idven])
GO
ALTER TABLE [dbo].[tbvc] CHECK CONSTRAINT [col_ven_vc]
GO
ALTER TABLE [dbo].[tbvd]  WITH CHECK ADD  CONSTRAINT [col_ven_vd] FOREIGN KEY([idven])
REFERENCES [dbo].[tbven] ([idven])
GO
ALTER TABLE [dbo].[tbvd] CHECK CONSTRAINT [col_ven_vd]
GO
ALTER TABLE [dbo].[tbvenadic]  WITH CHECK ADD  CONSTRAINT [col_adic_ven] FOREIGN KEY([idadic])
REFERENCES [dbo].[tbadic] ([idadic])
GO
ALTER TABLE [dbo].[tbvenadic] CHECK CONSTRAINT [col_adic_ven]
GO
ALTER TABLE [dbo].[tbvenadic]  WITH CHECK ADD  CONSTRAINT [col_ven_adic] FOREIGN KEY([idven])
REFERENCES [dbo].[tbven] ([idven])
GO
ALTER TABLE [dbo].[tbvenadic] CHECK CONSTRAINT [col_ven_adic]
GO
ALTER TABLE [dbo].[tbvis]  WITH CHECK ADD  CONSTRAINT [col_mot_vis] FOREIGN KEY([idmot])
REFERENCES [dbo].[tbvismot] ([idmot])
GO
ALTER TABLE [dbo].[tbvis] CHECK CONSTRAINT [col_mot_vis]
GO
ALTER TABLE [dbo].[tbvis]  WITH CHECK ADD  CONSTRAINT [col_vt_vis] FOREIGN KEY([idvt])
REFERENCES [dbo].[tbvistipo] ([idvt])
GO
ALTER TABLE [dbo].[tbvis] CHECK CONSTRAINT [col_vt_vis]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbcli"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 50
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEWCLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEWCLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[11] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbcli"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tbven"
            Begin Extent = 
               Top = 12
               Left = 311
               Bottom = 132
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 63
         End
         Begin Table = "tbvd"
            Begin Extent = 
               Top = 16
               Left = 557
               Bottom = 136
               Right = 755
            End
            DisplayFlags = 280
            TopColumn = 33
         End
         Begin Table = "tbprd"
            Begin Extent = 
               Top = 15
               Left = 807
               Bottom = 157
               Right = 1015
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2490
         Table = 1170
         Output = 720
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vista_factura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vista_factura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vista_factura'
GO
USE [master]
GO
ALTER DATABASE [DHM_2023] SET  READ_WRITE 
GO