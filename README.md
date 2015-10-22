# hvk_proto

### URL: https://afternoon-bayou-5581.herokuapp.com

                      Prefix Verb   URI Pattern                       Controller#Action
                reservations GET    /reservations(.:format)           reservations#index
                             POST   /reservations(.:format)           reservations#create
             new_reservation GET    /reservations/new(.:format)       reservations#new
            edit_reservation GET    /reservations/:id/edit(.:format)  reservations#edit
                 reservation GET    /reservations/:id(.:format)       reservations#show
                             PATCH  /reservations/:id(.:format)       reservations#update
                             PUT    /reservations/:id(.:format)       reservations#update
                             DELETE /reservations/:id(.:format)       reservations#destroy
            new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
                user_session POST   /users/sign_in(.:format)          devise/sessions#create
        destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
               user_password POST   /users/password(.:format)         devise/passwords#create
           new_user_password GET    /users/password/new(.:format)     devise/passwords#new
          edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
                             PATCH  /users/password(.:format)         devise/passwords#update
                             PUT    /users/password(.:format)         devise/passwords#update
    cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
           user_registration POST   /users(.:format)                  devise/registrations#create
       new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
      edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
                             PATCH  /users(.:format)                  devise/registrations#update
                             PUT    /users(.:format)                  devise/registrations#update
                             DELETE /users(.:format)                  devise/registrations#destroy
           user_confirmation POST   /users/confirmation(.:format)     devise/confirmations#create
       new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
                             GET    /users/confirmation(.:format)     devise/confirmations#show
                        root GET    /                                 authenticated#index
                        pets GET    /pets(.:format)                   pets#index
                             POST   /pets(.:format)                   pets#create
                     new_pet GET    /pets/new(.:format)               pets#new
                    edit_pet GET    /pets/:id/edit(.:format)          pets#edit
                         pet GET    /pets/:id(.:format)               pets#show
                             PATCH  /pets/:id(.:format)               pets#update
                             PUT    /pets/:id(.:format)               pets#update
                             DELETE /pets/:id(.:format)               pets#destroy
               authenticated GET    /pets(.:format)                   pets#index
               employee_root GET    /employee(.:format)               employee/authenticated#index
               employee_pets GET    /employee/pets(.:format)          employee/pets#index
                             POST   /employee/pets(.:format)          employee/pets#create
            new_employee_pet GET    /employee/pets/new(.:format)      employee/pets#new
           edit_employee_pet GET    /employee/pets/:id/edit(.:format) employee/pets#edit
                employee_pet GET    /employee/pets/:id(.:format)      employee/pets#show
                             PATCH  /employee/pets/:id(.:format)      employee/pets#update
                             PUT    /employee/pets/:id(.:format)      employee/pets#update
                             DELETE /employee/pets/:id(.:format)      employee/pets#destroy
      employee_authenticated GET    /employee/pets(.:format)          employee/pets#index
                  admin_root GET    /admin(.:format)                  admin/authenticated#index
                  admin_pets GET    /admin/pets(.:format)             admin/pets#index
                             POST   /admin/pets(.:format)             admin/pets#create
               new_admin_pet GET    /admin/pets/new(.:format)         admin/pets#new
              edit_admin_pet GET    /admin/pets/:id/edit(.:format)    admin/pets#edit
                   admin_pet GET    /admin/pets/:id(.:format)         admin/pets#show
                             PATCH  /admin/pets/:id(.:format)         admin/pets#update
                             PUT    /admin/pets/:id(.:format)         admin/pets#update
                             DELETE /admin/pets/:id(.:format)         admin/pets#destroy
         admin_authenticated GET    /admin/pets(.:format)             admin#pets
             unauthenticated GET    /                                 home#index
                       about GET    /about(.:format)                  home#about
                     contact GET    /contact(.:format)                home#contact
                        help GET    /help(.:format)                   home#help
