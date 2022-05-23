class AddCommuneToFreights < ActiveRecord::Migration[5.2]
  def change
    add_reference :freights, :commune
  end
end
