import { IdiomaService } from "../services/idiomaService";
import { obtenerRequestData } from "../utils/requestUtils";

export async function idiomaController(req: Request, env: Env): Promise<Response> {
    try {
        const { accion, queryParams } = obtenerRequestData(req);
        
        if (req.method === "GET") {
            if (accion === 'getAll' ) return await getAllIdiomas(req, env);
        }

        return new Response("Método no existe", {
            status: 405
        });

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error interno." }, { status: 500 });
    }
}

async function getAllIdiomas(req: Request, env: Env): Promise<Response> {
    try {
        const idiomas = await IdiomaService.getAll(env);
        return Response.json(idiomas);

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error al obtener idiomas." }, { status: 500 });
    }
}