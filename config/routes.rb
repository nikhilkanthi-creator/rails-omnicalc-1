Rails.application.routes.draw do

  get("/", { :controller => "calc", :action => "home"})

  get("/square/new", { :controller => "calc", :action => "home"})
  get("/square/results", { :controller => "calc", :action => "square"})

  get("/square_root/new", { :controller => "calc", :action => "squareroot"})
  get("/square_root/results", { :controller => "calc", :action => "squarerootresults"})

  get("/payment/new", { :controller => "calc", :action => "payment"})
  get("/payment/results", { :controller => "calc", :action => "paymentresults"})

  get("/random/new", { :controller => "calc", :action => "random"})
  get("/random/results", { :controller => "calc", :action => "randomresults"})
end
