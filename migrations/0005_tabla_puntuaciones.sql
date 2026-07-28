-- Migration number: 0005
-- Tabla de puntuaciones

CREATE TABLE puntuaciones (
    idPuntuacion INTEGER PRIMARY KEY AUTOINCREMENT,

    nombre TEXT NOT NULL,

    idIdiomaOrigen INTEGER NOT NULL,
    idIdiomaDestino INTEGER NOT NULL,

    idCategoria INTEGER NOT NULL,

    cantidadParejas INTEGER NOT NULL,

    movimientos INTEGER NOT NULL,

    tiempoSegundos INTEGER NOT NULL,

    puntuacion INTEGER NOT NULL,

    createdAt TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (idIdiomaOrigen) REFERENCES idiomas(idIdioma),
    FOREIGN KEY (idIdiomaDestino) REFERENCES idiomas(idIdioma),
    FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria)
);