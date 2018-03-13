class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :item_condition
      t.integer :delivery_method
      t.integer :asking_price

      t.timestamps
    end
  end
end
