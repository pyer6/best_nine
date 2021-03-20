class ChangeColumnOnBestNines < ActiveRecord::Migration[6.0]
  def change
    remove_column :best_nines, :catcher, :integer
    remove_column :best_nines, :first, :integer
    remove_column :best_nines, :second, :integer
    remove_column :best_nines, :third, :integer
    remove_column :best_nines, :short, :integer
    remove_column :best_nines, :left, :integer
    remove_column :best_nines, :center, :integer
    remove_column :best_nines, :right, :integer

    add_column :best_nines, :one_position, :integer
    add_column :best_nines, :one_name, :integer
    add_column :best_nines, :two_position, :integer
    add_column :best_nines, :two_name, :integer
    add_column :best_nines, :three_position, :integer
    add_column :best_nines, :three_name, :integer
    add_column :best_nines, :four_position, :integer
    add_column :best_nines, :four_name, :integer
    add_column :best_nines, :five_position, :integer
    add_column :best_nines, :five_name, :integer
    add_column :best_nines, :six_position, :integer
    add_column :best_nines, :six_name, :integer
    add_column :best_nines, :seven_position, :integer
    add_column :best_nines, :seven_name, :integer
    add_column :best_nines, :eight_position, :integer
    add_column :best_nines, :eight_name, :integer
    add_column :best_nines, :nine_position, :integer
    add_column :best_nines, :nine_name, :integer
  end
end
