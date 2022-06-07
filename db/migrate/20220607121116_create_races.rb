class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.integer :set_price, null: false
      t.integer :gap_price, null: false

      t.timestamps
    end
  end
end
