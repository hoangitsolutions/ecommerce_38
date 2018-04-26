Rails.application.routes.draw do
  root "static_pages#home"
  get "login", to: "auths#login"
  get "register", to: "auths#register"
  get "password_reset", to: "auths#password_reset"
  get "update_password", to: "auths#update_password_reset"
  get "admin", to: "homeadmins#home"
  namespace :admin do
    get "home", to: "homes#home"
  end
end
