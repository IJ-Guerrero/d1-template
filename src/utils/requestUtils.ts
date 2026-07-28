// utils/requestUtils.ts

export function obtenerRequestData(req: Request) {
    const url = new URL(req.url);
    const partesRuta = url.pathname.split("/").filter(Boolean);

    return {
        url,
        recurso: partesRuta[0],
        accion: partesRuta[1],
        parametros: partesRuta.slice(2),
        queryParams: new URLSearchParams(url.search)
    };
}