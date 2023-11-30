class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.integer :member_fee
      t.boolean :pool_service

      t.timestamps
    end
  end
end
