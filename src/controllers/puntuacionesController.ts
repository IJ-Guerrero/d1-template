import { PuntuacionesService } from "../services/puntuacionesService";

export async function puntuacionesController(req: Request, env: Env): Promise<Response> {
    try {
        const url = new URL(req.url);
        const partesRuta = url.pathname.split("/").filter(Boolean);
        const accion = partesRuta[1];


        if (req.method === "GET") {
            if (accion === "getTopScores") return await getTopScores(req, env);
        }


        if (req.method === "POST") {
            if (accion === "insert") return await insert(req, env);
        }


        return new Response("Método o acción no existe", {
            status: 405
        });


    } catch (error) {
        console.error(error);

        return Response.json({
            mensaje: "Error interno."
        }, {
            status: 500
        });
    }
}


async function getTopScores(req: Request, env: Env): Promise<Response> {
    const url = new URL(req.url);
    const limit = Number(url.searchParams.get("limit") ?? 10);

    const puntuaciones = await PuntuacionesService.getTopScores(env, limit);

    return Response.json(puntuaciones);
}


async function insert(req: Request, env: Env): Promise<Response> {

    const body = await req.json();

    const puntuacion = await PuntuacionesService.insert(env, body);

    return Response.json(puntuacion, {
        status: 201
    });
}