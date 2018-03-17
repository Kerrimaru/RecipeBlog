require 'spec_helper'

RSpec.describe "/category" do

  before do
    @categories = []
    @categories << Category.create!(name: 'Greek')
    @categories << Category.create!(name: 'French')
    @categories << Category.create!(name: 'Mexican')
    @categories << Category.create!(name: 'Korean')
  end

  describe "GET /category" do
    it "should display a list of clickable categories" do
      get "/category"
      expect(last_response).to be_ok
      expect(last_response.body).to include @categories.first.name
      expect(last_response.body).to include @categories.last.name
    end
  end

end
