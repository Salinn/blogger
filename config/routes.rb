Blogger::Application.routes.draw do
  resources :comments

  devise_for :users
  resources :posts

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
end
