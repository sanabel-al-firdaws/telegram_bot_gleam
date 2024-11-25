import gleam/javascript/promise.{type Promise}
import glen
import glen/status

pub fn handle_req(req: glen.Request) -> Promise(glen.Response) {
  "On a Cloudflare worker!"
  |> glen.html(status.ok)
  |> promise.resolve
}
