class AddUserIdToBestNines < ActiveRecord::Migration[6.0]
  def change
    add_reference :best_nines, :user, null: false, foreign_key: true
  end
  add_index :best_nines, [:user_id, :created_at]
end
