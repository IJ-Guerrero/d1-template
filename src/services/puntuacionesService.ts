import { PuntuacionesRepository } from "../repositories/puntuacionesRepository";


export class PuntuacionesService {

    static async getTopScores(env: Env, limit: number) {
        return await PuntuacionesRepository.getTopScores(env, limit);
    }


    static async insert(env: Env, data: any) {

        const puntuacion = {
            nombre: data.nombre,
            idIdiomaOrigen: data.idIdiomaOrigen,
            idIdiomaDestino: data.idIdiomaDestino,
            idCategoria: data.idCategoria,
            cantidadParejas: data.cantidadParejas,
            movimientos: data.movimientos,
            tiempoSegundos: data.tiempoSegundos,
            puntuacion: data.puntuacion
        };


        return await PuntuacionesRepository.insert(env, puntuacion);
    }
}