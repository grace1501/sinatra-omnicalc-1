require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  @user_number = params.fetch("number").to_i
  @result = @user_number*@user_number

  erb(:square)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/payment/new") do

end

get("/random/new") do

end
