class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name, unique: true, null: false, index: true
      t.text :description
      t.string :publisher
      t.date :released_on
      t.integer :type
      t.text :amazon_url, null: false
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end
