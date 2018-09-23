Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  root 'welcome#index'
  
  get 'my_news', to: 'users#my_news'
  get 'search_headlines', to: 'headlines#search'
end
