Rails.application.routes.draw do
  root 'movies#index'
  scope "(:locale)", locale: /en|es/ do
    resources :movies
    end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
