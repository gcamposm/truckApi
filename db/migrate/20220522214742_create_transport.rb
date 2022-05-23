class CreateTransport < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.references :company, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
