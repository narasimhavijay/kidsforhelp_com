require 'rails_helper'

RSpec.describe Feedback, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:task) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
