class References < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post
  end
end
