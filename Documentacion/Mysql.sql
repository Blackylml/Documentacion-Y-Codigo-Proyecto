--MYSQL
CREATE TABLE Usuario
(
	idUsuario int auto_increment primary key,
	nombre varchar(50) not null,
	honor char not null,
	estatus bit default 1 not null,
	idRango int not null,
	idBotin int not null
);


CREATE TABLE Rango
(
	idRango int auto_increment primary key,
	nombre varchar(50) not null,
	nivel char not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE Historial
(
	idHistorial int auto_increment primary key,
	campeonJugado varchar(50) not null,
	asesinatos char not null,
	muertes char not null,
	asistencias char not null,
	minionsEliminados char not null,
	oroObtenido char not null,
	fecha datetime not null, 
	duracion char not null,
	estatus bit default 1 not null,
	idUsuario int not null
);

CREATE TABLE MatchMakingRank
(
	idMatchMakingRank int auto_increment primary key,
	puntosLigas char not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE Clash
(
	idClash int auto_increment primary key,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	nombre varchar(50) not null,
	premio varchar(50) not null,
	participantes varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null
);

CREATE TABLE Amigo
(
	idAmigo int auto_increment primary key,
	nombre varchar(50) not null,
	apodo varchar(50) not null, 
	tipo varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE Configuracion
(
	idConfiguracion int auto_increment primary key,
	graficos varchar(50) not null,
	atajos varchar(50) not null, 
	sonido varchar(50) not null,
	chat varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null
);

CREATE TABLE Mision
(
	idMision int auto_increment primary key,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	descripcion varchar(50) not null,
	recompensa varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null,
	idPaseBatalla int not null
);

CREATE TABLE PaginaRuna
(
	idPaginaRuna int auto_increment primary key,
	principal varchar(50) not null,
	secundaria varchar(50) not null,
	adaptales varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null,
	idRunas int not null
);

CREATE TABLE Desafio
(
	idDesafio int auto_increment primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	rango varchar(50) not null,
	porcentaje char not null,
	rama varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null
);

CREATE TABLE Partida
(
	idPartida int auto_increment primary key,
	fecha datetime not null,
	duracion char not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null,
	idMapa int not null
);

CREATE TABLE Campeon
(
	idCampeon int auto_increment primary key,
	nombre varchar(50) not null,
	habilidadQ varchar(50) not null,
    habilidadW varchar(50) not null,
	habilidadE varchar(50) not null,
	habilidadR varchar(50) not null,
	rol varchar(50) not null,
	posicion varchar(50) not null,
	estatus bit default 1 not null,
	idMaestria int not null,
	idCofre int not null,
	idEterno int not null
);

CREATE TABLE Habilidad
(
	idHabilidad int auto_increment primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
    descripcion varchar(50) not null,
	costo char not null,
	estatus bit default 1 not null,
	idCampeon int not null
);

CREATE TABLE Eterno
(
	idEterno int auto_increment primary key,
	serie char not null,
	descripcionEternoInicial varchar(50) not null,
	descripcionEternoMedio varchar(50) not null,
	descripcionEternoFinal varchar(50) not null,
    descripcion varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null
);

CREATE TABLE Objeto
(
	idObjeto int auto_increment primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	beneficios varchar(50) not null,
	precio char not null,
    rareza varchar(50) not null,
	estatus bit default 1 not null,
	idTiendaJuego int not null
);

CREATE TABLE Maestria
(
	idMaestria int auto_increment primary key,
	nivel char not null,
	puntos char not null,
	estatus bit default 1 not null,
	idUsuario  int not null
);

CREATE TABLE Runas
(
	idRunas int auto_increment primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	Beneficio varchar(50) not null,
	nivel char not null,
	estatus bit default 1 not null
);

CREATE TABLE Build
(
	idBuild int auto_increment primary key,
	mitico varchar(50) not null,
	bota varchar(50) not null,
	nombreObjeto1 varchar(50) not null,
	nombreObjeto2 varchar(50) not null,
	nombreObjeto3 varchar(50) not null,
	nombreObjeto4 varchar(50) not null,
	estatus bit default 1 not null,
	idTiendaJuego int not null
);

CREATE TABLE TiendaJuego
(
	idTiendaJuego int auto_increment primary key,
	objetos varchar(50) not null,
	pociones varchar(50) not null,
	botas varchar(50) not null,
	centinelas varchar(50) not null,
	objetosRecomendados varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE ModoJuego
(
	idModoJuego int auto_increment primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	tipoMapa varchar(50) not null,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	estatus bit default 1 not null,
	idPartida int not null
);

CREATE TABLE Subdito
(
	idSubdito int auto_increment primary key,
	tipo varchar(50) not null,
	oroEntregado char not null,
	vida char not null,
	daño char not null,
	estatus bit default 1 not null,
	idPartida  int not null
);

CREATE TABLE MounstrosJG
(
	idMounstrosJG int auto_increment primary key,
	nombre varchar(50) not null,
	cantidad char not null,
	oroEntregado char not null,
	daño char not null,
	estatus bit default 1 not null,
	idPartida  int not null
);

CREATE TABLE Dragon
(
	idDragon int auto_increment primary key,
	almaEntregada varchar(50) not null,
	beneficio varchar(50) not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null,
	idMounstrosJG int not null
);

CREATE TABLE MounstroVacio
(
	idMounstroVacio int auto_increment primary key,
	tipo varchar(50) not null,
	efecto varchar(50) not null,
	beneficio varchar(50) not null,
	duracionBeneficio varchar(50) not null,
	estatus bit default 1 not null,
	idMounstrosJG int not null
);

CREATE TABLE Buff
(
	idBuff int auto_increment primary key,
	tipo varchar(50) not null,
	beneficio varchar(50) not null,
	duracionBeneficio varchar(50) not null,
	estatus bit default 1 not null,
	idMounstrosJG  int not null
);

CREATE TABLE Hechizo 
(
	idHechizo int auto_increment primary key,
	nombre varchar(50) not null,
	efecto varchar(50) not null,
	endriamiento char not null,
	estatus bit default 1 not null,
	idUsuario  int not null
);

CREATE TABLE Parche 
(
	idParche int auto_increment primary key,
	numero char not null,
	tipo varchar(50) not null,
	descripcion varchar(50) not null,
	estatus bit default 1 not null,
	idSeason int not null
);

CREATE TABLE Centinela 
(
	idCentinela int auto_increment primary key,
	nombre varchar(50) not null,
	precio char not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null,
	idCofre int not null,
	idTienda int not null
);

CREATE TABLE Mapa 
(
	idMapa int auto_increment primary key,
	nombre varchar(50) not null,
	tamaño char not null,
	numeroCarriles char(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE Torre
(
	idTorre int auto_increment primary key,
	nivel char not null,
	placas char(5) not null,
	vida char not null,
	daño char not null,
	estatus bit default 1 not null,
	idPartida  int not null
);

CREATE TABLE Inhibidor 
(
	idInhibidor int auto_increment primary key,
	nivel char not null,
	vida char not null,
	tiempo char not null,
	estatus bit default 1 not null,
	idPartida int not null
);

CREATE TABLE Torneo 
(
    idTorneo int auto_increment primary key,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	participantes varchar(50) not null,
	rondas char not null,
	estatus bit default 1 not null,
	idRegion INT not null
);

CREATE TABLE Musica 
(
    idMusica int auto_increment primary key,
	nombre varchar(50) not null,
	duracion char not null,
	album varchar(50) not null,
	estatus bit default 1 not null,
	idPartida int not null,
	idWorlds int not null
);

CREATE TABLE Jugador 
(
    idJugador int auto_increment primary key,
	apodo varchar(50) not null,
	nombre varchar(50) not null,
	edad char not null,
	nacionalidad varchar(50) not null,
	main varchar(50) not null,
	estatus bit default 1 not null,
	idEquipo int not null
);

CREATE TABLE Estadistica
(
    idEstadistica int auto_increment primary key,
	killDeathAssistant char not null,
	farmPorMinuto char not null,
	campeonesDomesticos char not null,
	campeonesMundiales char not null,
	partidasJugadas char not null,
	estatus bit default 1 not null,
	idJugador int not null
);

CREATE TABLE Rol
(
    idRol int auto_increment primary key,
	rolPrincipal varchar(3) not null,
	rolSecundario varchar(3) not null,
	estatus bit default 1 not null,
	idJugador int not null
);

CREATE TABLE Worlds
(
    idWorlds int auto_increment primary key,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	participantes varchar(50) not null,
	locacionFinal varchar(50) not null,
	locacionFasegrupos varchar(50) not null,
	locacionSemifinal varchar(50) not null,
	locacionEliminatorias varchar(50) not null,
	premio char not null,
	estatus bit default 1 not null

);

CREATE TABLE Equipo
(
    idEquipo int auto_increment primary key,
	nombreEquipo varchar(50) not null,
	toplaner varchar(50) not null,
	jungla varchar(50) not null,
	mid varchar(50) not null,
	tirador varchar(50) not null,
	soporte varchar(50) not null,
	coach  varchar(50) not null,
	suplente  varchar(50) not null,
	estatus bit default 1 not null,
	idRegion INT not null
);

CREATE TABLE Region
(
    idRegion int auto_increment primary key,
	nombre varchar(50) not null,
	cantidadEquipos char not null,
	paises varchar(50) not null,
	estatus bit default 1 not null,
    idWorlds int not null
);

CREATE TABLE Skin
(
    idSkin int auto_increment primary key,
	nombre varchar(50) not null,
	serie varchar(50) not null,
	descripcion varchar(50) not null,
	tier varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null,
	idTienda int not null,
	idChroma int not null,
	idCampeon int not null, 
	idTutienda int not null
);

CREATE TABLE Tienda
(
    idTienda int auto_increment primary key,
	ofertas varchar(50) not null,
	masPopulares varchar(50) not null,
	estatus bit default 1 not null,
	idEterno int not null
);

CREATE TABLE PaseBatalla
(
    idPasebatalla int auto_increment primary key,
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	cantidadNiveles char not null,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	precio char not null,
	estatus bit default 1 not null,
	idUsuario int not null,
	idSeason int not null
);

CREATE TABLE Gesto
(
    idGesto int auto_increment primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null,
	idCofre int not null,
	idTienda int not null
);

CREATE TABLE Chroma
(
    idChroma int auto_increment primary key,
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null,
	idCampeon int not null,
	idTienda int not null
);

CREATE TABLE TuTienda
(
    idTutienda int auto_increment primary key,
	skinLegendaria varchar(50) not null,
	skinEpica varchar(50) not null,
	skinRara varchar(50) not null,
	skinNormal varchar(50) not null,
	descuento char not null,
	estatus bit default 1 not null,
	idHistorial int not null
);

CREATE TABLE cofre
(
    idCofre int auto_increment primary key,
	objetoEspecial varchar(50) not null,
	objetoNormal varchar(50) not null,
	tipo varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null,
	idBotin int not null,
	idBolsa int not null

);

CREATE TABLE botin
(
    idBotin int auto_increment primary key,
	nombreMaterial varchar(50) not null,
	descripcionMaterial varchar(50) not null,
	recompensaMaterial varchar(50) not null,
	precio char not null,
	estatus bit default 1 not null
);

CREATE TABLE regalo
(
    idRegalo int auto_increment primary key,
	destinatario varchar(50) not null,
	remitente varchar(50) not null,
	contenido varchar(50) not null,
	nota varchar(50) not null,
	estatus bit default 1 not null,
	idUsuario int not null,
	idAmigo int not null
);

CREATE TABLE Season
(
    idSeason int auto_increment primary key,
	fechaInicio datetime not null,
	fechaFinal datetime not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE Bolsa
(
    idBolsa int auto_increment primary key,
	cantidadCampeones char not null,
	cantidadGestos char not null,
	cantidadHechizos char not null,
	cantidadCentinelas char not null,
	estatus bit default 1 not null
);

CREATE TABLE EquipoTorneo
(
    idEquipoTorneo int auto_increment primary key,
	idTorneo INT not null,
	idEquipo INT not null,
	posicion varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE RolCampeon
(
    idRolCampeon int auto_increment primary key,
	idRol INT not null,
	idCampeon INT not null,
	rolSecundario varchar(50) not null,
	rolPrimario varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE CampeonBuild
(
    idCampeonBuild int auto_increment primary key,
	idBuild INT not null,
	idCampeon INT not null,
	builRecomendada varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE CampeonObjeto
(
    idCampeonObjeto int auto_increment primary key,
	idObjeto INT not null,
	idCampeon INT not null,
	objeto1 varchar(50) not null,
	objeto2 varchar(50) not null,
	objeto3 varchar(50) not null,
	objeto4 varchar(50) not null,
	mitico varchar(50) not null,
	botas varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE BuildObjeto
(
    idBuildObjeto int auto_increment primary key,
	idObjeto INT not null,
	idBuild INT not null,
	objeto1 varchar(50) not null,
	objeto2 varchar(50) not null,
	objeto3 varchar(50) not null,
	objeto4 varchar(50) not null,
	mitico varchar(50) not null,
	botas varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE PartidaMatchMakingRank
(
    idPartidaMatchMakingRank int auto_increment primary key,
	idPartida INT not null,
	idMatchMakingRank INT not null,
	matchMakingRankRojo char not null,
	matchMakingRankAzul char not null,
	estatus bit default 1 not null
);

CREATE TABLE MatchMakingRankHistorial
(
    idMatchMakingRankHistorial int auto_increment primary key,
	idMatchMakingRank INT not null,
	idHistorial INT not null,
	estatus bit default 1 not null
);

CREATE TABLE RangoSeason
(
    idRangoSeason int auto_increment primary key,
	idRango INT not null,
	idSeason INT not null,
	rangoSoloq char not null,
	rangoFlex char not null,
	estatus bit default 1 not null
);

CREATE TABLE UsuarioAmigos
(
    idUsuarioAmigos int auto_increment primary key,
	idUsuario INT not null,
	idAmigo INT not null,
	apodo varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE UsuarioPaginarunas
(
    idUsuarioPaginarunas int auto_increment primary key,
	idUsuario INT not null,
	idPaginaruna INT not null,
	paginaPersonalizada varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE TiendaBolsa
(
    idTiendaBolsa int auto_increment primary key,
	idTienda INT not null,
	idBolsa INT not null,
	objetosNoobtenidos varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE TorneoWorlds
(
    idTorneoWorlds int auto_increment primary key,
	idTorneo INT not null,
	idWorlds INT not null,
	Ganador varchar(50) not null,
	estatus bit default 1 not null
);

CREATE TABLE MatchMakingRankingUsuario
(
    idMatchMakingRankingUsuario int auto_increment primary key,
	idMatchMakingRank INT not null,
	idUsuario INT not null,
	estatus bit default 1 not null
);
ALTER TABLE	Usuario ADD CONSTRAINT PK_Usuario PRIMARY KEY (idUsuario)
ALTER TABLE	Rango ADD CONSTRAINT PK_Rango PRIMARY KEY (idRango)
ALTER TABLE	Historial ADD CONSTRAINT PK_Historial PRIMARY KEY (idHistorial)
ALTER TABLE	MatchMakingRank ADD CONSTRAINT PK_MatchMakingRank PRIMARY KEY (idMatchMakingRank)
ALTER TABLE	Clash ADD CONSTRAINT PK_Clash PRIMARY KEY (idClash)
ALTER TABLE	Amigo ADD CONSTRAINT PK_Amigo PRIMARY KEY (idAmigo)
ALTER TABLE	Configuracion ADD CONSTRAINT PK_Configuracion PRIMARY KEY (idConfiguracion)
ALTER TABLE	Mision ADD CONSTRAINT PK_Mision PRIMARY KEY (idMision)
ALTER TABLE	PaginaRuna ADD CONSTRAINT PK_PaginaRuna PRIMARY KEY (idPaginaRuna)
ALTER TABLE	Desafio ADD CONSTRAINT PK_Desafio PRIMARY KEY (idDesafio)
ALTER TABLE	Partida ADD CONSTRAINT PK_Partida PRIMARY KEY (idPartida)
ALTER TABLE	Habilidad ADD CONSTRAINT PK_Habilidad PRIMARY KEY (idHabilidad)
ALTER TABLE	Campeon ADD CONSTRAINT PK_Campeon PRIMARY KEY (idCampeon)
ALTER TABLE	Objeto ADD CONSTRAINT PK_Objeto PRIMARY KEY (idObjeto)
ALTER TABLE	Eterno ADD CONSTRAINT PK_Eterno PRIMARY KEY (idEterno)
ALTER TABLE	Maestria ADD CONSTRAINT PK_Maestria PRIMARY KEY (idMaestria)
ALTER TABLE	Runas ADD CONSTRAINT PK_Runas PRIMARY KEY (idRunas)
ALTER TABLE	Build ADD CONSTRAINT PK_Build PRIMARY KEY (idBuild)
ALTER TABLE	TiendaJuego ADD CONSTRAINT PK_TiendaJuego PRIMARY KEY (idTiendaJuego)
ALTER TABLE	ModoJuego ADD CONSTRAINT PK_ModoJuego PRIMARY KEY (idModoJuego)
ALTER TABLE	Subdito ADD CONSTRAINT PK_Subdito PRIMARY KEY (idSubdito)
ALTER TABLE	MounstrosJG ADD CONSTRAINT PK_MounstrosJG PRIMARY KEY (idMounstrosJG)
ALTER TABLE	Dragon ADD CONSTRAINT PK_Dragon PRIMARY KEY (idDragon)
ALTER TABLE	MounstroVacio ADD CONSTRAINT PK_MounstroVacio PRIMARY KEY (idMounstroVacio)
ALTER TABLE	Buff ADD CONSTRAINT PK_Buff PRIMARY KEY (idBuff)
ALTER TABLE	Parche ADD CONSTRAINT PK_Parche PRIMARY KEY (idParche)
ALTER TABLE	Hechizo ADD CONSTRAINT PK_Hechizo PRIMARY KEY (idHechizo)
ALTER TABLE	Centinela ADD CONSTRAINT PK_Centinela PRIMARY KEY (idCentinela)
ALTER TABLE	Mapa ADD CONSTRAINT PK_Mapa PRIMARY KEY (idMapa)
ALTER TABLE	Torre ADD CONSTRAINT PK_Torre PRIMARY KEY (idTorre)
ALTER TABLE	Inhibidor ADD CONSTRAINT PK_Inhibidor PRIMARY KEY (idInhibidor)
ALTER TABLE	Torneo ADD CONSTRAINT PK_Torneo PRIMARY KEY (idTorneo)
ALTER TABLE	Musica ADD CONSTRAINT PK_Musica PRIMARY KEY (idMusica)
ALTER TABLE	Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE	Estadistica ADD CONSTRAINT PK_Estadistica PRIMARY KEY (idEstadistica)
ALTER TABLE	Rol ADD CONSTRAINT PK_Rol PRIMARY KEY (idRol)
ALTER TABLE	Worlds ADD CONSTRAINT PK_Worlds PRIMARY KEY (idWorlds)
ALTER TABLE	Equipo ADD CONSTRAINT PK_Equipo PRIMARY KEY (idEquipo)
ALTER TABLE	Region ADD CONSTRAINT PK_Region PRIMARY KEY (idRegion)
ALTER TABLE	Skin ADD CONSTRAINT PK_Skin PRIMARY KEY (idSkin)
ALTER TABLE	Tienda ADD CONSTRAINT PK_Tienda PRIMARY KEY (idTienda)
ALTER TABLE	PaseBatalla ADD CONSTRAINT PK_PaseBatalla PRIMARY KEY (idPaseBatalla)
ALTER TABLE	Gesto ADD CONSTRAINT PK_Gesto PRIMARY KEY (idGesto)
ALTER TABLE	Chroma ADD CONSTRAINT PK_Chromas PRIMARY KEY (idChroma)
ALTER TABLE	TuTienda ADD CONSTRAINT PK_TuTienda PRIMARY KEY (idTutienda)
ALTER TABLE	Cofre ADD CONSTRAINT PK_Cofre PRIMARY KEY (idCofre)
ALTER TABLE	Botin ADD CONSTRAINT PK_Botin PRIMARY KEY (idBotin)
ALTER TABLE	Regalo ADD CONSTRAINT PK_Regalo PRIMARY KEY (idRegalo)
ALTER TABLE	Season ADD CONSTRAINT PK_Season PRIMARY KEY (idSeason)
ALTER TABLE	Bolsa ADD CONSTRAINT PK_Bolsa PRIMARY KEY (idBolsa)
ALTER TABLE	EquipoTorneo ADD CONSTRAINT PK_EquipoTorneo PRIMARY KEY (idEquipoTorneo)
ALTER TABLE	RolCampeon ADD CONSTRAINT PK_RolCampeon PRIMARY KEY (idRolCampeon)
ALTER TABLE	CampeonBuild ADD CONSTRAINT PK_CampeonBuild PRIMARY KEY (idCampeonBuild)
ALTER TABLE	CampeonObjeto ADD CONSTRAINT PK_CampeonObjeto PRIMARY KEY (idCampeonObjeto)
ALTER TABLE	BuildObjeto ADD CONSTRAINT PK_BuildObjeto PRIMARY KEY (idBuildObjeto)
ALTER TABLE	PartidaMatchMakingRank ADD CONSTRAINT PK_PartidaMatchMakingRank PRIMARY KEY (idPartidaMatchMakingRank)
ALTER TABLE	MatchMakingRankHistorial ADD CONSTRAINT PK_MatchMakingRankHistorial PRIMARY KEY (idMatchMakingRankHistorial)
ALTER TABLE	RangoSeason ADD CONSTRAINT PK_RangoSeason PRIMARY KEY (idRangoSeason)
ALTER TABLE	UsuarioAmigos ADD CONSTRAINT PK_UsuarioAmigos PRIMARY KEY (idUsuarioAmigos)
ALTER TABLE	UsuarioPaginarunas ADD CONSTRAINT PK_UsuarioPaginarunas PRIMARY KEY (idUsuarioPaginarunas)
ALTER TABLE	TiendaBolsa ADD CONSTRAINT PK_TiendaBolsa PRIMARY KEY (idTiendaBolsa)
ALTER TABLE	TorneoWorlds ADD CONSTRAINT PK_TorneoWorlds PRIMARY KEY (idTorneoWorlds)
ALTER TABLE	MatchMakingRankingUsuario ADD CONSTRAINT PK_MatchMakingRankingUsuario PRIMARY KEY (idMatchMakingRankingUsuario)
ALTER TABLE PartidaModoJuego ADD CONSTRAINT PK_PartidaModoJuego PRIMARY KEY (idPartidaModoJuego)



ALTER TABLE EquipoTorneo ADD CONSTRAINT FK_EquipoTorneoEquipo FOREIGN KEY (idEquipo) REFERENCES Equipo (idEquipo)
ALTER TABLE EquipoTorneo ADD CONSTRAINT FK_EquipoTorneoTorneo FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)

ALTER TABLE MatchMakingRankingUsuario ADD CONSTRAINT FK_MatchMakingRankingUsuarioMatchMakingRanking FOREIGN KEY (idMatchMakingRank) REFERENCES MatchMakingRank (idmatchMakingRank)
ALTER TABLE MatchMakingRankingUsuario ADD CONSTRAINT FK_FK_MatchMakingRankingUsuarioUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)

ALTER TABLE RolCampeon ADD CONSTRAINT FK_RolCampeonRol FOREIGN KEY (idRol) REFERENCES Rol (idRol)
ALTER TABLE RolCampeon ADD CONSTRAINT FK_RolCampeonCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)

ALTER TABLE CampeonBuild ADD CONSTRAINT FK_CampeonBuildCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)
ALTER TABLE CampeonBuild ADD CONSTRAINT FK_CampeonBuildBuild FOREIGN KEY (idBuild) REFERENCES Build (idBuild)

ALTER TABLE CampeonObjeto ADD CONSTRAINT FK_CampeonObjetoCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)
ALTER TABLE CampeonObjeto ADD CONSTRAINT FK_CampeonObjetoObjeto FOREIGN KEY (idObjeto) REFERENCES Objeto (idObjeto)

ALTER TABLE BuildObjeto ADD CONSTRAINT FK_BuildObjetoBuild FOREIGN KEY (idBuild) REFERENCES Build (idBuild)
ALTER TABLE BuildObjeto ADD CONSTRAINT FK_BuildObjetoObjeto FOREIGN KEY (idObjeto) REFERENCES Objeto (idObjeto)

ALTER TABLE PartidaMatchMakingRank ADD CONSTRAINT FK_PartidaMatchMakingRankPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
ALTER TABLE PartidaMatchMakingRank ADD CONSTRAINT FK_PartidaMatchMakingRankMatchMakingRank FOREIGN KEY (idMatchMakingRank) REFERENCES MatchMakingRank (idmatchMakingRank)

ALTER TABLE MatchMakingRankHistorial ADD CONSTRAINT FK_MatchMakingRankHistorialMatchMakingRank FOREIGN KEY (idMatchMakingRank) REFERENCES MatchMakingRank (idMatchMakingRank)
ALTER TABLE MatchMakingRankHistorial ADD CONSTRAINT FK_MatchMakingRankHistorialHistorial FOREIGN KEY (idHistorial) REFERENCES Historial (idHistorial)

ALTER TABLE RangoSeason ADD CONSTRAINT FK_RangoSeasonRango FOREIGN KEY (idRango) REFERENCES Rango (idRango)
ALTER TABLE RangoSeason ADD CONSTRAINT FK_RangoSeasonSeason FOREIGN KEY (idSeason) REFERENCES Season (idSeason)

ALTER TABLE UsuarioAmigos ADD CONSTRAINT FK_UsuarioAmigosUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE UsuarioAmigos ADD CONSTRAINT FK_UsuarioAmigosAmigos FOREIGN KEY (idAmigo) REFERENCES Amigo (idAmigo)

ALTER TABLE UsuarioPaginarunas ADD CONSTRAINT FK_UsuarioPaginarunasUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE UsuarioPaginarunas ADD CONSTRAINT FK_UsuarioPaginarunasPaginarinas FOREIGN KEY (idPaginaRuna) REFERENCES PaginaRuna (idPaginaRuna)

ALTER TABLE TiendaBolsa ADD CONSTRAINT FK_TiendaBolsaTienda FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
ALTER TABLE TiendaBolsa ADD CONSTRAINT FK_TiendaBolsaBolsa FOREIGN KEY (idBolsa) REFERENCES Bolsa (idBolsa)

ALTER TABLE TorneoWorlds ADD CONSTRAINT FK_TorneoWorldsTorneo FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
ALTER TABLE TorneoWorlds ADD CONSTRAINT FK_TorneoWorldsWorlds FOREIGN KEY (idWorlds) REFERENCES Worlds (idWorlds)

ALTER TABLE Usuario ADD CONSTRAINT FK_UsuarioRango FOREIGN KEY (idRango) REFERENCES Rango (idRango)

ALTER TABLE Musica ADD CONSTRAINT FK_MusicaPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
ALTER TABLE Musica ADD CONSTRAINT FK_MusicaWorlds FOREIGN KEY (idWorlds) REFERENCES Worlds (idWorlds)

ALTER TABLE Torneo ADD CONSTRAINT FK_TorneoRegion FOREIGN KEY (idRegion) REFERENCES Region (idRegion)

ALTER TABLE Equipo ADD CONSTRAINT FK_EquipoRegion FOREIGN KEY (idRegion) REFERENCES Region (idRegion)

ALTER TABLE Region ADD CONSTRAINT FK_RegionWorlds FOREIGN KEY (idWorlds) REFERENCES Worlds (idWorlds)

ALTER TABLE Rol ADD CONSTRAINT FK_RolJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)

ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEquipo FOREIGN KEY (idEquipo) REFERENCES Equipo (idEquipo)

ALTER TABLE Estadistica ADD CONSTRAINT FK_EstadisticaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)

ALTER TABLE MounstroVacio ADD CONSTRAINT FK_MounstroVacioMounstroJungla FOREIGN KEY (idMounstrosJG) REFERENCES MounstrosJG (idMounstrosJG)

ALTER TABLE Dragon ADD CONSTRAINT FK_DragonMounstroJG FOREIGN KEY (idMounstrosJG) REFERENCES MounstrosJG (idMounstrosJG)

ALTER TABLE Buff ADD CONSTRAINT FK_BuffMounstroJG FOREIGN KEY (idMounstrosJG) REFERENCES MounstrosJG (idMounstrosJG)

ALTER TABLE Subdito ADD CONSTRAINT FK_SubditoPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)

ALTER TABLE MounstrosJG ADD CONSTRAINT FK_MounstrosJGPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)

ALTER TABLE Torre ADD CONSTRAINT FK_TorrePartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)

ALTER TABLE Inhibidor ADD CONSTRAINT FK_InhibidorPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
--ModoJuego
ALTER TABLE ModoJuego ADD CONSTRAINT FK_ModoJuegoPartida FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
--Partida
ALTER TABLE Partida ADD CONSTRAINT FK_PartidaModoJuego Foreign Key (idModoJuego) References ModoJuego (idModoJuego)
--Mapa
ALTER TABLE Mapa ADD CONSTRAINT FK_Mapa
--Hechizo
ALTER TABLE Hechizo ADD CONSTRAINT FK_HechizoUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Desafios
ALTER TABLE Desafio ADD CONSTRAINT FK_DesasfiosUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--PaginaRuna
ALTER TABLE PaginaRuna ADD CONSTRAINT FK_idPaginaRunaUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE PaginaRuna ADD CONSTRAINT FK_idPaginaRunaRunas FOREIGN KEY (idRunas) REFERENCES Runas (idRunas)
--Historial
ALTER TABLE Historial ADD CONSTRAINT FK_HistorialUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Misiones
ALTER TABLE Mision ADD CONSTRAINT FK_MisionesUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Mision ADD CONSTRAINT FK_MisionesPaseBatalla FOREIGN KEY (idPaseBatalla) REFERENCES PaseBatalla (idPaseBatalla)
--PaseBatalla
ALTER TABLE PaseBatalla ADD CONSTRAINT FK_PaseBatallaUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Configuracio
ALTER TABLE Configuracion ADD CONSTRAINT FK_ConfiguracionUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Clash
ALTER TABLE Clash ADD CONSTRAINT FK_ClashUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Regalos
ALTER TABLE Regalo ADD CONSTRAINT FK_RegalosUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Regalo ADD CONSTRAINT FK_RegalosAmigos FOREIGN KEY (idAmigo) REFERENCES Amigo (idAmigo)
--PaseBatalla
ALTER TABLE PaseBatalla ADD CONSTRAINT FK_PaseBatallaSeason FOREIGN KEY (idSeason) REFERENCES Season (idSeason)
--Parche
ALTER TABLE Parche ADD CONSTRAINT FK_ParcheSeason FOREIGN KEY (idSeason) REFERENCES Season (idSeason)
--Maestria
ALTER TABLE Maestria ADD CONSTRAINT FK_MaestriaUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
--Usuario
ALTER TABLE Usuario ADD CONSTRAINT FK_UsuarioBotin FOREIGN KEY (idBotin) REFERENCES Botin (idBotin)
--Campeon
ALTER TABLE Campeon ADD CONSTRAINT FK_CampeonMaestria FOREIGN KEY (idMaestria) REFERENCES Maestria (idMaestria)
ALTER TABLE Campeon ADD CONSTRAINT FK_CampeonCofre FOREIGN KEY (idCofre) REFERENCES Cofre (idCofre)
ALTER TABLE Campeon ADD CONSTRAINT FK_CampeonEternos FOREIGN KEY (idEterno) REFERENCES Eterno (idEterno)
--Cofre
ALTER TABLE Cofre ADD CONSTRAINT FK_CofreBotin FOREIGN KEY (idBotin) REFERENCES Botin (idBotin)
ALTER TABLE Cofre ADD CONSTRAINT FK_CofreBolsa FOREIGN KEY (idBolsa) REFERENCES Bolsa (idBolsa)
--Centinela
ALTER TABLE Centinela ADD CONSTRAINT FK_CentinelaCofre FOREIGN KEY (idCofre) REFERENCES Cofre (idCofre)
--Gesto
ALTER TABLE Gesto ADD CONSTRAINT FK_GestoCofre FOREIGN KEY (idCofre) REFERENCES Cofre (idCofre)
ALTER TABLE Gesto ADD CONSTRAINT FK_GestoTienda FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
--Chroma
ALTER TABLE Chroma ADD CONSTRAINT FK_ChromaCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)
ALTER TABLE Chroma ADD CONSTRAINT FK_ChromaTienda FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
--Tienda
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaEternos FOREIGN KEY (idEterno) REFERENCES Eterno (idEterno)
--Centinela
ALTER TABLE Centinela ADD CONSTRAINT FK_CentinelaTienda FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
--Skin
ALTER TABLE Skin ADD CONSTRAINT FK_SkinTienda FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
ALTER TABLE Skin ADD CONSTRAINT FK_SkinChroma FOREIGN KEY (idChroma) REFERENCES Chroma (idChroma)
ALTER TABLE Skin ADD CONSTRAINT FK_SkinCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)
ALTER TABLE Skin ADD CONSTRAINT FK_SkinTutienda FOREIGN KEY (idTutienda) REFERENCES TuTienda (idTutienda)
--TuTienda
ALTER TABLE Tutienda ADD CONSTRAINT FK_TutiendaHistorial FOREIGN KEY (idHistorial) REFERENCES Historial (idHistorial)
--Build
ALTER TABLE Build ADD CONSTRAINT FK_BuildTiendaJuego FOREIGN KEY (idTiendaJuego) REFERENCES TiendaJuego (idTiendaJuego)
--Objeto
ALTER TABLE Objeto ADD CONSTRAINT FK_ObjetoTiendaJuego FOREIGN KEY (idTiendaJuego) REFERENCES TiendaJuego (idTiendaJuego)
--Habilidad
ALTER TABLE Habilidad ADD CONSTRAINT FK_HabilidadCampeon FOREIGN KEY (idCampeon) REFERENCES Campeon (idCampeon)
--INDICES
CREATE INDEX IX_Usuario ON Usuario(idUsuario)
CREATE INDEX IX_Rango ON Rango(idRango)
CREATE INDEX IX_Historial  ON Historial(idHistorial)
CREATE INDEX IX_MatchMakingRank  ON MatchMakingRank  (idMatchMakingRank )
CREATE INDEX IX_Clash  ON Clash  (idClash )
CREATE INDEX IX_Amigo  ON Amigo  (idAmigo )
CREATE INDEX IX_Configuracion  ON Configuracion  (idConfiguracion )
CREATE INDEX IX_Mision  ON Mision  (idMision )
CREATE INDEX IX_PaginaRuna  ON PaginaRuna  (idPaginaRuna )
CREATE INDEX IX_Desafio  ON Desafio  (idDesafio )
CREATE INDEX IX_Partida  ON Partida  (idPartida )
CREATE INDEX IX_Habilidad   ON Habilidad   (idHabilidad  )
CREATE INDEX IX_Campeon    ON Campeon   (idCampeon  )
CREATE INDEX IX_Objeto    ON Objeto   (idObjeto  )
CREATE INDEX IX_Eterno   ON Eterno   (idEterno )
CREATE INDEX IX_Maestria   ON Maestria  (idMaestria )
CREATE INDEX IX_Runas  ON Runas   (idRunas  )
CREATE INDEX IX_Build   ON Build  (idBuild  )
CREATE INDEX IX_TiendaJuego   ON TiendaJuego   (idTiendaJuego  )
CREATE INDEX IX_ModoJuego   ON ModoJuego   (idModoJuego  )
CREATE INDEX IX_Subdito   ON Subdito   (idSubdito  )
CREATE INDEX IX_MounstrosJG    ON MounstrosJG    (idMounstrosJG   )
CREATE INDEX IX_Dragon    ON Dragon    (idDragon   )
CREATE INDEX IX_MounstroVacio    ON MounstroVacio    (idMounstroVacio   )
CREATE INDEX IX_Buff   ON Buff    (idBuff   )
CREATE INDEX IX_Parche    ON Parche    (idParche  )
CREATE INDEX IX_Hechizo    ON Hechizo    (idHechizo   )
CREATE INDEX IX_Centinela    ON Centinela    (idCentinela   )
CREATE INDEX IX_Mapa    ON Mapa    (idMapa   )
CREATE INDEX IX_Torre    ON Torre    (idTorre   )
CREATE INDEX IX_Inhibidor    ON Inhibidor    (idInhibidor   )
CREATE INDEX IX_Torneo    ON Torneo    (idTorneo   )
CREATE INDEX IX_Musica   ON Musica    (idMusica   )
CREATE INDEX IX_Jugador    ON Jugador     (idJugador    )
CREATE INDEX IX_Estadistica    ON Estadistica     (idEstadistica    )
CREATE INDEX IX_Rol    ON Rol     (idRol    )
CREATE INDEX IX_Worlds    ON Worlds     (idWorlds    )
CREATE INDEX IX_Equipo    ON Equipo     (idEquipo    )
CREATE INDEX IX_Region    ON Region     (idRegion    )
CREATE INDEX IX_Skin    ON Skin     (idSkin    )
CREATE INDEX IX_Tienda    ON Tienda     (idTienda    )
CREATE INDEX IX_PaseBatalla    ON PaseBatalla     (idPaseBatalla    )
CREATE INDEX IX_Gesto    ON Gesto     (idGesto    )
CREATE INDEX IX_Chroma    ON Chroma     (idChroma    )
CREATE INDEX IX_TuTienda    ON TuTienda     (idTutienda    )
CREATE INDEX IX_Cofre    ON Cofre     (idCofre    )
CREATE INDEX IX_Botin    ON Botin     (idBotin    )
CREATE INDEX IX_Regalo    ON Regalo     (idRegalo   )
CREATE INDEX IX_Season     ON Season      (idSeason    )
CREATE INDEX IX_Bolsa     ON Bolsa      (idBolsa    )
CREATE INDEX IX_EquipoTorneo     ON EquipoTorneo      (idEquipoTorneo    )
CREATE INDEX IX_RolCampeon     ON RolCampeon     (idRolCampeon    )
CREATE INDEX IX_CampeonBuild     ON CampeonBuild      (idCampeonBuild    )
CREATE INDEX IX_CampeonObjeto    ON CampeonObjeto     (idCampeonObjeto    )
CREATE INDEX IX_BuildObjeto     ON BuildObjeto      (idBuildObjeto   )
CREATE INDEX IX_PartidaMatchMakingRank    ON PartidaMatchMakingRank      (idPartidaMatchMakingRank    )
CREATE INDEX IX_MatchMakingRankHistorial     ON MatchMakingRankHistorial      (idMatchMakingRankHistorial   )
CREATE INDEX IX_RangoSeason     ON RangoSeason      (idRangoSeason    )
CREATE INDEX IX_UsuarioAmigos     ON UsuarioAmigos      (idUsuarioAmigos    )
CREATE INDEX IX_UsuarioPaginarunas      ON UsuarioPaginarunas       (idUsuarioPaginarunas     )
CREATE INDEX IX_TiendaBolsa      ON TiendaBolsa       (idTiendaBolsa     )
CREATE INDEX IX_TorneoWorlds      ON TorneoWorlds       (idTorneoWorlds     )
CREATE INDEX IX_MatchMakingRankingUsuario      ON MatchMakingRankingUsuario       (idMatchMakingRankingUsuario     )

--Inserts
--Rango
INSERT INTO Rango (nombre, nivel, tipo) values('bronze', '1', 'soloq')

INSERT INTO Rango (nombre, nivel, tipo) values('oro', '2', 'soloq')

INSERT INTO Rango (nombre, nivel, tipo) values('oro', '3', 'soloq')

INSERT INTO Rango (nombre, nivel, tipo) values('oro', '4', 'soloq')

INSERT INTO Rango (nombre, nivel, tipo) values('platino', '1', 'flex')

INSERT INTO Rango (nombre, nivel, tipo) values('platino', '2', 'flex')

INSERT INTO Rango (nombre, nivel, tipo) values('platino', '4', 'flex')

INSERT INTO Rango (nombre, nivel, tipo) values('challenger', '3', 'flex')

INSERT INTO Rango (nombre, nivel, tipo) values('diamante', '3', 'flex')

INSERT INTO Rango (nombre, nivel, tipo) values('hierro', '3', 'flex')

insert into Rango (nombre, nivel, tipo) values()
SELECT *FROM Rango
UPDATE Rango SET nombre = 'bronze' WHERE idRango = 1

SELECT *FROM Rango
DELETE FROM Rango 

SELECT *FROM Rango
--MMR
INSERT INTO MatchMakingRank(puntosLigas, tipo) values(30, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(31, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(32, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(33, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(51, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(61, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(34, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(81, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(86, 'soloq')

INSERT INTO MatchMakingRank(puntosLigas, tipo) values(96, 'soloq')

SELECT *FROM MatchMakingRank
UPDATE MatchMakingRank SET puntosLigas = '30' WHERE idMatchMakingRank = 1

SELECT *FROM MatchMakingRank
DELETE FROM MatchMakingRank WHERE idMatchMakingRank = 1

SELECT *FROM MatchMakingRank
--Amigo
INSERT INTO Amigo(nombre, apodo, tipo) values('nombre1', 'apodo1', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre2', 'apodo2', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre3', 'apodo3', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre4', 'apodo4', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre5', 'apodo5', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre6', 'apodo6', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre7', 'apodo7', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre8', 'apodo8', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre9', 'apodo9', 'soloq')

INSERT INTO Amigo(nombre, apodo, tipo) values('nombre10', 'apodo10', 'soloq')

SELECT *FROM Amigo
UPDATE Amigo SET nombre = 'nombre1' WHERE idAmigo = 1

SELECT *FROM Amigo
DELETE FROM Amigo WHERE idAmigo = 1

--Eterno
INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion, precio) values(1, 'descripcion1', 'descripcion1', 'descripcion1', 'descripcion1',100)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal,descripcion, precio) values(2, 'descripcion2', 'descripcion2', 'descripcion2','descripcion2',200)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion, precio) values(3, 'descripcion3', 'descripcion3', 'descripcion3','descripcion3',300)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion, precio) values(1, 'descripcion4', 'descripcion4', 'descripcion4','descripcion4',400)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion, precio) values(2, 'descripcion5', 'descripcion5', 'descripcion5','descripcion5',500)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion,precio) values(3, 'descripcion6', 'descripcion6', 'descripcion6','descripcion6',600)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion,precio) values(1, 'descripcion7', 'descripcion7', 'descripcion7','descripcion7',700)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion,precio) values(2, 'descripcion8', 'descripcion8', 'descripcion8','descripcion8',800)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion,precio) values(3, 'descripcion9', 'descripcion9', 'descripcion9','descripcion9',900)

INSERT INTO Eterno(serie, descripcionEternoInicial, descripcionEternoMedio, descripcionEternoFinal, descripcion,precio) values(1, 'descripcion10', 'descripcion10', 'descripcion10','descripcion10',999)


SELECT *FROM Eterno
UPDATE Eterno SET descripcionEternoInicial = 'descripcion1' WHERE idEterno = 1

SELECT *FROM Eterno
DELETE FROM Eterno 

--Runas
INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre1', 'descripcion1', 'beneficio1', 1) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre2', 'descripcion2', 'beneficio2', 2) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre3', 'descripcion3', 'beneficio3', 3)

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre4', 'descripcion4', 'beneficio4', 4)

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre5', 'descripcion5', 'beneficio5', 5) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre6', 'descripcion6', 'beneficio6', 6) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre7', 'descripcion7', 'beneficio7', 7) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre8', 'descripcion8', 'beneficio8', 8) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre9', 'descripcion9', 'beneficio9', 9) 

