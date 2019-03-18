require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_skills) }

    it { should have_many(:received_messages) }

    it { should have_many(:sent_messages) }

    it { should have_many(:tasks_as_helper) }

    it { should have_many(:tasks_as_poster) }

    it { should have_many(:profile_images) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
