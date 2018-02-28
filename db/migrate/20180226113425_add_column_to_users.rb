class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false, unique: true
    add_column :users, :nickname, :string, null: false, index: true, unique: true
    add_column :users, :gender, :integer, null: false
    add_column :users, :birth_date, :date, null: false
    add_column :users, :description, :text, null: true
    add_column :users, :occupation, :string, null: true
    add_column :users, :prefecture, :string, null: true
    add_column :users, :home_town, :string, null: true
    add_column :users, :avatar, :string, null: true
    add_column :users, :website_url, :string, null: true
  end
end
