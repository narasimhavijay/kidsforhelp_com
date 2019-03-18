class ProfileImagesController < ApplicationController
  def index
    @profile_images = ProfileImage.all

    render("profile_image_templates/index.html.erb")
  end

  def show
    @profile_image = ProfileImage.find(params.fetch("id_to_display"))

    render("profile_image_templates/show.html.erb")
  end

  def new_form
    @profile_image = ProfileImage.new

    render("profile_image_templates/new_form.html.erb")
  end

  def create_row
    @profile_image = ProfileImage.new

    @profile_image.image_upload = params.fetch("image_upload")
    @profile_image.user_id = params.fetch("user_id")

    if @profile_image.valid?
      @profile_image.save

      redirect_back(:fallback_location => "/profile_images", :notice => "Profile image created successfully.")
    else
      render("profile_image_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @profile_image = ProfileImage.find(params.fetch("prefill_with_id"))

    render("profile_image_templates/edit_form.html.erb")
  end

  def update_row
    @profile_image = ProfileImage.find(params.fetch("id_to_modify"))

    @profile_image.image_upload = params.fetch("image_upload")
    @profile_image.user_id = params.fetch("user_id")

    if @profile_image.valid?
      @profile_image.save

      redirect_to("/profile_images/#{@profile_image.id}", :notice => "Profile image updated successfully.")
    else
      render("profile_image_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @profile_image = ProfileImage.find(params.fetch("id_to_remove"))

    @profile_image.destroy

    redirect_to("/profile_images", :notice => "Profile image deleted successfully.")
  end
end
