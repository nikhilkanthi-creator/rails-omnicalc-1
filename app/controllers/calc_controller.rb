class CalcController < ApplicationController

  def home
    render({ :template => "calc_templates/home"})
  end
end
