require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home_page, { :layout => :layout })
end

get("/square/new") do
  
  erb(:square, { :layout => :layout })
end

get("/square/results") do
  @number = params.fetch(:number)
  @square = @number.to_f ** 2

  erb(:square_results, { :layout => :layout })
end

get("/square_root/new") do
  
  erb(:square_root, { :layout => :layout })
end

get("/square_root/results") do
  @number = params.fetch(:number)
  @square_root = @number.to_f ** 0.5

  erb(:square_root_results, { :layout => :layout })
end

get("/payment/new") do
  
  erb(:payment, { :layout => :layout })
end

get("/random/new") do
  
  erb(:random, { :layout => :layout })
end
