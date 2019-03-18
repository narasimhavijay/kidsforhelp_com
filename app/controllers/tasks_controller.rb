class TasksController < ApplicationController
  def index
    @tasks = Task.page(params[:page]).per(10)

    render("task_templates/index.html.erb")
  end

  def show
    @message = Message.new
    @feedback = Feedback.new
    @task = Task.find(params.fetch("id_to_display"))

    render("task_templates/show.html.erb")
  end

  def new_form
    @task = Task.new

    render("task_templates/new_form.html.erb")
  end

  def create_row
    @task = Task.new

    @task.adult_id = params.fetch("adult_id")
    @task.kid_id = params.fetch("kid_id")
    @task.status = params.fetch("status")
    @task.task_desc = params.fetch("task_desc")
    @task.image_uploads = params.fetch("image_uploads")

    if @task.valid?
      @task.save

      redirect_back(:fallback_location => "/tasks", :notice => "Task created successfully.")
    else
      render("task_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @task = Task.find(params.fetch("prefill_with_id"))

    render("task_templates/edit_form.html.erb")
  end

  def update_row
    @task = Task.find(params.fetch("id_to_modify"))

    @task.adult_id = params.fetch("adult_id")
    @task.kid_id = params.fetch("kid_id")
    @task.status = params.fetch("status")
    @task.task_desc = params.fetch("task_desc")
    @task.image_uploads = params.fetch("image_uploads")

    if @task.valid?
      @task.save

      redirect_to("/tasks/#{@task.id}", :notice => "Task updated successfully.")
    else
      render("task_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_poster
    @task = Task.find(params.fetch("id_to_remove"))

    @task.destroy

    redirect_to("/users/#{@task.adult_id}", notice: "Task deleted successfully.")
  end

  def destroy_row_from_helper
    @task = Task.find(params.fetch("id_to_remove"))

    @task.destroy

    redirect_to("/users/#{@task.kid_id}", notice: "Task deleted successfully.")
  end

  def destroy_row
    @task = Task.find(params.fetch("id_to_remove"))

    @task.destroy

    redirect_to("/tasks", :notice => "Task deleted successfully.")
  end
end
