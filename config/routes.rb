Rails.application.routes.draw do

  get("/", { :controller => "calc", :action => "home"})
end
