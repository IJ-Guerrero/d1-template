export class PuntuacionesRepository {


    static async getTopScores(env: Env, limit: number) {

        const query = `
            SELECT 
                p.*,

                c.nombre AS nombreCategoria,

                io.nombre AS nombreIdiomaOrigen,
                io.codigo AS codigoIdiomaOrigen,
                

                id.nombre AS nombreIdiomaDestino,
                id.codigo AS codigoIdiomaDestino
                

            FROM puntuaciones p

            INNER JOIN categorias c
                ON c.idCategoria = p.idCategoria

            INNER JOIN idiomas io
                ON io.idIdioma = p.idIdiomaOrigen

            INNER JOIN idiomas id
                ON id.idIdioma = p.idIdiomaDestino

            ORDER BY
                p.puntuacion DESC,
                p.movimientos ASC,
                p.tiempoSegundos ASC

            LIMIT ?
        `;


        const { results } = await env.DB
            .prepare(query)
            .bind(limit)
            .all();


        return results;
    }



    static async insert(env: Env, puntuacion: any) {


        const query = `
            INSERT INTO puntuaciones (
                nombre,
                idIdiomaOrigen,
                idIdiomaDestino,
                idCategoria,
                cantidadParejas,
                movimientos,
                tiempoSegundos,
                puntuacion
            )
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        `;


        const result = await env.DB
            .prepare(query)
            .bind(
                puntuacion.nombre,
                puntuacion.idIdiomaOrigen,
                puntuacion.idIdiomaDestino,
                puntuacion.idCategoria,
                puntuacion.cantidadParejas,
                puntuacion.movimientos,
                puntuacion.tiempoSegundos,
                puntuacion.puntuacion
            )
            .run();


        return {
            idPuntuacion: result.meta.last_row_id,
            ...puntuacion
        };
    }
}