import { IdiomaRepository } from "../repositories/idiomaRepository";

export class IdiomaService {

    static async getAll(env: Env) {

        return await IdiomaRepository.getAll(env);

    }

}