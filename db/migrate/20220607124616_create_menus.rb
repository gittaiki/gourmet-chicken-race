class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :rakuten_url
      t.boolean :choice, default: false, null: false
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
