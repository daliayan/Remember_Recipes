class CreateRecipes < ActiveRecord::Migration[5.2]
  def change

    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :steps
      t.integer :cooktime
      t.date :entry_date
      t.integer :user_id
    end
  end
end
