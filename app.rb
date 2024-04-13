require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_num_sub = params.fetch("first_num").to_f
  @second_num_sub = params.fetch("second_num").to_f
  @result_sub = @second_num_sub - @first_num_sub

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num_mult = params.fetch("first_num").to_f
  @second_num_mult = params.fetch("second_num").to_f
  @result_mult = @second_num_mult * @first_num_mult
  erb(:mult_result)
end

get("/divide") do
  erb(:divform)
end

get("/wizard_divide") do
  @first_num_div = params.fetch("first_num").to_f
  @second_num_div = params.fetch("second_num").to_f
  @result_div = @first_num_div / @second_num_div
  erb(:div_result)
end
