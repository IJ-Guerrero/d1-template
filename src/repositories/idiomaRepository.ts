export class IdiomaRepository {

    static async getAll(env: Env) {

        const stmt = env.DB.prepare(`
            SELECT
                idIdioma,
                codigo,
                nombre,
                nombreNativo,
                activo
            FROM idiomas
            WHERE activo = 1
            ORDER BY nombre
        `);

        const { results } = await stmt.all();

        return results;

    }

}