INSERT INTO Runas(nombre, descripcion, Beneficio, nivel) values('nombre10', 'descripcion10', 'beneficio10', 10) 

SELECT *FROM Runas
UPDATE Runas SET nombre = 'nombre89' WHERE idRunas = 1

SELECT *FROM Runas
DELETE FROM Runas WHERE idRunas = 1 

SELECT *FROM Runas
DELETE FROM Runas WHERE idRunas = 1 
--TiendaJuego
INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto1', 'pocion1', 'bota1', 'centinela1', 'objetotecomendado1' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto2', 'pocion2', 'bota2', 'centinela2', 'objetotecomendado2' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto3', 'pocion3', 'bota3', 'centinela3', 'objetotecomendado3' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto4', 'pocion4', 'bota4', 'centinela4', 'objetotecomendado4' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto5', 'pocion5', 'botas5', 'centinela5', 'objetotecomendado5' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto6', 'pocion6', 'bota6', 'centinela6', 'objetotecomendado6' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto7', 'pocion7', 'bota7', 'centinela7', 'objetotecomendado7' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto8', 'pocion8', 'bota8', 'centinela8', 'objetotecomendado8' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto9', 'pocion9', 'bota9', 'centinela9', 'objetotecomendado9' ) 

INSERT INTO TiendaJuego(objetos, pociones, botas, centinelas, objetosRecomendados) values('objeto10', 'pocion10', 'bota10', 'centinela10', 'objetotecomendado10' ) 

