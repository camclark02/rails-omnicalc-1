Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "home_page"})

  get("/square/new", { :controller => "zebra", :action => "square_new"})

  get("/square/results", { :controller => "zebra", :action => "square_results"})

  get("/", { :controller => "zebra", :action => "home_page"})

  get("/", { :controller => "zebra", :action => "home_page"})

  get("/", { :controller => "zebra", :action => "home_page"})

  get("/", { :controller => "zebra", :action => "home_page"})

  get("/", { :controller => "zebra", :action => "home_page"})

  get("/", { :controller => "zebra", :action => "home_page"})
  
end
