class CalcController < ApplicationController

  def home
    render({ :template => "calc_templates/home"})
  end

  def square
    @the_num = params.fetch("input_var").to_f
    @the_square = @the_num * @the_num
    render({ :template => "calc_templates/square"})
  end
  
end