SELECT *FROM TiendaJuego
UPDATE TiendaJuego SET objetos = 'objeto12' WHERE idTiendaJuego = 1

SELECT *FROM TiendaJuego
DELETE FROM TiendaJuego WHERE idTiendaJuego = 1 

SELECT *FROM TiendaJuego
DELETE FROM TiendaJuego WHERE idTiendaJuego = 1 
--Worlds
INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('08/12/2022', '09/12/2022', '10', 'locacionFinal1', 'locacionFaseGrupos1', 'locacionSemiFinal1', 'locacionEliminatorias1', 100 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('09/12/2022', '10/12/2022', '11', 'locacionFinal2', 'locacionFaseGrupos2', 'locacionSemiFinal2', 'locacionEliminatorias2', 101 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('10/12/2022', '11/12/2022', '12', 'locacionFinal3', 'locacionFaseGrupos3', 'locacionSemiFinal3', 'locacionEliminatorias3', 102 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('11/12/2022', '12/12/2022', '13', 'locacionFinal4', 'locacionFaseGrupos4', 'locacionSemiFinal4', 'locacionEliminatorias4', 103 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/12/2022', '12/13/2022', '14', 'locacionFinal5', 'locacionFaseGrupos5', 'locacionSemiFinal5', 'locacionEliminatorias5', 104 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/13/2022', '12/14/2022', '15', 'locacionFinal6', 'locacionFaseGrupos6', 'locacionSemiFinal6', 'locacionEliminatorias6', 105 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/14/2022', '12/15/2022', '16', 'locacionFinal7', 'locacionFaseGrupos7', 'locacionSemiFinal7', 'locacionEliminatorias7', 106 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/15/2022', '12/16/2022', '17', 'locacionFinal8', 'locacionFaseGrupos8', 'locacionSemiFinal8', 'locacionEliminatorias8', 107 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/16/2022', '12/17/2022', '18', 'locacionFinal9', 'locacionFaseGrupos9', 'locacionSemiFinal9', 'locacionEliminatorias9', 108 ) 

INSERT INTO Worlds(fechaInicio, fechaFinal, participantes, locacionFinal, locacionFasegrupos, locacionSemifinal, locacionEliminatorias, premio) values('12/17/2022', '12/18/2022', '19', 'locacionFinal10', 'locacionFaseGrupos10', 'locacionSemiFinal10', 'locacionEliminatorias10', 109 ) 

SELECT *FROM Worlds
UPDATE Worlds SET fechaInicio = '12/19/2022' WHERE idWorlds = 1

SELECT *FROM Worlds
DELETE FROM Worlds 

SELECT *FROM Worlds
--Botin
INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial1', 'descripcionMaterial1', 'recompensaMaterial1', 100)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial2', 'descripcionMaterial2', 'recompensaMaterial2', 200)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial3', 'descripcionMaterial3', 'recompensaMateria2', 300)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial4', 'descripcionMaterial4', 'recompensaMateria4', 400)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial5', 'descripcionMaterial5', 'recompensaMateria5', 500)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial6', 'descripcionMaterial6', 'recompensaMateria6', 600)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial7', 'descripcionMaterial7', 'recompensaMateria7', 700)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial8', 'descripcionMaterial8', 'recompensaMateria8', 800)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial9', 'descripcionMaterial9', 'recompensaMateria9', 900)

