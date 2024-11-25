import gleam/javascript/promise.{type Promise}
import glen

import glen/status

pub fn handle_req(req: glen.Request, token: String) -> Promise(glen.Response) {
  case req.path {
    "/token" -> {
      { "your telegram bot token is " <> token }
      |> glen.html(status.ok)
      |> promise.resolve
    }
    _ -> {
      "hello world"
      |> glen.html(status.ok)
      |> promise.resolve
    }
  }
}
