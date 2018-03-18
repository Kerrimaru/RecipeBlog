class AddMethodToRecipe < ActiveRecord::Migration[5.1]
  def self.up
    change_table :recipes do |t|
      t.string :method
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :method
    end
  end
end