INSERT INTO botin(nombreMaterial, descripcionMaterial, recompensaMaterial, precio) values('nombreMaterial10', 'descripcionMaterial10', 'recompensaMateria10', 1000)

SELECT *FROM botin
UPDATE botin SET nombreMaterial = 'nombreMaterial11' WHERE idBotin = 1

SELECT *FROM botin
DELETE FROM botin WHERE idBotin = 1 

SELECT *FROM botin
--Season
INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/01/2022', '12/02/2022', 'Season1')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/02/2022', '12/03/2022', 'Season2')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/03/2022', '12/04/2022', 'Season3')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/04/2022', '12/05/2022', 'Season4')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/05/2022', '12/06/2022', 'Season5')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/06/2022', '12/07/2022', 'Season6')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/07/2022', '12/08/2022', 'Season7')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/08/2022', '12/09/2022', 'Season8')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/09/2022', '12/10/2022', 'Season9')

INSERT INTO Season(fechaInicio, fechaFinal, nombre) values('12/10/2022', '12/11/2022', 'Season10')

SELECT *FROM Season
UPDATE Season SET nombre = 'season11' WHERE idSeason = 1

SELECT *FROM Season
DELETE FROM Season WHERE idSeason = 1

SELECT *FROM Season
--Bolsa
INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(1,1,1,1)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(2,2,2,2)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(3,3,3,3)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(4,4,4,4)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(5,5,5,5)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(6,6,6,6)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(7,7,7,7)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(8,8,8,8)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(9,9,9,9)

