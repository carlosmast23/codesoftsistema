/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     10/02/2014 9:33:56                           */
/*==============================================================*/


drop table if exists ACTIVIDAD;

drop table if exists ARCHIVO;

drop table if exists BANCOS;

drop table if exists BIENES;

drop table if exists CATALOGO;

drop table if exists CATEGORIA;

drop table if exists CHAT;

drop table if exists CIERRECAJA;

drop table if exists CIERRECAJAMANTENIMIENTO;

drop table if exists CIERRECAJASOFTWARE;

drop table if exists CIERRECAJAVENTA;

drop table if exists CLIENTE;

drop table if exists CONTROLHORARIO;

drop table if exists DESARRALLADORES;

drop table if exists DESCUENTO;

drop table if exists DETALLEINGRESO;

drop table if exists DETALLEPRESUPUESTO;

drop table if exists DETALLEPRODUCTO;

drop table if exists DETALLEPROYECTOS;

drop table if exists DETALLEREPUESTOS;

drop table if exists DETALLESERVICIO;

drop table if exists DISTRIBUIDOR;

drop table if exists EGRESO;

drop table if exists EMPLEADO;

drop table if exists EMPRESA;

drop table if exists EQUIPO;

drop table if exists FACTURASOFTWARE;

drop table if exists HORARIOS;

drop table if exists HORARIOSUSUARIOS;

drop table if exists INGRESO;

drop table if exists LISTABIENES;

drop table if exists LISTAEGRESOS;

drop table if exists LISTAPRODUCTO;

drop table if exists MANTENIMIENTO;

drop table if exists MENSAJE;

drop table if exists PORTAFOLIOS;

drop table if exists PRESUPUESTO;

drop table if exists PRODUCTO;

drop table if exists PROYECTO;

drop table if exists PUBLICIDAD;

drop table if exists RECEPCION;

drop table if exists REPUESTO;

drop table if exists ROLES;

drop table if exists SERVICIO;

drop table if exists SUCURSAL;

drop table if exists USUARIO;

drop table if exists VENTA;

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD
(
   CODIGOACTIVIDAD      int not null,
   NOMBRE               varchar(64),
   DESCRIPCION          varchar(512),
   FECHAINICIO          date,
   FECHAENTREGA         date,
   ESTADO               varchar(64),
   primary key (CODIGOACTIVIDAD)
);

/*==============================================================*/
/* Table: ARCHIVO                                               */
/*==============================================================*/
create table ARCHIVO
(
   CODIGOARCHIVO        int not null,
   RUC_CI               varchar(16),
   USUARIO              varchar(64),
   USU_USUARIO          varchar(64),
   NOMBRE               varchar(64),
   FECHACREACION        datetime,
   DESCRIPCION          varchar(512),
   primary key (CODIGOARCHIVO)
);

/*==============================================================*/
/* Table: BANCOS                                                */
/*==============================================================*/
create table BANCOS
(
   CODIGOBANCO          int not null,
   RUCSUCURSAL          varchar(16),
   NOMBRE               varchar(64),
   NUMEROCUENTA         varchar(128),
   SALDO                double,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOBANCO)
);

/*==============================================================*/
/* Table: BIENES                                                */
/*==============================================================*/
create table BIENES
(
   CODIGOBIENE          int not null,
   USUARIO              varchar(64),
   USU_USUARIO          varchar(64),
   CODIGOLISTABIENES    int,
   RUCSUCURSAL          varchar(16),
   COSTO                float,
   ESTADO               varchar(64),
   FECHAINGRESOPRODUCTOS date,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOBIENE)
);

/*==============================================================*/
/* Table: CATALOGO                                              */
/*==============================================================*/
create table CATALOGO
(
   CODIGOCATALOGO       int not null,
   RUCDISTRIBUIDOR      varchar(16),
   CODIGOPRIMARIO       varchar(64),
   DISPONIBLE           varchar(64),
   COSTO                float,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOCATALOGO)
);

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   CODIGOCATEGORIA      int not null,
   NOMBRE               varchar(64),
   DESCRIPCION          varchar(512),
   PRIORIDAD            int,
   primary key (CODIGOCATEGORIA)
);

/*==============================================================*/
/* Table: CHAT                                                  */
/*==============================================================*/
create table CHAT
(
   CODIGOCHAT           bigint not null,
   USUARIO              varchar(64),
   USU_USUARIO          varchar(64),
   RUC_CI               varchar(16),
   MENSAJE              varchar(128),
   FECHACHAT            datetime,
   ARCHIVOADJUNTO       varchar(256),
   primary key (CODIGOCHAT)
);

