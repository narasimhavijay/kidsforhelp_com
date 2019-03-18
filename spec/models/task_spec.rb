require 'rails_helper'

RSpec.describe Task, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:messages) }

    it { should have_many(:feedbacks) }

    it { should belong_to(:helper) }

    it { should belong_to(:poster) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
