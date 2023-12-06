class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :instructor_name
      t.string :name
      t.integer :duration
      t.boolean :music

      t.timestamps
    end
  end
end
