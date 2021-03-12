class AddFieldToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :field, :string
  end
end
