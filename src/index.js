import * as glen from '../glen/glen.mjs';
import * as telegram_bot from './telegram_bot.mjs';

export default {
    async fetch(request, _env, _ctx) {
        const req = glen.convert_request(request);
        const response = await telegram_bot.handle_req(req);
        const res = glen.convert_response(response);

        return res;
    },
};