INSERT INTO Bolsa(cantidadCampeones, cantidadGestos, cantidadCentinelas, cantidadHechizos) values(10,10,10,10)

SELECT *FROM Bolsa
UPDATE Bolsa SET cantidadCampeones = 11 WHERE idBolsa = 1

SELECT *FROM Bolsa
DELETE FROM Bolsa WHERE idBolsa = 1

SELECT *FROM Bolsa
--Objeto
INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto1', 'descripcion1','beneficios1',1,'rareza1',1)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto2', 'descripcion2','beneficios2',2,'rareza1',2)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto3', 'descripcion3','beneficios3',3,'rareza1',3)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto4', 'descripcion4','beneficios4',4,'rareza1',4)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto5', 'descripcion5','beneficios5',5,'rareza1',5)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto6', 'descripcion6','beneficios6',6,'rareza1',6)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto7', 'descripcion7','beneficios7',7,'rareza1',7)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto8', 'descripcion8','beneficios8',8,'rareza1',8)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto9', 'descripcion9','beneficios9',9,'rareza1',9)

INSERT INTO Objeto(nombre, descripcion, beneficios, precio, rareza,idTiendaJuego) values('objeto10', 'descripcion10','beneficios10',10,'rareza1',10)

SELECT *FROM Objeto
UPDATE Objeto SET nombre = 'objeto11' WHERE idObjeto = 1

SELECT *FROM Objeto
DELETE FROM Objeto WHERE idObjeto = 1

SELECT *FROM Objeto
--Build
INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico1', 'bota1','nombreObjeto1','nombreObjeto2','nombreObjeto3','nombreObjeto4',1)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico2', 'bota2','nombreObjeto2','nombreObjeto3','nombreObjeto4','nombreObjeto5',2)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico3', 'bota3','nombreObjeto3','nombreObjeto4','nombreObjeto5','nombreObjeto6',3)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico4', 'bota4','nombreObjeto4','nombreObjeto5','nombreObjeto6','nombreObjeto7',4)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico5', 'bota5','nombreObjeto5','nombreObjeto6','nombreObjeto7','nombreObjeto8',5)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico6', 'bota6','nombreObjeto6','nombreObjeto7','nombreObjeto8','nombreObjeto9',6)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico7', 'bota7','nombreObjeto7','nombreObjeto8','nombreObjeto8','nombreObjeto8',7)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico8', 'bota8','nombreObjeto8','nombreObjeto9','nombreObjeto9','nombreObjeto9',8)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico9', 'bota9','nombreObjeto9','nombreObjeto10','nombreObjeto10','nombreObjeto10',9)

INSERT INTO Build(mitico, bota, nombreObjeto1, nombreObjeto2, nombreObjeto3,nombreObjeto4,idTiendaJuego) values('mitico10', 'bota10','nombreObjeto10','nombreObjeto11','nombreObjeto11','nombreObjeto11',10)

SELECT *FROM Build
UPDATE Build SET mitico = 'mitico11' WHERE idBuild = 1

SELECT *FROM Build
DELETE FROM Build WHERE idBuild = 1

SELECT *FROM Build
--Parche
INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(1,'tipo1','descripcion',1)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(2,'tipo2','descripcion',2)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(3,'tipo3','descripcion',3)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(4,'tipo4','descripcion',4)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(4,'tipo4','descripcion',4)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(5,'tipo5','descripcion',5)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(6,'tipo6','descripcion',6)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(7,'tipo7','descripcion',7)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(8,'tipo8','descripcion',8)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(9,'tipo9','descripcion',9)

INSERT INTO Parche(numero, tipo, descripcion, idSeason) values(10,'tipo10','descripcion',10)

SELECT *FROM Parche
UPDATE Parche SET numero = '11' WHERE idParche = 1

SELECT *FROM Parche
DELETE FROM Parche WHERE idParche = 1

SELECT *FROM Parche
--Region
INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region1',1,'pais1',31)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region2',2,'pais2',32)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region3',3,'pais3',33)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region4',4,'pais4',34)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region5',5,'pais5',35)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region6',6,'pais6',36)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region7',7,'pais7',37)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region8',8,'pais8',38)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region9',9,'pais9',39)

INSERT INTO Region(nombre, cantidadEquipos, paises, idWorlds) values('region10',10,'pais10',40)

SELECT *FROM Region
UPDATE Region SET nombre = 'region11' WHERE idRegion = 1

SELECT *FROM Region
DELETE FROM Region WHERE idRegion = 1

SELECT *FROM Region
--Tienda
INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta1','popular1',51)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta2','popular2',52)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta3','popular3',53)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta4','popular4',54)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta5','popular5',55)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta6','popular6',56)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta6','popular6',56)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta7','popular7',57)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta8','popular8',58)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta9','popular9',59)

INSERT INTO Tienda(ofertas, masPopulares, idEterno) values('oferta10','popular10',60)

