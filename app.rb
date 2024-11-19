require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @user_number = params.fetch("number").to_f
  @result = @user_number*@user_number

  erb(:square_results)
end


get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @input_number = params.fetch("user_number").to_f
  @result = Math.sqrt(@input_number)

  erb(:square_root_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @result = rand(@min..@max)
  
  erb(:random_results)
end


get("/payment/new") do
  erb(:payment)
end
