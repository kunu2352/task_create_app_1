Rails.application.routes.draw do
  get 'tops/top'
  
  resources :books, except: :new
  get 'books' => 'books#new'
  #resources :photos, except: :destroy
  #resources :photos, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