/*==============================================================*/
/* Table: CIERRECAJA                                            */
/*==============================================================*/
create table CIERRECAJA
(
   CODIGOCIERRECAJA     bigint not null,
   RUCSUCURSAL          varchar(16),
   USUARIO              varchar(64),
   CODIGOBANCO          int,
   TOTAL                float,
   IVA                  float,
   SUBTOTAL             float,
   INFORME              varchar(1024),
   ESTADO               varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOCIERRECAJA)
);

/*==============================================================*/
/* Table: CIERRECAJAMANTENIMIENTO                               */
/*==============================================================*/
create table CIERRECAJAMANTENIMIENTO
(
   CODIGODETMANTENIMIENTO bigint not null,
   CODIGOCIERRECAJA     bigint,
   CODIGOFACTURAS       bigint,
   ESTADO               varchar(64),
   OBSERVACION          varchar(256),
   primary key (CODIGODETMANTENIMIENTO)
);

/*==============================================================*/
/* Table: CIERRECAJASOFTWARE                                    */
/*==============================================================*/
create table CIERRECAJASOFTWARE
(
   CODIGODETSOFTWARE    bigint not null,
   CODIGOCIERRECAJA     bigint,
   CODIGOFACTURASOFTWARE int,
   ESTADO               varchar(64),
   OBSERVACION          varchar(256),
   primary key (CODIGODETSOFTWARE)
);

/*==============================================================*/
/* Table: CIERRECAJAVENTA                                       */
/*==============================================================*/
create table CIERRECAJAVENTA
(
   CODIGODETVENTA       bigint not null,
   CODIGOVENTA          bigint,
   CODIGOCIERRECAJA     bigint,
   ESTADO               varchar(64),
   OBSERVACION          varchar(256),
   primary key (CODIGODETVENTA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   RUC_CI               varchar(16) not null,
   CLAVE                varchar(64),
   PRIMERNOMBRE         varchar(64),
   SEGUNDONOMBRE        varchar(64),
   PRIMERAPELLIDO       varchar(64),
   SEGUNDOAPELLIDO      varchar(64),
   DIRECCION            varchar(256),
   SEXO                 char(1),
   NACIONALIDAD         varchar(128),
   FECHANACIMIENTO      date,
   TELEFONOPRINCIPAL    varchar(16),
   TELEFONOAUXILIAR     varchar(16),
   CELULAR              varchar(16),
   EMAIL                varchar(256),
   OCUPACION            varchar(256),
   OBSERVACIONES        varchar(1024),
   TIPO                 varchar(64),
   primary key (RUC_CI)
);

/*==============================================================*/
/* Table: CONTROLHORARIO                                        */
/*==============================================================*/
create table CONTROLHORARIO
(
   FECHA                date not null,
   CODIGOHORARIOSUSUARIOS int,
   HORAINGRESO          time,
   HORASALIDAALMUERZO   time,
   HORAINGRESOALMUERZO  time,
   HORASALIDA           time,
   JUSTIFICACION        varchar(512),
   ATRASOS              int,
   HORASEXTRAS          int,
   OBSERVACIONES        varchar(1024),
   primary key (FECHA)
);

/*==============================================================*/
/* Table: DESARRALLADORES                                       */
/*==============================================================*/
create table DESARRALLADORES
(
   CODIGODESARROLLADORES int not null,
   USUARIO              varchar(64),
   CODIGOPROYECTO       int,
   CODIGOACTIVIDAD      int,
   CARGO                varchar(64),
   DESCRIPCION          varchar(512),
   INFORME              varchar(1024),
   COSTOFINAL           float,
   primary key (CODIGODESARROLLADORES)
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO
(
   CODIGODESCUENTO      int not null,
   RUCSUCURSAL          varchar(16),
   NOMBRE               varchar(64),
   PORCENTAJE           float,
   FECHAINICIAL         date,
   FECHAFINAL           date,
   DESCRIPCION          varchar(512),
   primary key (CODIGODESCUENTO)
);

/*==============================================================*/
/* Table: DETALLEINGRESO                                        */
/*==============================================================*/
create table DETALLEINGRESO
(
   CODIGOINGRESO        bigint not null,
   CODIGOPRODUCTO       varchar(32),
   CODINGRESO           bigint,
   ESTADO               varchar(64),
   CANTIDAD             int,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOINGRESO)
);

/*==============================================================*/
/* Table: DETALLEPRESUPUESTO                                    */
/*==============================================================*/
create table DETALLEPRESUPUESTO
(
   CODIGODETALLEPRESUPUESTO int not null,
   CODIGOPRODUCTO       varchar(32),
   CODIGOPRESUPUESTO    int,
   UBICACION            varchar(256),
   DESCRIPCION          varchar(512),
   primary key (CODIGODETALLEPRESUPUESTO)
);

/*==============================================================*/
/* Table: DETALLEPRODUCTO                                       */
/*==============================================================*/
create table DETALLEPRODUCTO
(
   CODPRODUCTO          bigint not null,
   CODIGOPRODUCTO       varchar(32),
   CODIGOVENTA          bigint,
   ESTADO               varchar(64),
   CANTIDAD             int,
   OBSERVACIONES        varchar(1024),
   primary key (CODPRODUCTO)
);

/*==============================================================*/
/* Table: DETALLEPROYECTOS                                      */
/*==============================================================*/
create table DETALLEPROYECTOS
(
   CODIGODETALLE        int not null,
   CODIGOFACTURASOFTWARE int,
   CODIGOPROYECTO       int,
   INFORME              varchar(1024),
   OBSERVACIONES        varchar(1024),
   ESTADO               varchar(64),
   primary key (CODIGODETALLE)
);

/*==============================================================*/
/* Table: DETALLEREPUESTOS                                      */
/*==============================================================*/
create table DETALLEREPUESTOS
(
   CODIGODETALLEREPUESTOS bigint not null,
   CODIGOREPUESTO       int,
   CODIGODETALLESERVICIO bigint,
   DETALLE              varchar(512),
   INFORME              varchar(1024),
   ESTADO               varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGODETALLEREPUESTOS)
);

