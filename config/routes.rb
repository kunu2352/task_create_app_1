Rails.application.routes.draw do
  root to: "tops#top"
  
  resources :books, except: :new
  #resources :photos, except: :destroy
  #resources :photos, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
