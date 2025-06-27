import prologue
import std/strformat

proc hello*(ctx: Context) {.async.} =
  resp "<h1>Hello, Prologue!</h1>"

proc try_str_format(alice: string) {.async.} =
  let name: string = fmt"My name is {alice}"
  echo name

let app = newApp()
app.addRoute("/", hello)
app.run()