/*==============================================================*/
/* Table: DETALLESERVICIO                                       */
/*==============================================================*/
create table DETALLESERVICIO
(
   CODIGODETALLESERVICIO bigint not null,
   CODIGOSERVICIO       int,
   CODIGOFACTURAS       bigint,
   CODIGORECEPCION      bigint,
   COSTO                float,
   ESTADO               varchar(64),
   DESCRIPCION          varchar(512),
   primary key (CODIGODETALLESERVICIO)
);

/*==============================================================*/
/* Table: DISTRIBUIDOR                                          */
/*==============================================================*/
create table DISTRIBUIDOR
(
   RUCDISTRIBUIDOR      varchar(16) not null,
   NOMBRE               varchar(64),
   DIRECCION            varchar(256),
   SUCURSAL             varchar(128),
   TELEFONOPRINCIPAL    varchar(16),
   TELEFONOAUXILIAR     varchar(16),
   CELULAR              varchar(16),
   PAGINAWEB            varchar(128),
   CORREOELECTRONICO    varchar(256),
   PERSONARESPONSABLE   varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (RUCDISTRIBUIDOR)
);

/*==============================================================*/
/* Table: EGRESO                                                */
/*==============================================================*/
create table EGRESO
(
   CODIGOEGRESO         int not null,
   USUARIO              varchar(64),
   RUCSUCURSAL          varchar(16),
   RUC                  varchar(16),
   USU_USUARIO          varchar(64),
   CODIGOEGRESOS        int,
   CODIGODOCUMENTO      varchar(64),
   TIPODOCUMENTO        varchar(64),
   FECHAEGRESO          date,
   VALOR                float,
   ESTADO               varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOEGRESO)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO
(
   RUCEMPLEADO          varchar(16) not null,
   USUARIO              varchar(64),
   PRIMERNOMBRE         varchar(64),
   SEGUNDONOMBRE        varchar(64),
   PRIMERAPELLIDO       varchar(64),
   SEGUNDOAPELLIDO      varchar(64),
   DIRECCION            varchar(256),
   SEXO                 char(1),
   NACIONALIDAD         varchar(128),
   FECHANACIMIENTO      date,
   TELEFONOPRINCIPAL    varchar(16),
   TELEFONOAUXILIAR     varchar(16),
   CELULAR              varchar(16),
   EMAIL                varchar(256),
   TITULO               varchar(128),
   FECHACREACION        datetime,
   primary key (RUCEMPLEADO)
);

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA
(
   RUC                  varchar(16) not null,
   NOMBRE               varchar(64),
   DIRECCION            varchar(256),
   SUCURSAL             varchar(128),
   TELEFONOPRINCIPAL    varchar(16),
   TELEFONOAUXILIAR     varchar(16),
   CELULAR              varchar(16),
   PAGINAWEB            varchar(128),
   CORREOELECTRONICO    varchar(256),
   PERSONARESPONSABLE   varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (RUC)
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
create table EQUIPO
(
   SERIEEQUIPO          varchar(64) not null,
   CODIGOPRIMARIO       varchar(64),
   NOMBRE               varchar(64),
   MARCA                varchar(512),
   CARACTERISTICAS      varchar(1024),
   OBSERVACIONES        varchar(1024),
   primary key (SERIEEQUIPO)
);

/*==============================================================*/
/* Table: FACTURASOFTWARE                                       */
/*==============================================================*/
create table FACTURASOFTWARE
(
   CODIGOFACTURASOFTWARE int not null,
   CODIGODESCUENTO      int,
   RUC_CI               varchar(16),
   FAC_CODIGOFACTURASOFTWARE int,
   NUMEROFACTURA        int,
   TIPOPAGO             varchar(64),
   FECHASOFTWARE        datetime,
   TOTAL                float,
   ESTADO               varchar(64),
   ESTADODEPAGO         varchar(64),
   FORMAPAGO            varchar(64),
   primary key (CODIGOFACTURASOFTWARE)
);

/*==============================================================*/
/* Table: HORARIOS                                              */
/*==============================================================*/
create table HORARIOS
(
   CODIGOHORARIOS       int not null,
   RUCSUCURSAL          varchar(16),
   LUNES                bool,
   MARTES               bool,
   MIERCOLES            bool,
   JUEVES               bool,
   VIERNES              bool,
   SABADO               bool,
   DOMINGO              bool,
   HORAINGRESO          time,
   HORASALIDAALMUERZO   time,
   HORAINGRESOALMUERZO  time,
   HORASALIDA           time,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOHORARIOS)
);

