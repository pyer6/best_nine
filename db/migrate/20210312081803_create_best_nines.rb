class CreateBestNines < ActiveRecord::Migration[6.0]
  def change
    create_table :best_nines do |t|
      t.string :title
      t.integer :catcher
      t.integer :first
      t.integer :second
      t.integer :third
      t.integer :short
      t.integer :left
      t.integer :center
      t.integer :right
      t.integer :starting
      t.integer :relief
      t.integer :closer

      t.timestamps
    end
  end
end
