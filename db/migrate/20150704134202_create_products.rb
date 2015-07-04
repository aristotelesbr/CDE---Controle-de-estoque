class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.references :provider, index: true, foreign_key: true
      t.text :info

      t.timestamps null: false
    end
  end
end
