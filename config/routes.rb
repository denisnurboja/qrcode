Rails.application.routes.draw do
  get 'code/:sifra' => 'code#page', as: 'showcode'
  get 'kod' => 'code#new'
  post 'kod' => 'code#create'
  root 'code#new'
  get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