SELECT *FROM Tienda
UPDATE Tienda SET ofertas = 'ofertas11' WHERE idTienda = 1

SELECT *FROM Tienda
DELETE FROM Tienda WHERE idTienda = 1

SELECT *FROM Tienda
--Cofre
INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial1', 'objetoNormal1','tipo1',1,1,1)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial2', 'objetoNormal2','tipo2',2,2,2)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial3', 'objetoNormal3','tipo3',3,3,3)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial4', 'objetoNormal4','tipo4',4,4,4)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial5', 'objetoNormal5','tipo5',5,5,5)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial6', 'objetoNormal6','tipo6',6,6,6)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial7', 'objetoNormal7','tipo7',7,7,7)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial8', 'objetoNormal8','tipo8',8,8,8)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial9', 'objetoNormal9','tipo9',9,9,9)

INSERT INTO cofre(objetoEspecial, objetoNormal, tipo, precio, idBotin, idBolsa) values('objetoEspecial10', 'objetoNormal10','tipo10',10,10,10)

SELECT *FROM cofre
UPDATE cofre SET objetoEspecial = 'objetoEspecial11' WHERE idCofre = 1

SELECT *FROM cofre
DELETE FROM cofre WHERE idcofre = 1

SELECT *FROM cofre
--Usuario
INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre1', 1 , 11, 1)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre2', 2 , 12, 2)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre3', 3 , 13, 3)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre4', 4 , 14, 4)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre5', 5 , 15, 5)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre6', 6 , 16, 6)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre7', 7 , 17, 7)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre8', 8 , 18, 8)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre9', 9 , 19, 9)

INSERT INTO Usuario(nombre, honor, idRango, idBotin) values('nombre10', 10 , 20, 10)

SELECT *FROM Usuario
UPDATE Usuario SET nombre = 'nombre1' WHERE idUsuario = 1

SELECT *FROM Usuario
DELETE FROM Usuario WHERE idUsuario = 1

SELECT *FROM Usuario
--Historial
INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado1',1,1,1,1,1,'12-01-2022',1,11)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado2',2,2,2,2,2,'12-02-2022',2,12)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado3',3,3,3,3,3,'12-03-2022',3,13)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado4',4,4,4,4,4,'12-04-2022',4,14)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado5',5,5,5,5,5,'12-05-2022',5,15)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado6',6,6,6,6,6,'12-06-2022',6,16)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado7',7,7,7,7,7,'12-07-2022',7,17)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado8',8,8,8,8,8,'12-08-2022',8,18)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado9',9,9,9,9,9,'12-09-2022',9,19)

INSERT INTO Historial(campeonJugado, asesinatos, muertes, asistencias, minionsEliminados, oroObtenido, fecha, duracion, idUsuario) values('campeonJugado10',10,10,10,10,10,'12-10-2022',10,20)

SELECT *FROM Historial
UPDATE Historial SET campeonJugado = 'campeonJugado1' WHERE idHistorial = 1

SELECT *FROM Historial
DELETE FROM Historial WHERE idHistorial = 1

SELECT *FROM Historial
--Clash
INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-01-2022','12-01-2022','nombre1','1','1',11)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-02-2022','12-02-2022','nombre2','2','2',12)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-03-2022','12-03-2022','nombre3','3','3',13)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-04-2022','12-04-2022','nombre4','4','4',14)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-05-2022','12-05-2022','nombre5','5','5',15)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-06-2022','12-06-2022','nombre6','6','6',16)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-07-2022','12-07-2022','nombre7','7','7',17)
Go
INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-08-2022','12-08-2022','nombre8','8','8',18)
Go
INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-09-2022','12-09-2022','nombre9','9','9',19)

INSERT INTO Clash(fechaInicio, fechaFinal, nombre, premio, participantes, idUsuario) values('12-10-2022','12-10-2022','nombre10','10','10',20)

SELECT *FROM Clash
UPDATE Clash SET nombre = 'nombre11' WHERE idClash = 1

SELECT *FROM Clash
DELETE FROM Clash WHERE idClash = 1

SELECT *FROM Clash
--Confirugacion
INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos1','atajos1','sonido1','chat1',11)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos2','atajos2','sonido2','chat2',12)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos3','atajos3','sonido3','chat3',13)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos4','atajos4','sonido4','chat4',14)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos5','atajos5','sonido5','chat5',15)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos6','atajos6','sonido6','chat6',16)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos7','atajos7','sonido7','chat7',17)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos8','atajos8','sonido8','chat8',18)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos9','atajos9','sonido9','chat9',19)

INSERT INTO Configuracion(graficos, atajos, sonido, chat, idUsuario) values('graficos10','atajos10','sonido10','chat10',20)

SELECT *FROM Configuracion
UPDATE Configuracion SET graficos = 'graficos1' WHERE idClash = 1

SELECT *FROM Configuracion
DELETE FROM Configuracion WHERE idConfiguracion = 1

SELECT *FROM Configuracion
--PaginaRuna
INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal1','secundaria1','adaptable1','nombre1',11,1)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal2','secundaria2','adaptable2','nombr2',12,2)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal3','secundaria3','adaptable3','nombre3',13,3)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal4','secundaria4','adaptable4','nombre4',14,4)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal5','secundaria5','adaptable5','nombre5',15,5)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal6','secundaria6','adaptable6','nombre6',16,6)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal7','secundaria7','adaptable7','nombre7',17,7)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal8','secundaria8','adaptable8','nombre8',18,8)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal9','secundaria9','adaptable9','nombre9',19,9)

INSERT INTO PaginaRuna(principal, secundaria, adaptales, nombre, idUsuario, idRunas) values('principal10','secundaria10','adaptable10','nombre10',20,10)

UPDATE PaginaRuna SET principal = 'principal1' WHERE idPaginaRuna = 1

SELECT *FROM PaginaRuna
DELETE FROM PaginaRuna WHERE idPaginaRuna = 1

SELECT *FROM PaginaRuna
--Desafio
INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre1','descripcion1','rango1',1,'rama1',11)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre2','descripcion2','rango2',2,'rama2',12)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre3','descripcion3','rango3',3,'rama3',13)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre4','descripcion4','rango4',4,'rama4',14)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre5','descripcion5','rango5',5,'rama5',15)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre6','descripcion6','rango6',6,'rama6',16)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre7','descripcion7','rango7',7,'rama7',17)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre8','descripcion8','rango8',8,'rama8',18)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre9','descripcion9','rango9',9,'rama9',19)

INSERT INTO Desafio(nombre, descripcion, rango, porcentaje, rama, idUsuario) values('nombre10','descripcion10','rango10',10,'rama10',20)

UPDATE Desafio SET nombre = 'nombre11' WHERE idDesafio = 1

SELECT *FROM Desafio
DELETE FROM Desafio WHERE idDesafio = 1

SELECT *FROM Desafio
--Maestria
INSERT INTO Maestria(nivel, puntos, idUsuario) values(1,1,11)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(2,2,12)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(3,3,13)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(4,4,14)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(5,5,15)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(6,6,16)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(7,7,17)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(8,8,18)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(9,9,19)

INSERT INTO Maestria(nivel, puntos, idUsuario) values(10,10,20)

UPDATE Maestria SET nivel = 13 WHERE idMaestria = 1

SELECT *FROM Maestria
DELETE FROM Maestria WHERE idMaestria = 1

SELECT *FROM Maestria
--Hechizo
INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre1','efecto11',1,11)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre2','efecto2',2,12)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre3','efecto3',3,13)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre4','efecto4',4,14)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre5','efecto5',5,15)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre6','efecto6',6,16)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre7','efecto7',7,17)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre8','efecto8',8,18)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre9','efecto9',9,19)

INSERT INTO Hechizo(nombre, efecto, endriamiento,idUsuario) values('nombre10','efecto10',10,20)

UPDATE Hechizo SET nombre = 'nombre11' WHERE idHechizo = 1

SELECT *FROM Hechizo
DELETE FROM Hechizo WHERE idHechizo = 1

SELECT *FROM Hechizo
--Equipo
INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo1','toplaner1','jungla1','mid1','tirador1','soporte1','coach1','suplente1',42)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo2','toplaner2','jungla2','mid2','tirador2','soporte2','coach2','suplente2',43)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo3','toplaner1','jungla3','mid3','tirador3','soporte31','coach3','suplente3',44)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo4','toplaner4','jungla4','mid4','tirador4','soporte4','coach4','suplente4',45)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo4','toplaner4','jungla4','mid4','tirador4','soporte4','coach4','suplente4',46)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo5','toplaner5','jungla5','mid5','tirador5','soporte5','coach5','suplente5',47)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo6','toplaner6','jungla6','mid6','tirador6','soporte6','coach6','suplente6',48)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo7','toplaner7','jungla7','mid7','tirador7','soporte7','coach7','suplente7',49)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo8','toplaner8','jungla8','mid8','tirador8','soporte8','coach8','suplente8',50)

INSERT INTO Equipo(nombreEquipo, toplaner, jungla,mid, tirador, soporte, coach, suplente, idRegion) values('nombreEquipo9','toplaner9','jungla9','mid9','tirador9','soporte9','coach9','suplente9',51)

UPDATE Equipo SET nombreEquipo = 'nombreEquipo10' WHERE idEquipo = 1

SELECT *FROM Equipo
DELETE FROM Equipo WHERE idEquipo = 1

SELECT *FROM PaseBatalla
INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 1,11,1)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 2,12,2)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 3,13,3)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 4,14,4)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 5,15,5)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 6,16,6)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 7,17,7)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 8,18,8)

INSERT INTO PaseBatalla(nombre, recompensa, cantidadNiveles,fechaInicio, fechaFinal, precio, idUsuario, idSeason) values('nombre1','recompensa1',1,'12-01-2022', '12-01-2022', 9,19,9)

UPDATE PaseBatalla SET nombre = 'nombre11' WHERE idPasebatalla = 1

SELECT *FROM PaseBatalla
DELETE FROM PaseBatalla WHERE idPaseBatalla = 1

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria1','skinEpica1','skinRara1','skinNormal1',1, 4)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria2','skinEpica2','skinRara2','skinNormal2',10, 5)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria3','skinEpica3','skinRara3','skinNormal3',11, 6)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria4','skinEpica4','skinRara4','skinNormal4',12, 7)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria5','skinEpica5','skinRara5','skinNormal5',13, 8)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria6','skinEpica6','skinRara6','skinNormal6',14, 9)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria7','skinEpica7','skinRara7','skinNormal7',15, 10)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria8','skinEpica8','skinRara8','skinNormal8',16, 11)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria9','skinEpica9','skinRara9','skinNormal9',17, 12)

INSERT INTO TuTienda(skinLegendaria, skinEpica, skinRara,skinNormal, descuento, idHistorial) values('skinLegendaria10','skinEpica10','skinRara10','skinNormal10',81, 13)

UPDATE TuTienda SET skinLegendaria = 'skinLegendaria123' WHERE idTutienda = 1

