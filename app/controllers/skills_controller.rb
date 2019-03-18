class SkillsController < ApplicationController
  def index
    @skills = Skill.page(params[:page]).per(10)

    render("skill_templates/index.html.erb")
  end

  def show
    @user_skill = UserSkill.new
    @skill = Skill.find(params.fetch("id_to_display"))

    render("skill_templates/show.html.erb")
  end

  def new_form
    @skill = Skill.new

    render("skill_templates/new_form.html.erb")
  end

  def create_row
    @skill = Skill.new

    @skill.name = params.fetch("name")

    if @skill.valid?
      @skill.save

      redirect_back(:fallback_location => "/skills", :notice => "Skill created successfully.")
    else
      render("skill_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @skill = Skill.find(params.fetch("prefill_with_id"))

    render("skill_templates/edit_form.html.erb")
  end

  def update_row
    @skill = Skill.find(params.fetch("id_to_modify"))

    @skill.name = params.fetch("name")

    if @skill.valid?
      @skill.save

      redirect_to("/skills/#{@skill.id}", :notice => "Skill updated successfully.")
    else
      render("skill_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @skill = Skill.find(params.fetch("id_to_remove"))

    @skill.destroy

    redirect_to("/skills", :notice => "Skill deleted successfully.")
  end
end
