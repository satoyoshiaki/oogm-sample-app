Rails.application.routes.draw do
  devise_for :users
  resources :recruitments
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  root "recruitments#index"
end
