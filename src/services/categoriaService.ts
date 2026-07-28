import { CategoriaRepository } from "../repositories/categoriaRepository";

export class CategoriaService {

    static async getAll(env: Env) {
        return await CategoriaRepository.getAll(env);
    }

}