package blog
import org.jetbrains.ktor.jetty.*
import org.jetbrains.ktor.routing.*
import org.jetbrains.ktor.application.*
import org.jetbrains.ktor.host.*
import org.jetbrains.ktor.http.*
import org.jetbrains.ktor.response.*

fun main(args: Array<String>) {
    embeddedServer(Jetty, 8080) {
        routing {
            get("/") {
                call.respondText("My Example Blog", ContentType.Text.Html)
            }
        }
    }.start(wait = true)
}