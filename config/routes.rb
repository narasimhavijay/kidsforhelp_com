Rails.application.routes.draw do
  # Routes for the Feedback resource:

  # CREATE
  get("/feedbacks/new", { :controller => "feedbacks", :action => "new_form" })
  post("/create_feedback", { :controller => "feedbacks", :action => "create_row" })

  # READ
  get("/feedbacks", { :controller => "feedbacks", :action => "index" })
  get("/feedbacks/:id_to_display", { :controller => "feedbacks", :action => "show" })

  # UPDATE
  get("/feedbacks/:prefill_with_id/edit", { :controller => "feedbacks", :action => "edit_form" })
  post("/update_feedback/:id_to_modify", { :controller => "feedbacks", :action => "update_row" })

  # DELETE
  get("/delete_feedback/:id_to_remove", { :controller => "feedbacks", :action => "destroy_row" })

  #------------------------------

  # Routes for the User skill resource:

  # CREATE
  get("/user_skills/new", { :controller => "user_skills", :action => "new_form" })
  post("/create_user_skill", { :controller => "user_skills", :action => "create_row" })

  # READ
  get("/user_skills", { :controller => "user_skills", :action => "index" })
  get("/user_skills/:id_to_display", { :controller => "user_skills", :action => "show" })

  # UPDATE
  get("/user_skills/:prefill_with_id/edit", { :controller => "user_skills", :action => "edit_form" })
  post("/update_user_skill/:id_to_modify", { :controller => "user_skills", :action => "update_row" })

  # DELETE
  get("/delete_user_skill/:id_to_remove", { :controller => "user_skills", :action => "destroy_row" })

  #------------------------------

  # Routes for the Skill resource:

  # CREATE
  get("/skills/new", { :controller => "skills", :action => "new_form" })
  post("/create_skill", { :controller => "skills", :action => "create_row" })

  # READ
  get("/skills", { :controller => "skills", :action => "index" })
  get("/skills/:id_to_display", { :controller => "skills", :action => "show" })

  # UPDATE
  get("/skills/:prefill_with_id/edit", { :controller => "skills", :action => "edit_form" })
  post("/update_skill/:id_to_modify", { :controller => "skills", :action => "update_row" })

  # DELETE
  get("/delete_skill/:id_to_remove", { :controller => "skills", :action => "destroy_row" })

  #------------------------------

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
