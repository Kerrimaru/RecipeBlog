class CreateCategoriesRecipes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :categories_recipes, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :recipe, index: true
    end
  end

  def self.down
    drop_table :categories_recipes
  end

end
 