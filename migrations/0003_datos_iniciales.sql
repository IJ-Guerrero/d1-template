-- Migration number: 0003
-- Datos base iniciales de Memoria Políglota

--------------------------------------------------------
-- IDIOMAS
--------------------------------------------------------

INSERT INTO idiomas (codigo, nombre, nombreNativo, activo)
VALUES
('es', 'Español', 'Español', 1),
('en', 'Inglés', 'English', 1),
('pt', 'Portugués', 'Português', 1),
('de', 'Alemán', 'Deutsch', 0),
('it', 'Italiano', 'Italiano', 0);


--------------------------------------------------------
-- TIPOS DE PALABRA
--------------------------------------------------------

INSERT INTO tiposPalabra (codigo, descripcion)
VALUES
('SUST', 'Sustantivo'),
('VERB', 'Verbo'),
('ADJ', 'Adjetivo'),
('ADV', 'Adverbio'),
('PRON', 'Pronombre'),
('PREP', 'Preposición'),
('CONJ', 'Conjunción'),
('INT', 'Interjección');


--------------------------------------------------------
-- CATEGORÍAS
--------------------------------------------------------

INSERT INTO categorias (nombre, icono, color)
VALUES
('Numeros', '🔢', '#FFDD87'),
('Saludos', '👋', '#FFDD87'),
('Objetos de casa', '🏠', '#FFDD87'),
('Cosas de la calle', '🚗', '#FFDD87'),
('Personas', '👤', '#FFDD87'),
('Acciones', '🏃', '#FFDD87');


--------------------------------------------------------
-- CONCEPTOS
--------------------------------------------------------

INSERT INTO conceptos (codigo, descripcion, dificultad)
VALUES

-- Números
('NUMERO_CERO', 'Número cero', 1),
('NUMERO_UNO', 'Número uno', 1),
('NUMERO_DOS', 'Número dos', 1),
('NUMERO_TRES', 'Número tres', 1),
('NUMERO_CUATRO', 'Número cuatro', 1),
('NUMERO_CINCO', 'Número cinco', 1),
('NUMERO_SEIS', 'Número seis', 1),
('NUMERO_SIETE', 'Número siete', 1),
('NUMERO_OCHO', 'Número ocho', 1),
('NUMERO_NUEVE', 'Número nueve', 1),
('NUMERO_DIEZ', 'Número diez', 1),

-- Casa
('CASA', 'Lugar donde vive una persona', 1),
('MESA', 'Mueble con superficie plana', 1),
('SILLA', 'Asiento para una persona', 1),
('PUERTA', 'Entrada o salida de una habitación', 1),
('VENTANA', 'Abertura en una pared para luz o aire', 1),
('CAMA', 'Mueble para dormir', 1),
('LIBRO', 'Conjunto de páginas escritas', 1),
('AGUA', 'Líquido esencial para la vida', 1),

-- Personas
('PERSONA', 'Ser humano', 1),
('HOMBRE', 'Persona adulta masculina', 1),
('MUJER', 'Persona adulta femenina', 1),
('NINO', 'Persona joven', 1),
('AMIGO', 'Persona con relación cercana', 1),

-- Acciones
('SER', 'Existir o tener identidad', 1),
('TENER', 'Poseer algo', 1),
('IR', 'Moverse hacia un lugar', 1),
('VENIR', 'Moverse hacia donde está alguien', 1),
('COMER', 'Ingerir alimentos', 1),
('BEBER', 'Tomar líquidos', 1);


--------------------------------------------------------
-- RELACIÓN CATEGORÍAS - CONCEPTOS
--------------------------------------------------------

-- Números
INSERT INTO categoriasXconceptos (idCategoria, idConcepto)
SELECT
    c.idCategoria,
    co.idConcepto
FROM categorias c, conceptos co
WHERE c.nombre = 'Numeros'
AND co.codigo IN (
    'NUMERO_CERO',
    'NUMERO_UNO',
    'NUMERO_DOS',
    'NUMERO_TRES',
    'NUMERO_CUATRO',
    'NUMERO_CINCO',
    'NUMERO_SEIS',
    'NUMERO_SIETE',
    'NUMERO_OCHO',
    'NUMERO_NUEVE',
    'NUMERO_DIEZ'
);


-- Objetos de casa
INSERT INTO categoriasXconceptos (idCategoria, idConcepto)
SELECT
    c.idCategoria,
    co.idConcepto
FROM categorias c, conceptos co
WHERE c.nombre = 'Objetos de casa'
AND co.codigo IN (
    'CASA',
    'MESA',
    'SILLA',
    'PUERTA',
    'VENTANA',
    'CAMA',
    'LIBRO',
    'AGUA'
);


-- Personas
INSERT INTO categoriasXconceptos (idCategoria, idConcepto)
SELECT
    c.idCategoria,
    co.idConcepto
FROM categorias c, conceptos co
WHERE c.nombre = 'Personas'
AND co.codigo IN (
    'PERSONA',
    'HOMBRE',
    'MUJER',
    'NINO',
    'AMIGO'
);


-- Acciones
INSERT INTO categoriasXconceptos (idCategoria, idConcepto)
SELECT
    c.idCategoria,
    co.idConcepto
FROM categorias c, conceptos co
WHERE c.nombre = 'Acciones'
AND co.codigo IN (
    'SER',
    'TENER',
    'IR',
    'VENIR',
    'COMER',
    'BEBER'
);