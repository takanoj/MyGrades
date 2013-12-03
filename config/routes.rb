MyGrades::Application.routes.draw do

resources :course, :only => [:show, :new, :create]


end
