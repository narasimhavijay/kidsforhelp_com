Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "users#show"
  # Routes for the Profile image resource:

  # CREATE
  get("/profile_images/new", { :controller => "profile_images", :action => "new_form" })
  post("/create_profile_image", { :controller => "profile_images", :action => "create_row" })

  # READ
  get("/profile_images", { :controller => "profile_images", :action => "index" })
  get("/profile_images/:id_to_display", { :controller => "profile_images", :action => "show" })

  # UPDATE
  get("/profile_images/:prefill_with_id/edit", { :controller => "profile_images", :action => "edit_form" })
  post("/update_profile_image/:id_to_modify", { :controller => "profile_images", :action => "update_row" })

  # DELETE
  get("/delete_profile_image/:id_to_remove", { :controller => "profile_images", :action => "destroy_row" })
  get("/delete_profile_image_from_user/:id_to_remove", { :controller => "profile_images", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  get("/messages/new", { :controller => "messages", :action => "new_form" })
  post("/create_message", { :controller => "messages", :action => "create_row" })
  post("/create_message_from_task", { :controller => "messages", :action => "create_row_from_task" })

  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  get("/messages/:id_to_display", { :controller => "messages", :action => "show" })

  # UPDATE
  get("/messages/:prefill_with_id/edit", { :controller => "messages", :action => "edit_form" })
  post("/update_message/:id_to_modify", { :controller => "messages", :action => "update_row" })

  # DELETE
  get("/delete_message/:id_to_remove", { :controller => "messages", :action => "destroy_row" })
  get("/delete_message_from_task/:id_to_remove", { :controller => "messages", :action => "destroy_row_from_task" })
  get("/delete_message_from_recipient/:id_to_remove", { :controller => "messages", :action => "destroy_row_from_recipient" })
  get("/delete_message_from_sender/:id_to_remove", { :controller => "messages", :action => "destroy_row_from_sender" })

  #------------------------------

  # Routes for the Feedback resource:

  # CREATE
  get("/feedbacks/new", { :controller => "feedbacks", :action => "new_form" })
  post("/create_feedback", { :controller => "feedbacks", :action => "create_row" })
  post("/create_feedback_from_task", { :controller => "feedbacks", :action => "create_row_from_task" })

  # READ
  get("/feedbacks", { :controller => "feedbacks", :action => "index" })
  get("/feedbacks/:id_to_display", { :controller => "feedbacks", :action => "show" })

  # UPDATE
  get("/feedbacks/:prefill_with_id/edit", { :controller => "feedbacks", :action => "edit_form" })
  post("/update_feedback/:id_to_modify", { :controller => "feedbacks", :action => "update_row" })

  # DELETE
  get("/delete_feedback/:id_to_remove", { :controller => "feedbacks", :action => "destroy_row" })
  get("/delete_feedback_from_task/:id_to_remove", { :controller => "feedbacks", :action => "destroy_row_from_task" })

  #------------------------------

  # Routes for the User skill resource:

  # CREATE
  get("/user_skills/new", { :controller => "user_skills", :action => "new_form" })
  post("/create_user_skill", { :controller => "user_skills", :action => "create_row" })
  post("/create_user_skill_from_skill", { :controller => "user_skills", :action => "create_row_from_skill" })

  # READ
  get("/user_skills", { :controller => "user_skills", :action => "index" })
  get("/user_skills/:id_to_display", { :controller => "user_skills", :action => "show" })

  # UPDATE
  get("/user_skills/:prefill_with_id/edit", { :controller => "user_skills", :action => "edit_form" })
  post("/update_user_skill/:id_to_modify", { :controller => "user_skills", :action => "update_row" })

  # DELETE
  get("/delete_user_skill/:id_to_remove", { :controller => "user_skills", :action => "destroy_row" })
  get("/delete_user_skill_from_skill/:id_to_remove", { :controller => "user_skills", :action => "destroy_row_from_skill" })
  get("/delete_user_skill_from_kid/:id_to_remove", { :controller => "user_skills", :action => "destroy_row_from_kid" })

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
  get("/delete_task_from_helper/:id_to_remove", { :controller => "tasks", :action => "destroy_row_from_helper" })
  get("/delete_task_from_poster/:id_to_remove", { :controller => "tasks", :action => "destroy_row_from_poster" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "show" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })
  post("/users/:id_to_modify/edit", { :controller => "users", :action => "update_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
