require("sinatra")
require("sinatra/reloader") if development?
require ("pry")
require_relative("lib/Calculator")

get("/") {erb(:home)}
get("/home") {erb(:home)}

get("/add") {erb(:add)}
get("/subtract") {erb(:subtract)}
get("/multiply") {erb(:multiply)}
get("/divide") {erb(:divide)}

post("/add") {erb(:add_post)}
post("/subtract") {erb(:subtract_post)}
post("/multiply") {erb(:multiply_post)}
post("/divide") {erb(:divide_post)}


