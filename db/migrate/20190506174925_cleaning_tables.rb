class CleaningTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :title, :string
    remove_column :users, :email, :string
    remove_column :users, :password_digest, :string
  end
end
