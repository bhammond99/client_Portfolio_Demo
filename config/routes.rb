Rails.application.routes.draw do
	#below code: brings in all of the resource routes except show

  resources :projects, except: [:show]
  get 'project/:id', to: 'projects#show', as: 'project_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  
  root to: 'pages#home' 
end
