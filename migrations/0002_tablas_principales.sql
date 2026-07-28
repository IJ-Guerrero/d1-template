-- Migration number: 0001
-- Creación inicial de Memoria Políglota

PRAGMA foreign_keys = ON;

--------------------------------------------------------
-- IDIOMAS
--------------------------------------------------------

CREATE TABLE idiomas (
    idIdioma INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo TEXT NOT NULL UNIQUE,
    nombre TEXT NOT NULL,
    nombreNativo TEXT NOT NULL,
    activo INTEGER NOT NULL DEFAULT 1
);

--------------------------------------------------------
-- CONCEPTOS
--------------------------------------------------------

CREATE TABLE conceptos (
    idConcepto INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo TEXT NOT NULL UNIQUE,
    descripcion TEXT,
    dificultad INTEGER NOT NULL DEFAULT 1 CHECK(dificultad BETWEEN 1 AND 5),
    createdAt TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--------------------------------------------------------
-- CATEGORÍAS
--------------------------------------------------------

CREATE TABLE categorias (
    idCategoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL UNIQUE,
    icono TEXT,
    color TEXT
);

--------------------------------------------------------
-- TIPOS DE PALABRA
--------------------------------------------------------

CREATE TABLE tiposPalabra (
    idTipoPalabra INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo TEXT NOT NULL UNIQUE,
    descripcion TEXT NOT NULL
);

--------------------------------------------------------
-- PALABRAS
--------------------------------------------------------

CREATE TABLE palabras (
    idPalabra INTEGER PRIMARY KEY AUTOINCREMENT,
    idConcepto INTEGER NOT NULL,
    idIdioma INTEGER NOT NULL,
    palabra TEXT NOT NULL,
    pronunciacionAfi TEXT,
    idTipoPalabra INTEGER NOT NULL,
    articulo TEXT,
    genero TEXT,
    plural TEXT,
    esIrregular INTEGER NOT NULL DEFAULT 0,
    esComun INTEGER NOT NULL DEFAULT 1,
    ordenVisualizacion INTEGER NOT NULL DEFAULT 1,
    createdAt TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idConcepto) REFERENCES conceptos(idConcepto),
    FOREIGN KEY (idIdioma) REFERENCES idiomas(idIdioma),
    FOREIGN KEY (idTipoPalabra) REFERENCES tiposPalabra(idTipoPalabra),
    UNIQUE(idIdioma, palabra)
);

--------------------------------------------------------
-- CATEGORÍAS x CONCEPTOS
--------------------------------------------------------

CREATE TABLE categoriasXconceptos (
    idCategoriaXConcepto INTEGER PRIMARY KEY AUTOINCREMENT,
    idCategoria INTEGER NOT NULL,
    idConcepto INTEGER NOT NULL,

    FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria),
    FOREIGN KEY (idConcepto) REFERENCES conceptos(idConcepto),
    UNIQUE(idCategoria, idConcepto)
);