SELECT *FROM TuTienda
DELETE FROM TuTienda WHERE idTuTienda = 1

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion1','recompensa1',11,1)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion2','recompensa2',12,2)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion3','recompensa3',13,3)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion4','recompensa4',14,4)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion5','recompensa5',15,5)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion6','recompensa6',16,6)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion7','recompensa7',17,7)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion8','recompensa8',18,8)

INSERT INTO Mision(fechaInicio, fechaFinal, descripcion,recompensa, idUsuario, idPaseBatalla) values('12-01-2022','12-01-2022','descripcion9','recompensa9',19,9)

UPDATE Mision SET descripcion = 'descripcion12' WHERE idMision = 1

SELECT *FROM Mision
DELETE FROM Mision WHERE idMision = 1
INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre1','habilidadQ','habilidadE','habilidadW','habilidadR','rol1','posicion1',1,1,51)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre2','habilidadQ','habilidadE','habilidadW','habilidadR','rol2','posicion2',2,2,52)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre3','habilidadQ','habilidadE','habilidadW','habilidadR','rol3','posicion3',3,3,53)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre4','habilidadQ','habilidadE','habilidadW','habilidadR','rol4','posicion4',4,4,54)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre5','habilidadQ','habilidadE','habilidadW','habilidadR','rol5','posicion5',5,5,55)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre6','habilidadQ','habilidadE','habilidadW','habilidadR','rol6','posicion6',6,6,56)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre7','habilidadQ','habilidadE','habilidadW','habilidadR','rol7','posicion7',7,7,57)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre8','habilidadQ','habilidadE','habilidadW','habilidadR','rol8','posicion8',8,8,58)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre9','habilidadQ','habilidadE','habilidadW','habilidadR','rol9','posicion9',9,9,59)

INSERT INTO Campeon(nombre, habilidadQ, habilidadE,habilidadW, habilidadR, rol, posicion, idMaestria, idCofre,idEterno) values('nombre10','habilidadQ','habilidadE','habilidadW','habilidadR','rol10','posicion10',10,10,60)

UPDATE Campeon SET nombre = 'nombre13' WHERE idCampeon = 1

SELECT *FROM Campeon
DELETE FROM Campeon WHERE idCampeon = 1
INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre1','tipo1','descripcion1',1,1)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre2','tipo2','descripcion2',2,2)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre3','tipo3','descripcion3',3,3)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre4','tipo4','descripcion4',4,4)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre5','tipo5','descripcion5',5,5)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre6','tipo6','descripcion6',6,6)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre7','tipo7','descripcion7',7,7)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre8','tipo8','descripcion9',8,8)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre9','tipo9','descripcion10',9,9)

INSERT INTO Habilidad(nombre, tipo, descripcion,costo, idCampeon) values('nombre10','tipo10','descripcion11',10,10)


UPDATE Habilidad SET nombre = 'nombre13' WHERE idHabilidad = 1

SELECT *FROM Habilidad
DELETE FROM Habilidad WHERE idHabilidad = 1
INSERT INTO ModoJuego(nombre, descripcion, tipoMapa) values('nombre','descripcion','tipomapa')
INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre2',2,2)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre3',3,3)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre4',4,4)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre5',5,5)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre6',6,6)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre7',7,7)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre8',8,8)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre9',9,9)

INSERT INTO Mapa(nombre, tamaño, numeroCarriles) values('nombre10',10,10)

SELECT* FROM Mapa
DBCC CHECKIDENT ('dbo.Mapa',RESEED,0);

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-01-2022',1,'tipo1',1)

insert INTO Partida(fecha, duracion, tipo,idMapa) values('12-02-2022',2,'tipo2',2)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-03-2022',3,'tipo3',3)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-04-2022',4,'tipo4',4)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-05-2022',5,'tipo5',5)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-06-2022',6,'tipo6',6)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-07-2022',7,'tipo7',7)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-08-2022',8,'tipo8',8)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-09-2022',9,'tipo9',9)

INSERT INTO Partida(fecha, duracion, tipo,idMapa) values('12-10-2022',10,'tipo10',10)

SELECT* FROM Partida
--MODOJUE
INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre1','descripcion1','tipoMapa1','12-10-2022','12-10-2022',2)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre2','descripcion2','tipoMapa2','12-11-2022','12-11-2022',3)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre3','descripcion3','tipoMapa3','12-12-2022','12-12-2022',4)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre4','descripcion4','tipoMapa4','12-13-2022','12-13-2022',5)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre5','descripcion5','tipoMapa5','12-14-2022','12-14-2022',6)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre6','descripcion6','tipoMapa6','12-15-2022','12-15-2022',7)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre7','descripcion7','tipoMapa7','12-16-2022','12-16-2022',8)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre8','descripcion8','tipoMapa8','12-17-2022','12-17-2022',9)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre9','descripcion9','tipoMapa9','12-18-2022','12-18-2022',10)

INSERT INTO ModoJuego(nombre, descripcion, tipoMapa,fechaInicio,fechafinal,idPartida) values('nombre10','descripcion10','tipoMapa10','12-19-2022','12-19-2022',11)

--Subdito
INSERT INTO Subdito(tipo, oroEntregado, vida,daño,idPartida) values('nombre1',1,1,1,2)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre2',1,1,1,3)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre3',1,1,1,4)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre4',1,1,1,5)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre5',1,1,1,6)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre6',1,1,1,7)

INSERT INTO Subdito(tipo, oroEntregado,vida,daño,idPartida) values('nombre7',1,1,1,8)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre8',1,1,1,9)

INSERT INTO Subdito(tipo, oroEntregado,vida, daño,idPartida) values('nombre9',1,1,1,10)

INSERT INTO Subdito(tipo, oroEntregado, vida,daño,idPartida) values('nombre10',1,1,1,11)


UPDATE Subdito SET tipo = 'tipo11' WHERE idSubdito = 1

SELECT *FROM Subdito
DELETE FROM Subdito WHERE idSubdito = 1
INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre1',1,1,1,2)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre2',2,2,2,3)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre3',3,3,3,4)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre4',4,4,4,5)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre5',5,5,5,6)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre6',6,6,6,7)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre7',7,7,7,8)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre8',8,8,8,9)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre9',9,9,9,10)

INSERT INTO MounstrosJG(nombre,cantidad,oroEntregado,daño,idPartida) values('nombre1',10,10,10,11)


UPDATE MounstrosJG SET nombre = 'nombre11' WHERE idMounstrosJG = 1

SELECT *FROM MounstrosJG
DELETE FROM MounstrosJG WHERE idMounstrosJG = 1
INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada1','beneficio1','tipo1',2)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada2','beneficio2','tipo2',3)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada3','beneficio3','tip3',4)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada4','beneficio4','tipo4',5)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada5','beneficio5','tipo5',6)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada6','beneficio6','tipo6',7)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada7','beneficio7','tipo7',8)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada8','beneficio8','tipo8',9)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada9','beneficio9','tipo9',10)

INSERT INTO Dragon(almaEntregada,beneficio,tipo,idMounstrosJG) values('almaentregada10','beneficio1o','tipo10',11)


UPDATE Dragon SET almaEntregada = 'alma1' WHERE idDragon = 1

SELECT *FROM Dragon
DELETE FROM Dragon WHERE idDragon = 1
INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo1','efecto1','beneficio1','duracionBeneficio1',2)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo2','efecto2','beneficio2','duracionBeneficio2',3)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo3','efecto3','beneficio3','duracionBeneficio3',4)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo4','efecto4','beneficio4','duracionBeneficio4',5)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo5','efecto5','beneficio5','duracionBeneficio5',6)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo6','efecto6','beneficio6','duracionBeneficio6',7)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo7','efecto7','beneficio7','duracionBeneficio7',8)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo8','efecto8','beneficio8','duracionBeneficio8',9)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo9','efecto9','beneficio9','duracionBeneficio9',10)

INSERT INTO MounstroVacio(tipo,efecto,beneficio,duracionBeneficio,idMounstrosJG) values('tipo10','efecto10','beneficio10','duracionBeneficio10',11)

UPDATE MounstroVacio SET tipo = 'tipo11' WHERE idMounstroVacio = 1

SELECT *FROM MounstroVacio
DELETE FROM MounstroVacio WHERE idMounstroVacio = 1
INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo1','beneficio1','duracionBeneficio1',2)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo2','beneficio2','duracionBeneficio2',3)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo3','beneficio3','duracionBeneficio3',4)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo4','beneficio4','duracionBeneficio4',5)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo5','beneficio5','duracionBeneficio5',6)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo6','beneficio6','duracionBeneficio6',7)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo7','beneficio7','duracionBeneficio7',8)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo8','beneficio8','duracionBeneficio8',9)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo9','beneficio9','duracionBeneficio9',10)

INSERT INTO Buff(tipo,beneficio,duracionBeneficio,idMounstrosJG) values('tipo10','beneficio10','duracionBeneficio10',11)

UPDATE Buff SET tipo = 'tipo11' WHERE idBuff = 1

SELECT *FROM Buff
DELETE FROM Buff WHERE idBuff = 1
UPDATE Buff SET tipo = 'tipo11' WHERE idBuff = 1

SELECT *FROM Buff
INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(1,1,1,1,2)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(2,2,2,2,3)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(3,3,3,3,4)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(4,4,4,4,5)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(5,5,5,5,6)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(6,6,6,6,7)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(7,7,7,7,8)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(8,8,8,8,9)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(9,9,9,9,10)

INSERT INTO Torre(nivel,placas,vida,daño,idPartida) values(10,10,10,10,11)

UPDATE Torre SET nivel = '11' WHERE idTorre = 1

SELECT *FROM Torre
DELETE FROM Torre WHERE idTorre = 1
UPDATE Torre SET nivel = 'nivel11' WHERE idBuff = 1

SELECT *FROM Torre
INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(1,1,1,2)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(2,2,2,3)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(3,3,3,4)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(4,4,4,5)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(5,5,5,6)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(6,6,6,7)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(7,7,7,8)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(8,8,8,9)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(9,9,9,10)

INSERT INTO Inhibidor (nivel,vida,tiempo,idPartida) values(10,10,10,11)

SELECT *FROM Inhibidor
DELETE FROM Inhibidor WHERE idInhibidor = 1
UPDATE Inhibidor SET nivel = 11 WHERE idInhibidor = 1

SELECT *FROM Inhibidor
INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-01-2022','12-01-2022',1,1,42)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-02-2022','12-02-2022',2,2,43)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-03-2022','12-03-2022',3,3,44)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-04-2022','12-04-2022',4,4,45)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-05-2022','12-05-2022',5,5,46)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-06-2022','12-06-2022',6,6,47)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-07-2022','12-07-2022',7,7,48)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-08-2022','12-08-2022',8,8,49)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-09-2022','12-09-2022',9,9,50)

INSERT INTO Torneo(fechaFinal,fechaInicio,participantes,rondas,idRegion) values('12-10-2022','12-10-2022',10,10,51)

