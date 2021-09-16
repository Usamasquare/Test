Rails.application.routes.draw do

  resources :users
  resources :posts do |member|
    member do 
      patch :publish, to: 'posts#publish'
    end
  end
  scope module: 'admin' do
    resources :articles, :comments
  end


  root 'posts#index'
end
