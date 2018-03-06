class AddColumnToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :image, :string
  end
end
