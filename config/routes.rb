Surveyor::Engine.routes.draw do
  match '/', :to                                     => 'surveyor#new', :as    => 'available_surveys', :via => :get
  match '/:survey_code', :to                         => 'surveyor#create', :as => 'take_survey', :via       => :post
  match '/:survey_code/:response_set_code', :to      => 'surveyor#show', :as   => 'view_my_survey', :via    => :get
  match '/:survey_code/:response_set_code/take', :to => 'surveyor#edit', :as   => 'edit_my_survey', :via    => :get
  match '/:survey_code/:response_set_code', :to      => 'surveyor#update', :as => 'update_my_survey', :via  => :put

  match '/:survey_code', :to                         => 'surveyor#export', :as => 'export_survey', :via     => :get

  match '/:survey_code/response_sets', :to     => 'surveyor#response_set_index', :as => 'list_survey_response_sets', :via     => :get
  match '/:survey_code/response_sets', :to     => 'surveyor#response_set_create', :as => 'create_survey_response_set', :via     => :post
  match '/:survey_code/response_sets/:id', :to     => 'surveyor#response_set_show', :as => 'show_survey_survey_response_set', :via     => :get
  match '/:survey_code/response_sets/:id', :to     => 'surveyor#response_set_update', :as => 'take_survey', :via     => :patch

end
