# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  # Rotas p Processos
  get     "/processos",               to: "activities#index"
  get     "/processos/:id",           to: "activities#show"
  post    "/processos/cadastro",      to: "activities#create"
  put     "/processos/:id/atualizar", to: "activities#update"
  delete  "/processos/:id/excluir",   to: "activities#delete"  
end
