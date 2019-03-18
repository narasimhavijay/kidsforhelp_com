require 'rails_helper'

RSpec.describe Skill, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_skills) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
