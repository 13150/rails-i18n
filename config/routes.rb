Rails.application.routes.draw do
  root 'articles#index'
  scope "(:locale)", locale: /en|es/ do
    resources :articles
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
