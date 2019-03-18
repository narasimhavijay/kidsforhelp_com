class UserSkillsController < ApplicationController
  def index
    @user_skills = UserSkill.all

    render("user_skill_templates/index.html.erb")
  end

  def show
    @user_skill = UserSkill.find(params.fetch("id_to_display"))

    render("user_skill_templates/show.html.erb")
  end

  def new_form
    @user_skill = UserSkill.new

    render("user_skill_templates/new_form.html.erb")
  end

  def create_row
    @user_skill = UserSkill.new

    @user_skill.skill_id = params.fetch("skill_id")
    @user_skill.kid_id = params.fetch("kid_id")

    if @user_skill.valid?
      @user_skill.save

      redirect_back(:fallback_location => "/user_skills", :notice => "User skill created successfully.")
    else
      render("user_skill_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @user_skill = UserSkill.find(params.fetch("prefill_with_id"))

    render("user_skill_templates/edit_form.html.erb")
  end

  def update_row
    @user_skill = UserSkill.find(params.fetch("id_to_modify"))

    @user_skill.skill_id = params.fetch("skill_id")
    @user_skill.kid_id = params.fetch("kid_id")

    if @user_skill.valid?
      @user_skill.save

      redirect_to("/user_skills/#{@user_skill.id}", :notice => "User skill updated successfully.")
    else
      render("user_skill_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @user_skill = UserSkill.find(params.fetch("id_to_remove"))

    @user_skill.destroy

    redirect_to("/user_skills", :notice => "User skill deleted successfully.")
  end
end
