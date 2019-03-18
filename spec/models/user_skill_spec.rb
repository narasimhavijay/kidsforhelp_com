require 'rails_helper'

RSpec.describe UserSkill, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:skill) }

    it { should belong_to(:kid) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
