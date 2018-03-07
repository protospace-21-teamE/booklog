class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rate
      t.integer :reading_status
      t.date :read_on
      t.text :comment
      t.integer :is_public
      t.integer :is_spoiler
      t.timestamps
    end
  end
end
