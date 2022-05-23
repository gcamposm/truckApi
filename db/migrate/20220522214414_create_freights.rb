class CreateFreights < ActiveRecord::Migration[5.2]
  def change
    create_table :freights do |t|
      t.references :driver, foreign_key: true
      t.references :truck, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
