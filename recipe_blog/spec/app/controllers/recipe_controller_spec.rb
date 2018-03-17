require 'spec_helper'

RSpec.describe "/recipe" do
 
  before do
    @recipes = []
    @recipes << Recipe.create!(name: "Chilli")
    @recipes << Recipe.create!(name: "Curry")
    @recipes << Recipe.create!(name: "Tiramisu")
  end

  describe "GET /recipe" do
    it "should display a clickable list of all recipes" do
      get '/recipe'
      expect(last_response.body).to include @recipes.first.name
      expect(last_response.body).to include @recipes.last.name
    end

    
  end
end
