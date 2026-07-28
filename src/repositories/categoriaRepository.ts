export class CategoriaRepository {

    static async getAll(env: Env) {
        const stmt = env.DB.prepare(`
            SELECT
                idCategoria,
                nombre,
                icono,
                color
            FROM categorias
            ORDER BY nombre
        `);

        const { results } = await stmt.all();

        return results;
    }

}