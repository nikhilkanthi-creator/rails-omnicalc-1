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

  def payment
    render({ :template => "calc_templates/paymentnew"})
  end

  def paymentresults
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    @formatted_apr = format('%.4f%%', @apr)
    @formatted_years = @years.to_i
    @formatted_principal = @principal.to_fs(:currency)

    @r = @apr/(100*12)
    @n = @years * 12
    @numerator = @r * @principal
    @denominator = 1 - ((1 + @r) ** (-@n))
    @payment = @numerator/@denominator

    @formatted_payment = @payment.to_fs(:currency)

    render({ :template => "calc_templates/paymentresults"})
  end

  def random
    render({ :template => "calc_templates/randomnew"})
  end

  def randomresults
    @min_var = params.fetch("user_min").to_f
    @max_var = params.fetch("user_max").to_f
    @output = rand(@min_var..@max_var)
      
    render({ :template => "calc_templates/randomresults"})
  end

end
