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

get "/divide" do 
  erb(:divide)
end

get "/" do 
  erb(:home)
end

post "/" do
  operation = params["operation"]
  case operation
  when "addition"
    get "/calculate_add" do
      Calculator.new.divide_numbers(params[:first_number].to_i, params[:second_number].to_i)
    end

    post "/calculate_add" do
      Calculator.new.divide_numbers(params[:first_number].to_i, params[:second_number].to_i)
    end
  when "subtraction"
    redirect to("/calculate_subtract")
  when "multiplication"
    redirect to("/calculate_multiply")
  when "division"
    redirect to("/calculate_divide")
  else
    "Nothing works!"
  end
end


post "/calculate_divide" do 
  Calculator.new.divide_numbers(params[:first_number].to_i, params[:second_number].to_i)
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


