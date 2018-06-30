class ChangeDatatypeTenants < ActiveRecord::Migration[5.2]
  def change
    change_column :tenants, :floor, :string
    change_column :tenants, :restaurant, :string
  end
end
