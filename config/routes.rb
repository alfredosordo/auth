Rails.application.routes.draw do
  resources "companies"
  resources "contacts"
  resources "activities"
  resources "tasks"
  resources "users"
  resources "sessions"

  get "/logout",
    :controller => "sessions",
    :action => "destroy"

  get "/login",
    :controller => "sessions",
    :action => "new"
end
