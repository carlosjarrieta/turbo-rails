Rails.application.routes.draw do
  root to: "courses#index"

  resources :courses do
    resources :lessons
  end
end
