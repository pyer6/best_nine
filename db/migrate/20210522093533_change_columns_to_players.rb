class ChangeColumnsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :league, :string
  end
end
