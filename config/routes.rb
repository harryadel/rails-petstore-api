Rails.application.routes.draw do
  devise_for :users,
             path: 'api/v1',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'api/v1/sessions', registrations: 'api/v1/registrations'
             }
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # devise_for :users,
      #            path: '',
      #            path_names: {
      #              sign_in: 'login',
      #              sign_out: 'logout',
      #              registration: 'signup'
      #            },
      #            controllers: {
      #              sessions: 'api/v1/sessions', registrations: 'api/v1/registrations'
      #            }
    end
  end
end
