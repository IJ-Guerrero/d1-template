export class PalabraRepository {

    static async getByCategoria(env: Env, idCategoria: number) {
        const stmt = env.DB.prepare(`
            SELECT
                p.idPalabra,
                p.idConcepto,
                p.idIdioma,
                p.palabra,
                p.pronunciacionAfi,
                p.idTipoPalabra,
                p.articulo,
                p.genero,
                p.plural,
                p.esIrregular,
                p.esComun,
                p.ordenVisualizacion,
                p.createdAt,
                i.codigo codigoIdioma,
                c.codigo codigoConcepto
            FROM palabras p
            INNER JOIN conceptos c ON c.idConcepto = p.idConcepto
            INNER JOIN categoriasXconceptos cc ON cc.idConcepto = c.idConcepto
            INNER JOIN idiomas i ON i.idIdioma = p.idIdioma
            WHERE cc.idCategoria = ?
            ORDER BY p.ordenVisualizacion, p.palabra
        `);

        const { results } = await stmt.bind(idCategoria).all();

        return results;
    }

}