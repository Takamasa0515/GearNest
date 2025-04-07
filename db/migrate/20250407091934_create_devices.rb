class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :maker, null: false
      t.string :image
      t.decimal :price
      t.boolean :confirm, default: false

      t.timestamps
    end
  end
end
