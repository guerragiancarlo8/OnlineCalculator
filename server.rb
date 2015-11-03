require "sinatra"
require_relative "./lib/models.rb"

get "/add" do
  erb(:add)
end

get "/subtract" do 
  erb(:subtract)
end

get "/multiply" do
  erb(:multiply)
end



post "/calculate_add" do
  Calculator.new.add_numbers(params[:first_number].to_i, params[:second_number].to_i)  
end

post "/calculate_subtract" do 
  Calculator.new.subtract_numbers(params[:first_number].to_i, params[:second_number].to_i)
end

post "/calculate_multiply" do
  Calculator.new.multiply_numbers(params[:first_number].to_i, params[:second_number].to_i)
end


