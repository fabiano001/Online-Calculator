require("sinatra")
require("sinatra/reloader") if development?
require ("pry")

get("/") {erb(:home)}
get("/home") {erb(:home)}
post("/home"){erb(:home_post)}
get("/film"){erb(:film)}
post("/film"){erb(:film_post)}
get("/pizza") {erb(:pizza)}
get("/today") {@now = Time.now; erb(:today)}
get("/greet/:name/:last_name"){@name = params[:name]; @last_name = params[:last_name]; erb(:greet)}

get("/time/time_machine/:hours"){
	@hours =  params[:hours] 
	@sign =  @hours[0]
	@digits = @hours[1..@hours.length]

	@future_time = Time.now + (@digits.to_i * 3600)
	@past_time = Time.now - (@digits.to_i * 3600)
	
	erb(:time_machine)
}
