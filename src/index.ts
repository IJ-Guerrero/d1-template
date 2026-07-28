import { idiomaController } from "./controllers/idiomaController";
import { obtenerRequestData } from "./utils/requestUtils";
import { corsHeaders } from "./utils/cors";
import { categoriaController } from "./controllers/categoriaController";
import { palabraController } from "./controllers/palabraController";
import { puntuacionesController } from "./controllers/puntuacionesController";

export default {
	async fetch(req, env) {
		if (req.method === "OPTIONS") {
			return new Response(null, {
				headers: corsHeaders()
			});
		}

		const { recurso } = obtenerRequestData(req);

		let response: Response;

		if (recurso === "idiomas") response = await idiomaController(req, env);
		else if (recurso === "categorias") response = await categoriaController(req, env);
		else if (recurso === "palabras") response = await palabraController(req, env);
		else if (recurso === "puntuaciones") response = await puntuacionesController(req, env);
		else {
			const version = "1.0.0";
			response = new Response("version: " + version + ". Ruta no encontrada", { status: 404 });
		}

		Object.entries(corsHeaders()).forEach(([key, value]) => {
			response.headers.set(key, value);
		});

		return response;
		// const stmt = env.DB.prepare("SELECT * FROM comments LIMIT 1");
		// const { results } = await stmt.all();

		// return new Response(renderHtml(JSON.stringify(results, null, 2)), {
		// 	headers: {
		// 		"content-type": "text/html",
		// 	},
		// }); 
	},
} satisfies ExportedHandler<Env>;