/*==============================================================*/
/* Table: HORARIOSUSUARIOS                                      */
/*==============================================================*/
create table HORARIOSUSUARIOS
(
   CODIGOHORARIOSUSUARIOS int not null,
   CODIGOHORARIOS       int,
   USUARIO              varchar(64),
   FECHAINICIAL         date,
   FECHALIMITE          date,
   HORASTRABAJADAS      int,
   HORASEXTRAS          int,
   FALTASJUSTIFICADAS   int,
   FALTASINJUSTIFICADAS int,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOHORARIOSUSUARIOS)
);

/*==============================================================*/
/* Table: INGRESO                                               */
/*==============================================================*/
create table INGRESO
(
   CODINGRESO           bigint not null,
   RUCDISTRIBUIDOR      varchar(16),
   USUARIO              varchar(64),
   RUCSUCURSAL          varchar(16),
   CODIGODOCUMENTO      varchar(64),
   FECHAINGRESOPRODUCTOS date,
   TIPO                 varchar(64),
   TOTAL                float,
   OBSERVACIONES        varchar(1024),
   primary key (CODINGRESO)
);

/*==============================================================*/
/* Table: LISTABIENES                                           */
/*==============================================================*/
create table LISTABIENES
(
   CODIGOLISTABIENES    int not null,
   CODIGOCATEGORIA      int,
   NOMBRE               varchar(64),
   MARCA                varchar(512),
   MODELO               varchar(512),
   IMAGEN               varchar(256),
   GARANTIA             float,
   PRECIO               float,
   STOCK                int,
   CARACTERISTICA       varchar(512),
   primary key (CODIGOLISTABIENES)
);

/*==============================================================*/
/* Table: LISTAEGRESOS                                          */
/*==============================================================*/
create table LISTAEGRESOS
(
   CODIGOEGRESOS        int not null,
   RUCSUCURSAL          varchar(16),
   NOMBRE               varchar(64),
   DETALLE              varchar(512),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOEGRESOS)
);

/*==============================================================*/
/* Table: LISTAPRODUCTO                                         */
/*==============================================================*/
create table LISTAPRODUCTO
(
   CODIGOPRIMARIO       varchar(64) not null,
   CODIGOCATEGORIA      int,
   CODIGOSECUNDARIO     varchar(64),
   NOMBRE               varchar(64),
   MARCA                varchar(512),
   MODELO               varchar(512),
   IMAGEN               varchar(256),
   GARANTIA             float,
   PRECIO               float,
   PRECIODISTRIBUIDOR   float,
   PRECIOESPECIAL       float,
   STOCK                int,
   CARACTERISTICA       varchar(512),
   FECHALANZAMIENTO     date,
   TIEMPOUTIL           int,
   CALIFICACION         float,
   MOSTRARPUBLICIDAD    int,
   TITULOPUBLICIDAD     varchar(64),
   SUBTITULOPUBLICIDAD  varchar(128),
   DESCRIPCION          varchar(512),
   VINCULO              varchar(256),
   INCLUYEIVA           int,
   primary key (CODIGOPRIMARIO)
);

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO
(
   CODIGOFACTURAS       bigint not null,
   CODIGODESCUENTO      int,
   USUARIO              varchar(64),
   RUC_CI               varchar(16),
   MAN_CODIGOFACTURAS   bigint,
   RUCSUCURSAL          varchar(16),
   NUMEROFACTURA        int,
   TIPOPAGO             varchar(64),
   TOTAL                float,
   FECHAEMISION         datetime,
   FECHAENTREGA         date,
   ESTADO               varchar(64),
   ESTADOPAGO           varchar(64),
   FORMADEPAGO          varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOFACTURAS)
);

