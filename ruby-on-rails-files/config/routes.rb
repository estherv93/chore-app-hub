Rails.application.routes.draw do
    resources :chore_lists do
        resources :chore_items 
    end
    
    # What the main link rerouts to
    root "chore_lists#index"
end
