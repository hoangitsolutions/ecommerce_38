Rails.application.routes.draw do
  get 'sessions/new'

	root "static_pages#home"
	get "login", to: "auths#login"
	get "register", to: "auths#register"
	get "password_reset", to: "auths#password_reset"
	get "update_patossword", to: "auths#update_password_reset"
	get "admin", to: "homeadmins#home"
	namespace :admin do
    resources :categories
  end
end
