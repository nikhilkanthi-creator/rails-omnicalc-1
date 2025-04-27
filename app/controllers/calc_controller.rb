class CalcController < ApplicationController

  def home
    render({ :template => "calc_templates/home"})
  end

  def square
    @the_num = params.fetch("input_var").to_f
    @the_square = @the_num * @the_num
    render({ :template => "calc_templates/square"})
  end

  def squareroot
    render({ :template => "calc_templates/squarerootnew"})
  end

  def squarerootresults
    @the_num = params.fetch("input_var").to_f
    @the_root = @the_num ** 0.5
    render({ :template => "calc_templates/squarerootresults"})
  end
  
end
