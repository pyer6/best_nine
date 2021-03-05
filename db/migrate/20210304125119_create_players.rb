class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :number
      t.string :player_name
      t.string :hand
      t.string :bat
      t.string :team

      t.timestamps
    end
  end
end
