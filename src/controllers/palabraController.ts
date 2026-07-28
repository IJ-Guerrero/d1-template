import { PalabraService } from "../services/palabraService";
import { obtenerRequestData } from "../utils/requestUtils";

export async function palabraController(req: Request, env: Env): Promise<Response> {
    try {
        const { accion, parametros } = obtenerRequestData(req);

        if (req.method === "GET") {
            if (accion === "getByCategoria") return await getByCategoria(env, Number(parametros[0]));
        }

        return new Response("Método no existe", { status: 405 });

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error interno." }, { status: 500 });
    }
}

async function getByCategoria(env: Env, idCategoria: number): Promise<Response> {
    try {
        const palabras = await PalabraService.getByCategoria(env, idCategoria);
        return Response.json(palabras);

    } catch (error) {
        console.error(error);
        return Response.json({ mensaje: "Error al obtener palabras." }, { status: 500 });
    }
}