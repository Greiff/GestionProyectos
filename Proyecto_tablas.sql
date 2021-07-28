CREATE TABLE terrenos
(
  cod_muni number NOT NULL,
  titular VARCHAR2(100),
  area decimal(10,2) ,
  suelo VARCHAR2(100) ,
  PRIMARY KEY (cod_muni)
);

CREATE TABLE clientes
(
  cod_cli number NOT NULL,
  nombre VARCHAR2(100),
  telefono VARCHAR2(100),
  email VARCHAR2(100),
  direcc VARCHAR2(200),
  PRIMARY KEY (cod_cli)
);

CREATE TABLE capitulos
(
  id_cap number NOT NULL,
  nombre VARCHAR2(100),
  PRIMARY KEY (id_cap)
);

CREATE TABLE materiales
(
  id_mat number NOT NULL,
  nombre VARCHAR2(100),
  costo_und decimal(10,2),
  PRIMARY KEY (id_mat)
);

CREATE TABLE partidas
(
  id_part number NOT NULL,
  costo_metro decimal(10,2),
  nombre VARCHAR2(100),
  id_cap number,
  PRIMARY KEY (id_part),
  FOREIGN KEY (id_cap) REFERENCES capitulos(id_cap)
);

CREATE TABLE composiciones
(
  cant_und decimal(10,2),
  id_mat number NOT NULL,
  id_part number NOT NULL,
  FOREIGN KEY (id_mat) REFERENCES materiales(id_mat),
  FOREIGN KEY (id_part) REFERENCES partidas(id_part)
);

CREATE TABLE empleados
(
  dni number NOT NULL,
  nombre VARCHAR2(100),
  apellido VARCHAR2(100,
  telefono VARCHAR2(100),
  direcc VARCHAR2(200),
  fech_nac DATE,
  usuario VARCHAR2(50),
  pass VARCHAR2(50),
  sup_dni number,
  PRIMARY KEY (dni),
  FOREIGN KEY (sup_dni) REFERENCES Empleados(dni)
);

CREATE TABLE proyectos
(
  id_proy number NOT NULL,
  descripcion VARCHAR2(200),
  fech_crea DATE,
  fech_ini DATE,
  fech_fin DATE,
  requerimientos VARCHAR2(200),
  contrato VARCHAR2(200),
  cod_cli number,
  cod_muni number,
  sup_dni number,
  PRIMARY KEY (id_proy),
  FOREIGN KEY (cod_cli) REFERENCES clientes(cod_cli),
  FOREIGN KEY (cod_muni) REFERENCES terrenos(cod_muni),
  FOREIGN KEY (sup_dni) REFERENCES Empleados(dni)
);

CREATE TABLE planos
(
  id_plano number NOT NULL,
  version VARCHAR2(50),
  plano VARCHAR2(200),
  fech_crea DATE,
  dni number,
  id_proy numberL,
  PRIMARY KEY (id_plano),
  FOREIGN KEY (dni) REFERENCES Empleados(dni),
  FOREIGN KEY (id_proy) REFERENCES proyectos(id_proy)
);

CREATE TABLE presupuestos
(
  id_presu number NOT NULL,
  version VARCHAR2(100),
  fech_crea DATE,
  impuesto decimal(10,2),  
  importe_total decimal(10,2),
  id_proy number,
  dni number,
  PRIMARY KEY (id_presu),
  FOREIGN KEY (id_proy) REFERENCES proyectos(id_proy),
  FOREIGN KEY (dni) REFERENCES Empleados(dni)
);

CREATE TABLE detalle_partidas
(
  metraje decimal(10,2),
  costo_parcial decimal(10,2),
  id_part number not null,
  id_presu number not null,
  FOREIGN KEY (id_part) REFERENCES partidas(id_part),
  FOREIGN KEY (id_presu) REFERENCES presupuestos(id_presu)
);

