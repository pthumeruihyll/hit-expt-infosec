import prologue
import prologue/middlewares

proc hello*(ctx: Context) {.async.} =
  resp "<h1>Hello, Prologue!</h1>"

let app = newApp()
app.addRoute("/", hello)
app.run()
