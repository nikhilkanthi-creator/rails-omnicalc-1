Rails.application.routes.draw do

  get("/", { :controller => "calc", :action => "home"})

  get("/square/results", { :controller => "calc", :action => "square"})

  get("/square/new", { :controller => "calc", :action => "home"})
end