SELECT *FROM Torneo
DELETE FROM Torneo WHERE idTorneo = 1
UPDATE Torneo SET participantes = 11 WHERE idTorneo = 1

SELECT *FROM Torneo
INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre1',1,'album1',2,31)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre2',2,'album2',3,32)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre3',3,'album3',4,33)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre4',4,'album4',5,34)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre5',5,'album5',6,35)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre6',6,'album6',7,36)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre7',7,'album7',8,37)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre8',8,'album8',9,38)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre9',9,'album9',10,39)

INSERT INTO Musica(nombre,duracion,album,idPartida,idWorlds) values('nombre10',10,'album1',11,40)

SELECT *FROM Musica
DELETE FROM Musica WHERE idMusica = 1
UPDATE Musica SET nombre = 11 WHERE idMusica = 1

SELECT *FROM Musica
INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo1','nombre1',1,'nacionalidad1','main',2)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo2','nombre2',2,'nacionalidad2','main',3)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo3','nombre3',3,'nacionalidad3','main',4)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo4','nombre4',4,'nacionalidad4','main',5)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo5','nombre5',5,'nacionalidad5','main',6)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo6','nombre6',6,'nacionalidad6','main',7)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo7','nombre7',7,'nacionalidad7','main',8)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo8','nombre8',8,'nacionalidad8','main',9)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo9','nombre9',9,'nacionalidad9','main',10)

INSERT INTO Jugador(apodo,nombre,edad,nacionalidad,main,idEquipo) values('apodo10','nombre10',10,'nacionalidad10','main',11)

SELECT *FROM Jugador
DELETE FROM Jugador WHERE idJugador = 1
UPDATE Jugador SET nombre = 'nombre11' WHERE idJugador = 1

SELECT *FROM Jugador
INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre1',1,'tipo1',1,23)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre2',2,'tipo2',2,24)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre3',3,'tipo3',3,25)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre4',4,'tipo4',4,26)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre5',5,'tipo5',5,27)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre6',6,'tipo6',6,28)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre7',7,'tipo7',7,29)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre8',8,'tipo8',8,30)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre9',9,'tipo9',9,31)

INSERT INTO Centinela(nombre,precio,tipo,idCofre,idTienda) values('nombre10',10,'tipo10',10,32)

SELECT *FROM Centinela
DELETE FROM Centinela WHERE idCentinela = 1
UPDATE Centinela SET nombre = 'nombre11' WHERE idCentinela = 1

SELECT *FROM Centinela
INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(1,1,1,1,1,1)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(2,2,2,2,2,2)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(3,3,3,3,3,3)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(4,4,4,4,4,4)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(5,5,5,5,5,5)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(6,6,6,6,6,6)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(7,7,7,7,7,7)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(8,8,8,8,8,8)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(9,9,9,9,9,9)

INSERT INTO Estadistica(killDeathAssistant,farmPorMinuto,campeonesDomesticos,campeonesMundiales,partidasJugadas,idJugador) values(10,10,10,10,10,10)

SELECT *FROM Estadistica
DELETE FROM Estadistica WHERE idEstadistica = 1
UPDATE Estadistica SET killDeathAssistant = 11 WHERE idEstadistica = 1

SELECT *FROM Estadistica
INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal1','rolsecundario1',1)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal2','rolsecundario2',2)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal3','rolsecundario3',3)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal4','rolsecundario4',4)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal5','rolsecundario5',5)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal6','rolsecundario6',6)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal7','rolsecundario7',7)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal8','rolsecundario8',8)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal9','rolsecundario9',9)

INSERT INTO Rol(rolPrincipal,rolSecundario,idJugador) values('rolprincipal10','rolsecundario10',10)

SELECT *FROM Rol
DELETE FROM Rol WHERE idRol = 1
UPDATE Rol SET rolPrincipal = 'rolprincipal11' WHERE idRol = 1

SELECT *FROM Rol
INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre1','tipo1',1,1,23)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre2','tipo2',2,2,24)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre3','tipo3',3,3,25)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre4','tipo4',4,4,26)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre5','tipo5',5,5,27)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre6','tipo6',6,6,28)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre7','tipo7',7,7,29)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre8','tipo8',8,8,30)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre9','tipo9',9,9,31)

INSERT INTO Chroma(nombre,tipo,precio,idCampeon,idTienda) values('nombre1','tipo1',10,10,32)

SELECT *FROM Chroma
DELETE FROM Chroma WHERE idChroma = 1
UPDATE Chroma SET nombre = 'nombre11' WHERE idChroma = 1

SELECT *FROM Chroma
INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre1','descripcion1',1,1,23)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre2','descripcion2',2,2,24)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre3','descripcion3',3,3,25)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre4','descripcion4',4,4,26)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre5','descripcion5',5,5,27)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre6','descripcion6',6,6,28)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre7','descripcion7',7,7,29)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre8','descripcion8',8,8,30)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre9','descripcion9',9,9,31)

INSERT INTO Gesto(nombre,descripcion,precio,idCofre,idTienda) values('nombre10','descripcion10',10,10,32)

SELECT *FROM Gesto
DELETE FROM Gesto WHERE idGesto = 1
UPDATE Gesto SET nombre = 'nombre11' WHERE idGesto = 1

SELECT *FROM Gesto
INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

INSERT INTO regalo(destinatario,remitente,contenido,nota,idUsuario,idAmigo) values('destinatario1','remitente1','contenido','nota',11,11)

SELECT *FROM regalo
DELETE FROM regalo WHERE idregalo = 1
UPDATE regalo SET destinatario = 'destinatario1' WHERE idregalo = 1

SELECT *FROM regalo
INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre1','serie1','descripcion1','tier1',1,23,1,1,2)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre2','serie2','descripcion2','tier1',2,23,2,2,3)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre3','serie3','descripcion3','tier1',3,23,3,3,4)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre4','serie4','descripcion4','tier1',4,23,4,4,5)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre5','serie5','descripcion5','tier1',5,23,5,5,6)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre6','serie6','descripcion6','tier1',6,23,6,6,7)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre7','serie7','descripcion7','tier1',7,23,7,7,8)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre8','serie8','descripcion8','tier1',8,23,8,8,9)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre9','serie9','descripcion9','tier1',9,23,9,9,10)

INSERT INTO Skin(nombre,serie,descripcion,tier,precio,idTienda,idCampeon,idChroma,idTutienda) values('nombre1','serie1','descripcion1','tier1',10,23,10,10,11)

SELECT *FROM Skin
DELETE FROM Skin WHERE idSkin = 1
UPDATE Skin SET nombre = 'nombre11' WHERE idSkin = 1

SELECT *FROM Skin
--RolCampeon
INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(1,1,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(2,2,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(3,3,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(4,4,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(5,5,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(6,6,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(7,7,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(8,8,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(9,9,'prinipal1','secindario1')

INSERT INTO RolCampeon(idRol,idCampeon,rolPrimario,rolSecundario) values(10,10,'prinipal1','secindario1')

--CampeonBuild
INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(1,2,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(2,3,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(3,4,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(4,5,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(5,6,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(6,7,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(7,8,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(8,9,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(9,10,'build1')

INSERT INTO CampeonBuild(idCampeon,idBuild,builRecomendada) values(10,11,'build1')

--CampeonObjeto
INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(1,2,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(2,3,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(3,4,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(4,5,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(5,6,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(6,7,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(7,8,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(8,9,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(9,10,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO CampeonObjeto(idCampeon,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(10,11,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

--BuildObjeto
INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(2,2,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(3,3,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(4,4,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(5,5,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(6,6,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(7,7,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(8,8,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(9,9,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(10,10,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

INSERT INTO BuildObjeto(idBuild,idObjeto,objeto1,objeto2,objeto3,objeto4,mitico,botas) values(11,11,'objeto1','objeto2','objeto3','objeto4','mitico','botas')

--PartidaMarchMakingRank
INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(2,31,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(3,32,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(4,33,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(5,34,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(6,35,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(7,36,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(8,37,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(9,38,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(10,39,1,1)

INSERT INTO PartidaMatchMakingRank(idPartida,idMatchMakingRank,matchMakingRankAzul,matchMakingRankRojo) values(11,40,1,1)

--MatchMakingHistorial
INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(31,4)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(32,5)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(33,6)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(34,7)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(35,8)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(36,9)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(37,10)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(38,11)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(39,12)

INSERT INTO MatchMakingRankHistorial(idMatchMakingRank,idHistorial) values(40,13)

--RangoSeason
INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(11,1,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(12,2,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(13,3,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(14,4,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(15,5,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(16,6,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(17,7,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(18,8,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(19,9,1,1)

INSERT INTO RangoSeason(idRango,idSeason,rangoSoloq,rangoFlex) values(20,10,1,1)

--UsuarioAmigos
INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(11,11,'apodo1')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(12,12,'apodo2')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(13,13,'apodo3')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(14,14,'apodo4')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(15,15,'apodo5')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(16,16,'apodo6')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(17,17,'apodo7')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(18,18,'apodo8')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(19,19,'apodo9')

INSERT INTO UsuarioAmigos(idUsuario,idAmigo,apodo) values(20,20,'apodo10')

--UsuarioPaginRunas
INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(11,2,'pagina1')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(12,3,'pagina2')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(13,4,'pagina3')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(14,5,'pagina4')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(15,6,'pagina5')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(16,7,'pagina6')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(17,8,'pagina7')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(18,9,'pagina8')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(19,10,'pagina9')

INSERT INTO UsuarioPaginarunas(idUsuario,idPaginaruna,paginaPersonalizada) values(20,11,'pagina10')

--TiendaABolsa
INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(23,1,'objeto1')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(24,2,'objeto2')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(25,3,'objeto3')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(26,4,'objeto4')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(27,5,'objeto5')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(28,6,'objeto6')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(29,7,'objeto7')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(30,8,'objeto8')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(31,9,'objeto9')

INSERT INTO TiendaBolsa(idTienda,idBolsa,objetosNoobtenidos) values(32,10,'objeto10')

--TorneoWorlds
INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(1,31,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(2,32,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(3,33,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(4,34,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(5,35,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(6,36,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(7,37,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(8,38,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(9,39,'Ganador')

INSERT INTO TorneoWorlds(idTorneo,idWorlds,Ganador) values(10,40,'Ganador')

--MatchMakingRankingUsuario
INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(31,11)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(32,12)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(33,13)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(34,14)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(35,15)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(36,16)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(37,17)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(38,18)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(39,19)

INSERT INTO MatchMakingRankingUsuario(idMatchMakingRank,idUsuario) values(40,20)

--EquipoTorneo
INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(1,2,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(2,3,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(3,4,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(4,5,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(5,6,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(6,7,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(7,8,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(8,9,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(9,10,'1')

INSERT INTO EquipoTorneo(idTorneo,idEquipo,posicion) values(10,11,'1')

SELECT *FROM EquipoTorneo
DELETE FROM EquipoTorneo WHERE idEquipoTorneo = 1
UPDATE EquipoTorneo SET posicion = 'posicion12' WHERE idEquipoTorneo = 1

SELECT *FROM EquipoTorneo