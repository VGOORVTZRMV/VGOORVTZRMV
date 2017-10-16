Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users

  match :admin, to: 'posts#index', via: :get
	resources :posts

	%w[ index about laws partnership partners benefits representation management news contacts ].each do |page|
		get "/#{page}", to: "home##{page}", as: page
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
