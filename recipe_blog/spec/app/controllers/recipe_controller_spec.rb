require 'spec_helper'

RSpec.describe "/recipe" do
 
  before do
    @recipes = []
    @recipes << Recipe.create!(name: "Chilli", method: "add sour cream and eat")
    @recipes << Recipe.create!(name: "Curry", method: "stir and cook and eat")
    @recipes << Recipe.create!(name: "Tiramisu", method: "fluff up and eat")
  end

  describe "GET /recipe" do
    it "should display a clickable list of all recipes" do
      get '/recipe'
      expect(last_response.body).to include @recipes.first.name
      expect(last_response.body).to include @recipes.last.name
    end
  end

  describe "GET /recipe/add" do
    it "should display form to add a recipe" do
      get '/recipe/add'
      expect(last_response.body).to include "Title:"
      expect(last_response.body).to include "Method:"
    end    
  end

  describe "GET /recipe/#{:recipe_id}" do
    it "should display recipe name and method" do
      get '/recipe/2'
      expect(last_response.body).to include @recipes.second.name
      expect(last_response.body).to include @recipes.second.method
    end    
  end
end
