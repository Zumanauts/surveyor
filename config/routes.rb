Surveyor::Engine.routes.draw do

  match '/responses', :to                           => 'surveyor#responses_index', :as   => 'responses_by_rs', :via    => :get, constraints: { format: 'json' }
  match '/responses/:id', :to              => 'surveyor#responses_show', :as    => 'response_show', :via     => :get, constraints: { format: 'json' }
  match '/responses', :to                           => 'surveyor#responses_create', :as  => 'response_create', :via        => :post, constraints: { format: 'json' }
  match '/responses/:id', :to              => 'surveyor#responses_update', :as  => 'response_update', :via   => [:patch, :put], constraints: { format: 'json' }


  # match '/schemas', :to                                     => 'surveyor#new', :as    => 'available_surveys', :via => :get
  # match '/:survey_code', :to                         => 'surveyor#create', :as => 'take_survey', :via       => :post
  # match '/schemas/:survey_code', :to                         => 'surveyor#export', :as => 'export_survey', :via     => :get
  match '/schemas/:id', :to              => 'surveyor#show_survey', :as    => 'export_survey_by_id', :via     => :get, constraints: { format: 'json' }

  # match '/:survey_code/:response_set_code', :to      => 'surveyor#show', :as   => 'view_my_survey', :via    => :get
  # match '/:survey_code/:response_set_code/take', :to => 'surveyor#edit', :as   => 'edit_my_survey', :via    => :get
  # match '/:survey_code/:response_set_code', :to      => 'surveyor#update', :as => 'update_my_survey', :via  => :put



end
