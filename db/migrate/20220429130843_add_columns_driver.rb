class AddColumnsDriver < ActiveRecord::Migration[5.2]
  def change
    add_reference :drivers, :truck
    add_column :drivers, :first_name, :string
    add_column :drivers, :last_name, :string
  end
end
