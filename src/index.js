import * as glen from '../glen/glen.mjs';
import * as telegram_bot from './telegram_bot.mjs';

export default {
    async fetch(request, env, _ctx) {
        const req = glen.convert_request(request);

        const response = await telegram_bot.handle_req(req, env.Telegram_Token);
        const res = glen.convert_response(response);

        return res;
    },
};