/*==============================================================*/
/* Table: MENSAJE                                               */
/*==============================================================*/
create table MENSAJE
(
   CODIGO               bigint not null,
   RUC_CI               varchar(16),
   USUARIO              varchar(64),
   USU_USUARIO          varchar(64),
   FECHAENVIO           datetime,
   ASUNTO               varchar(16),
   MENSAJE              varchar(128),
   ARCHIVO              varchar(256),
   FECHAMENSAJE         datetime,
   primary key (CODIGO)
);

/*==============================================================*/
/* Table: PORTAFOLIOS                                           */
/*==============================================================*/
create table PORTAFOLIOS
(
   CODIGOPORTAFOLIOS    int not null,
   USUARIO              varchar(64),
   ARCHIVO              varchar(256),
   NOMBRE               varchar(64),
   FECHAPORTAFOLIOS     datetime,
   DESCRIPCION          varchar(512),
   FOTO                 varchar(256),
   primary key (CODIGOPORTAFOLIOS)
);

/*==============================================================*/
/* Table: PRESUPUESTO                                           */
/*==============================================================*/
create table PRESUPUESTO
(
   CODIGOPRESUPUESTO    int not null,
   RUCSUCURSAL          varchar(16),
   IMAGEN               varchar(256),
   NOMBRE               varchar(64),
   FECHAPRESUPUESTO     date,
   TOTAL                float,
   ESTADO               varchar(64),
   primary key (CODIGOPRESUPUESTO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   CODIGOPRODUCTO       varchar(32) not null,
   CODIGOPRIMARIO       varchar(64),
   RUCDISTRIBUIDOR      varchar(16),
   RUCSUCURSAL          varchar(16),
   FECHAINGRESO         date,
   COSTO                float,
   ESTADO               varchar(64),
   ESTADOVENTA          varchar(64),
   OBSERVACIONES        varchar(1024),
   FECHAVENTA           datetime,
   ESTADOGARANTIA       varchar(32),
   STOCK                int,
   primary key (CODIGOPRODUCTO)
);

/*==============================================================*/
/* Table: PROYECTO                                              */
/*==============================================================*/
create table PROYECTO
(
   CODIGOPROYECTO       int not null,
   NOMBRE               varchar(64),
   DESCRIPCION          varchar(512),
   FECHAINICIO          date,
   FECHAFIN             date,
   ESTADO               varchar(64),
   COSTO                float,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOPROYECTO)
);

/*==============================================================*/
/* Table: PUBLICIDAD                                            */
/*==============================================================*/
create table PUBLICIDAD
(
   CODIGOPUBLICIDAD     int not null,
   RUCSUCURSAL          varchar(16),
   USUARIO              varchar(64),
   IMAGENGRANDE         varchar(64),
   IMAGENPEQUENIA       varchar(64),
   TITULO               varchar(128),
   SUBTITULO            varchar(256),
   DESCRIPCION          varchar(512),
   LINK                 varchar(256),
   PRIORIDAD            int,
   ESTADO               varchar(64),
   CATEGORIA            varchar(64),
   FECHAPUBLICACION     datetime,
   primary key (CODIGOPUBLICIDAD)
);

/*==============================================================*/
/* Table: RECEPCION                                             */
/*==============================================================*/
create table RECEPCION
(
   CODIGORECEPCION      bigint not null,
   RUCSUCURSAL          varchar(16),
   SERIEEQUIPO          varchar(64),
   FECHARECEPCION       datetime,
   AVERIA               varchar(128),
   TRABAJOREALIZAR      varchar(128),
   DIAGNOSTICO          varchar(128),
   ACCESORIOS           varchar(128),
   PRESUPUESTO          float,
   ESTADO               varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGORECEPCION)
);

/*==============================================================*/
/* Table: REPUESTO                                              */
/*==============================================================*/
create table REPUESTO
(
   CODIGOREPUESTO       int not null,
   RUCSUCURSAL          varchar(16),
   CODIGOPRODUCTO       varchar(32),
   ESTADO               varchar(64),
   FECHAINGRESOPRODUCTOS date,
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOREPUESTO)
);

