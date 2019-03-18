class MessagesController < ApplicationController
  def index
    @q = Message.ransack(params[:q])
    @messages = @q.result(:distinct => true).includes(:sender, :recipient, :task).page(params[:page]).per(10)

    render("message_templates/index.html.erb")
  end

  def show
    @message = Message.find(params.fetch("id_to_display"))

    render("message_templates/show.html.erb")
  end

  def new_form
    @message = Message.new

    render("message_templates/new_form.html.erb")
  end

  def create_row
    @message = Message.new

    @message.sender_id = params.fetch("sender_id")
    @message.recipient_id = params.fetch("recipient_id")
    @message.task_id = params.fetch("task_id")
    @message.message = params.fetch("message")

    if @message.valid?
      @message.save

      redirect_back(:fallback_location => "/messages", :notice => "Message created successfully.")
    else
      render("message_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_task
    @message = Message.new

    @message.sender_id = params.fetch("sender_id")
    @message.recipient_id = params.fetch("recipient_id")
    @message.task_id = params.fetch("task_id")
    @message.message = params.fetch("message")

    if @message.valid?
      @message.save

      redirect_to("/tasks/#{@message.task_id}", notice: "Message created successfully.")
    else
      render("message_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @message = Message.find(params.fetch("prefill_with_id"))

    render("message_templates/edit_form.html.erb")
  end

  def update_row
    @message = Message.find(params.fetch("id_to_modify"))

    @message.sender_id = params.fetch("sender_id")
    @message.recipient_id = params.fetch("recipient_id")
    @message.task_id = params.fetch("task_id")
    @message.message = params.fetch("message")

    if @message.valid?
      @message.save

      redirect_to("/messages/#{@message.id}", :notice => "Message updated successfully.")
    else
      render("message_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_sender
    @message = Message.find(params.fetch("id_to_remove"))

    @message.destroy

    redirect_to("/users/#{@message.sender_id}", notice: "Message deleted successfully.")
  end

  def destroy_row_from_recipient
    @message = Message.find(params.fetch("id_to_remove"))

    @message.destroy

    redirect_to("/users/#{@message.recipient_id}", notice: "Message deleted successfully.")
  end

  def destroy_row_from_task
    @message = Message.find(params.fetch("id_to_remove"))

    @message.destroy

    redirect_to("/tasks/#{@message.task_id}", notice: "Message deleted successfully.")
  end

  def destroy_row
    @message = Message.find(params.fetch("id_to_remove"))

    @message.destroy

    redirect_to("/messages", :notice => "Message deleted successfully.")
  end
end
