Rails.application.routes.draw do

  get("/", { :controller => "calc", :action => "home"})

  get("/square/new", { :controller => "calc", :action => "home"})

  get("/square/results", { :controller => "calc", :action => "square"})

  get("/square_root/new", { :controller => "calc", :action => "squareroot"})

  get("/square_root/results", { :controller => "calc", :action => "squarerootresults"})
end