/*==============================================================*/
/* Table: ROLES                                                 */
/*==============================================================*/
create table ROLES
(
   CODIGOROLES          int not null,
   USUARIO              varchar(64),
   RUCSUCURSAL          varchar(16),
   NOMBREROL            varchar(64),
   DESCRIPCION          varchar(512),
   primary key (CODIGOROLES)
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO
(
   CODIGOSERVICIO       int not null,
   RUCSUCURSAL          varchar(16),
   NOMBRE               varchar(64),
   COSTO                float,
   TIPO                 varchar(64),
   PROCEDIMIENTO        varchar(1024),
   TIEMPOAPROXIMADO     float,
   TIEMPORESPUESTA      float,
   REFERENCIAS          varchar(128),
   primary key (CODIGOSERVICIO)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL
(
   RUCSUCURSAL          varchar(16) not null,
   NOMBRE               varchar(64),
   DIRECCION            varchar(256),
   TELEFONOPRINCIPAL    varchar(16),
   TELEFONOAUXILIAR     varchar(16),
   PAGINAWEB            varchar(128),
   CORREOELECTRONICO    varchar(256),
   PERSONARESPONSABLE   varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (RUCSUCURSAL)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   USUARIO              varchar(64) not null,
   RUCSUCURSAL          varchar(16),
   CLAVE                varchar(64),
   FECHACREACION        datetime,
   ULTIMAVISTIA         datetime,
   NUMEROVISITAS        int,
   ESTADO               varchar(64),
   primary key (USUARIO)
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA
(
   CODIGOVENTA          bigint not null,
   RUC_CI               varchar(16),
   USUARIO              varchar(64),
   VEN_CODIGOVENTA      bigint,
   RUCSUCURSAL          varchar(16),
   CODIGODESCUENTO      int,
   CODIGOFACTURA        int,
   TIPOPAGO             varchar(64),
   FORMAPAGO            varchar(64),
   FECHAVENTA           datetime,
   TOTAL                float,
   ESTADO               varchar(64),
   ESTADODEPAGO         varchar(64),
   OBSERVACIONES        varchar(1024),
   primary key (CODIGOVENTA)
);

alter table ARCHIVO add constraint FK_RELATIONSHIP_38 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table ARCHIVO add constraint FK_RELATIONSHIP_39 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table ARCHIVO add constraint FK_RELATIONSHIP_81 foreign key (USU_USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table BANCOS add constraint FK_RELATIONSHIP_82 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table BIENES add constraint FK_RELATIONSHIP_3 foreign key (CODIGOLISTABIENES)
      references LISTABIENES (CODIGOLISTABIENES) on delete restrict on update restrict;

alter table BIENES add constraint FK_RELATIONSHIP_75 foreign key (USU_USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table BIENES add constraint FK_RELATIONSHIP_76 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table BIENES add constraint FK_RELATIONSHIP_77 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table CATALOGO add constraint FK_RELATIONSHIP_57 foreign key (RUCDISTRIBUIDOR)
      references DISTRIBUIDOR (RUCDISTRIBUIDOR) on delete restrict on update restrict;

alter table CATALOGO add constraint FK_RELATIONSHIP_92 foreign key (CODIGOPRIMARIO)
      references LISTAPRODUCTO (CODIGOPRIMARIO) on delete restrict on update restrict;

alter table CHAT add constraint FK_RELATIONSHIP_30 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table CHAT add constraint FK_RELATIONSHIP_33 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table CHAT add constraint FK_RELATIONSHIP_80 foreign key (USU_USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table CIERRECAJA add constraint FK_RELATIONSHIP_83 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table CIERRECAJA add constraint FK_RELATIONSHIP_84 foreign key (CODIGOBANCO)
      references BANCOS (CODIGOBANCO) on delete restrict on update restrict;

alter table CIERRECAJA add constraint FK_RELATIONSHIP_85 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table CIERRECAJAMANTENIMIENTO add constraint FK_RELATIONSHIP_90 foreign key (CODIGOCIERRECAJA)
      references CIERRECAJA (CODIGOCIERRECAJA) on delete restrict on update restrict;

alter table CIERRECAJAMANTENIMIENTO add constraint FK_RELATIONSHIP_91 foreign key (CODIGOFACTURAS)
      references MANTENIMIENTO (CODIGOFACTURAS) on delete restrict on update restrict;

alter table CIERRECAJASOFTWARE add constraint FK_RELATIONSHIP_86 foreign key (CODIGOCIERRECAJA)
      references CIERRECAJA (CODIGOCIERRECAJA) on delete restrict on update restrict;

alter table CIERRECAJASOFTWARE add constraint FK_RELATIONSHIP_87 foreign key (CODIGOFACTURASOFTWARE)
      references FACTURASOFTWARE (CODIGOFACTURASOFTWARE) on delete restrict on update restrict;

alter table CIERRECAJAVENTA add constraint FK_RELATIONSHIP_88 foreign key (CODIGOCIERRECAJA)
      references CIERRECAJA (CODIGOCIERRECAJA) on delete restrict on update restrict;

alter table CIERRECAJAVENTA add constraint FK_RELATIONSHIP_89 foreign key (CODIGOVENTA)
      references VENTA (CODIGOVENTA) on delete restrict on update restrict;

alter table CONTROLHORARIO add constraint FK_RELATIONSHIP_61 foreign key (CODIGOHORARIOSUSUARIOS)
      references HORARIOSUSUARIOS (CODIGOHORARIOSUSUARIOS) on delete restrict on update restrict;

alter table DESARRALLADORES add constraint FK_RELATIONSHIP_23 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table DESARRALLADORES add constraint FK_RELATIONSHIP_24 foreign key (CODIGOPROYECTO)
      references PROYECTO (CODIGOPROYECTO) on delete restrict on update restrict;

alter table DESARRALLADORES add constraint FK_RELATIONSHIP_25 foreign key (CODIGOACTIVIDAD)
      references ACTIVIDAD (CODIGOACTIVIDAD) on delete restrict on update restrict;

alter table DESCUENTO add constraint FK_RELATIONSHIP_54 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table DETALLEINGRESO add constraint FK_RELATIONSHIP_71 foreign key (CODINGRESO)
      references INGRESO (CODINGRESO) on delete restrict on update restrict;

alter table DETALLEINGRESO add constraint FK_RELATIONSHIP_96 foreign key (CODIGOPRODUCTO)
      references PRODUCTO (CODIGOPRODUCTO) on delete restrict on update restrict;

alter table DETALLEPRESUPUESTO add constraint FK_RELATIONSHIP_40 foreign key (CODIGOPRODUCTO)
      references PRODUCTO (CODIGOPRODUCTO) on delete restrict on update restrict;

alter table DETALLEPRESUPUESTO add constraint FK_RELATIONSHIP_41 foreign key (CODIGOPRESUPUESTO)
      references PRESUPUESTO (CODIGOPRESUPUESTO) on delete restrict on update restrict;

alter table DETALLEPRODUCTO add constraint FK_RELATIONSHIP_6 foreign key (CODIGOVENTA)
      references VENTA (CODIGOVENTA) on delete restrict on update restrict;

alter table DETALLEPRODUCTO add constraint FK_RELATIONSHIP_7 foreign key (CODIGOPRODUCTO)
      references PRODUCTO (CODIGOPRODUCTO) on delete restrict on update restrict;

alter table DETALLEPROYECTOS add constraint FK_RELATIONSHIP_26 foreign key (CODIGOPROYECTO)
      references PROYECTO (CODIGOPROYECTO) on delete restrict on update restrict;

alter table DETALLEPROYECTOS add constraint FK_RELATIONSHIP_27 foreign key (CODIGOFACTURASOFTWARE)
      references FACTURASOFTWARE (CODIGOFACTURASOFTWARE) on delete restrict on update restrict;

alter table DETALLEREPUESTOS add constraint FK_RELATIONSHIP_51 foreign key (CODIGODETALLESERVICIO)
      references DETALLESERVICIO (CODIGODETALLESERVICIO) on delete restrict on update restrict;

alter table DETALLEREPUESTOS add constraint FK_RELATIONSHIP_52 foreign key (CODIGOREPUESTO)
      references REPUESTO (CODIGOREPUESTO) on delete restrict on update restrict;

alter table DETALLESERVICIO add constraint FK_RELATIONSHIP_12 foreign key (CODIGOSERVICIO)
      references SERVICIO (CODIGOSERVICIO) on delete restrict on update restrict;

alter table DETALLESERVICIO add constraint FK_RELATIONSHIP_13 foreign key (CODIGORECEPCION)
      references RECEPCION (CODIGORECEPCION) on delete restrict on update restrict;

alter table DETALLESERVICIO add constraint FK_RELATIONSHIP_15 foreign key (CODIGOFACTURAS)
      references MANTENIMIENTO (CODIGOFACTURAS) on delete restrict on update restrict;

alter table EGRESO add constraint FK_RELATIONSHIP_63 foreign key (CODIGOEGRESOS)
      references LISTAEGRESOS (CODIGOEGRESOS) on delete restrict on update restrict;

alter table EGRESO add constraint FK_RELATIONSHIP_65 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table EGRESO add constraint FK_RELATIONSHIP_66 foreign key (USU_USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table EGRESO add constraint FK_RELATIONSHIP_67 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table EGRESO add constraint FK_RELATIONSHIP_78 foreign key (RUC)
      references EMPRESA (RUC) on delete restrict on update restrict;

alter table EMPLEADO add constraint FK_RELATIONSHIP_29 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table EQUIPO add constraint FK_RELATIONSHIP_35 foreign key (CODIGOPRIMARIO)
      references LISTAPRODUCTO (CODIGOPRIMARIO) on delete restrict on update restrict;

alter table FACTURASOFTWARE add constraint FK_ABONOSOFTWARE foreign key (FAC_CODIGOFACTURASOFTWARE)
      references FACTURASOFTWARE (CODIGOFACTURASOFTWARE) on delete restrict on update restrict;

alter table FACTURASOFTWARE add constraint FK_RELATIONSHIP_20 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table FACTURASOFTWARE add constraint FK_RELATIONSHIP_45 foreign key (CODIGODESCUENTO)
      references DESCUENTO (CODIGODESCUENTO) on delete restrict on update restrict;

alter table HORARIOS add constraint FK_RELATIONSHIP_62 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table HORARIOSUSUARIOS add constraint FK_RELATIONSHIP_59 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table HORARIOSUSUARIOS add constraint FK_RELATIONSHIP_60 foreign key (CODIGOHORARIOS)
      references HORARIOS (CODIGOHORARIOS) on delete restrict on update restrict;

alter table INGRESO add constraint FK_RELATIONSHIP_70 foreign key (RUCDISTRIBUIDOR)
      references DISTRIBUIDOR (RUCDISTRIBUIDOR) on delete restrict on update restrict;

alter table INGRESO add constraint FK_RELATIONSHIP_73 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table INGRESO add constraint FK_RELATIONSHIP_74 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table LISTABIENES add constraint FK_REFERENCE_87 foreign key (CODIGOCATEGORIA)
      references CATEGORIA (CODIGOCATEGORIA) on delete restrict on update restrict;

alter table LISTAEGRESOS add constraint FK_RELATIONSHIP_64 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table LISTAPRODUCTO add constraint FK_REFERENCE_86 foreign key (CODIGOCATEGORIA)
      references CATEGORIA (CODIGOCATEGORIA) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_ABONOMANTENIMIENTO foreign key (MAN_CODIGOFACTURAS)
      references MANTENIMIENTO (CODIGOFACTURAS) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_21 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_44 foreign key (CODIGODESCUENTO)
      references DESCUENTO (CODIGODESCUENTO) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_53 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_9 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table MENSAJE add constraint FK_RELATIONSHIP_32 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table MENSAJE add constraint FK_RELATIONSHIP_34 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table MENSAJE add constraint FK_RELATIONSHIP_79 foreign key (USU_USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table PORTAFOLIOS add constraint FK_RELATIONSHIP_42 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table PRESUPUESTO add constraint FK_RELATIONSHIP_55 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_RELATIONSHIP_1 foreign key (CODIGOPRIMARIO)
      references LISTAPRODUCTO (CODIGOPRIMARIO) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_RELATIONSHIP_36 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_RELATIONSHIP_93 foreign key (RUCDISTRIBUIDOR)
      references DISTRIBUIDOR (RUCDISTRIBUIDOR) on delete restrict on update restrict;

alter table PUBLICIDAD add constraint FK_RELATIONSHIP_94 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table PUBLICIDAD add constraint FK_RELATIONSHIP_95 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table RECEPCION add constraint FK_RELATIONSHIP_10 foreign key (SERIEEQUIPO)
      references EQUIPO (SERIEEQUIPO) on delete restrict on update restrict;

alter table RECEPCION add constraint FK_RELATIONSHIP_47 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table REPUESTO add constraint FK_RELATIONSHIP_37 foreign key (CODIGOPRODUCTO)
      references PRODUCTO (CODIGOPRODUCTO) on delete restrict on update restrict;

alter table REPUESTO add constraint FK_RELATIONSHIP_50 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table ROLES add constraint FK_RELATIONSHIP_22 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table ROLES add constraint FK_RELATIONSHIP_31 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table SERVICIO add constraint FK_RELATIONSHIP_46 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table USUARIO add constraint FK_RELATIONSHIP_2 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

alter table VENTA add constraint FK_ABONOVENTA foreign key (VEN_CODIGOVENTA)
      references VENTA (CODIGOVENTA) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_28 foreign key (RUC_CI)
      references CLIENTE (RUC_CI) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_43 foreign key (CODIGODESCUENTO)
      references DESCUENTO (CODIGODESCUENTO) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_5 foreign key (USUARIO)
      references USUARIO (USUARIO) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_56 foreign key (RUCSUCURSAL)
      references SUCURSAL (RUCSUCURSAL) on delete restrict on update restrict;

