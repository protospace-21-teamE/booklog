class CreateShelves < ActiveRecord::Migration[5.0]
  def change
    create_table :shelves do |t|
      t.text :name
      t.text :description
      t.integer :mode
      t.integer :design
      t.integer :is_public
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
