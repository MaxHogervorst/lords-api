import io.javalin.Javalin

fun main(args: Array<String>) {
    val app = Javalin.start(7001)
    app.get("/") { ctx -> ctx.result("Hello World") }
    app.get("/echo") { ctx -> ctx.result("Hello World") }
}