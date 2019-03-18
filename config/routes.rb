Rails.application.routes.draw do
  # Routes for the Task resource:

  # CREATE
  get("/tasks/new", { :controller => "tasks", :action => "new_form" })
  post("/create_task", { :controller => "tasks", :action => "create_row" })

  # READ
  get("/tasks", { :controller => "tasks", :action => "index" })
  get("/tasks/:id_to_display", { :controller => "tasks", :action => "show" })

  # UPDATE
  get("/tasks/:prefill_with_id/edit", { :controller => "tasks", :action => "edit_form" })
  post("/update_task/:id_to_modify", { :controller => "tasks", :action => "update_row" })

  # DELETE
  get("/delete_task/:id_to_remove", { :controller => "tasks", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
