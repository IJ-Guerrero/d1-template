import { CategoriaService } from "../services/categoriaService";
import { obtenerRequestData } from "../utils/requestUtils";

export async function categoriaController(req: Request, env: Env): Promise<Response> {
    try {
        const { accion } = obtenerRequestData(req);

        if (req.method === "GET") {
            if (accion === "getAll") return await getAllCategorias(env);
        }

        return new Response("Método no existe", { status: 405 });

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error interno." }, { status: 500 });
    }
}

async function getAllCategorias(env: Env): Promise<Response> {
    try {
        const categorias = await CategoriaService.getAll(env);
        return Response.json(categorias);

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error al obtener categorías." }, { status: 500 });
    }
}