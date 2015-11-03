require "sinatra"
require 'pry'
require_relative "./lib/models.rb"
=begin
get "/add" do
  erb(:add)
end

get "/subtract" do 
  erb(:subtract)
end

get "/multiply" do
  erb(:multiply)
end

get "/divide" do 
  erb(:divide)
end
=end
get "/" do 
  erb(:home)
end

get "/moscow" do
  @string = TimeZone.new.return_time "moscow"
  erb(:timezone)
end

get "/tokyo" do
  @string = TimeZone.new.return_time "tokyo"
  erb(:timezone)
end

get "/newyork" do
  @string = TimeZone.new.return_time "new york"
  erb(:timezone)
end

post "/" do
  operation = params["operation"]
  case operation
  when "addition"
    @string = Calculator.new.add_numbers(params[:first_number].to_i, params[:second_number].to_i)
    erb(:final)
  when "subtraction"
    @string = Calculator.new.subtract_numbers(params[:first_number].to_i, params[:second_number].to_i)
    erb(:final)
  when "multiplication"
    @string = Calculator.new.multiply_numbers(params[:first_number].to_i, params[:second_number].to_i)
    erb(:final)
  when "division"
    @string = Calculator.new.divide_numbers(params[:first_number].to_i, params[:second_number].to_i)
    erb(:final)
  else
    "Nothing works!"
  end
end

post "/write" do
  string = params["saveToFile"]
  puts string
  open('./public/saves.txt','a') {|file| file.puts string}
end


=begin
post "/calculate_divide" do 
  Calculator.new.divide_numbers(params[:first_number].to_i, params[:second_number].to_i)
end

get "/calculate_add/:first_number/:second_number" do
  binding.pry
  Calculator.new.add_numbers(params[:first_number].to_i, params[:second_number].to_i)  
end

post "/calculate_subtract" do 
  Calculator.new.subtract_numbers(params[:first_number].to_i, params[:second_number].to_i)
end

post "/calculate_multiply" do
  Calculator.new.multiply_numbers(params[:first_number].to_i, params[:second_number].to_i)
end
=end

