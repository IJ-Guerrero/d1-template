import { PalabraRepository } from "../repositories/palabraRepository";

export class PalabraService {

    static async getByCategoria(env: Env, idCategoria: number) {
        return await PalabraRepository.getByCategoria(env, idCategoria);
    }

}