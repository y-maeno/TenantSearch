class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :company
      t.string :name
      t.text :shop
      t.integer :min_size
      t.integer :max_size
      t.boolean :floor
      t.boolean :restaurant

      t.timestamps
    end
  end
end
